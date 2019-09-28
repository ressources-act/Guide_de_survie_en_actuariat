library(shiny)
library(magrittr)

# Ce fichier sert de backend à l'application
shinyServer(function(input, output) {
    output$text2display <- renderUI({
        #filename <- "formule_test.txt"
        #txtfile <- readChar(con = filename, nchars = file.info(filename)$size)
        char_str <- stringi::stri_split(input$text2convert, regex = "\\n")
        tagList(withMathJax(), lapply(char_str[[1]], shiny::p))
    })
    
    output$filelst <- renderUI({
        files <- list.files('flashcards/', include.dirs = T, recursive = T)
        selectInput('files', label = 'Choisir un fichier html',
                    choices = files)
    })
    
    output$flashcard <- renderUI({
        input$files %>% 
            paste0('flashcards/', .) %>% 
            includeHTML() %>% 
            withMathJax()
        # On pourrait même mettre un mode random
        # withMathJax(includeHTML(paste0('flashcards/', input$files)))
    })
})
