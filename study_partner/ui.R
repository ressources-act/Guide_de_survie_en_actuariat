library(shiny)

# Fichier pour configurer l'interface utilisateur
shinyUI(fluidPage(
    titlePanel("Study buddy"),
    withMathJax(),
        mainPanel(
            h1("Aide à l'étude"),
            uiOutput('filelst'),
            p("Veuillez saisir du texte dans l'encadré suivant en respectant la syntaxte Mathjax."),
            textAreaInput("text2convert", "Saisir du texte"),
            uiOutput("text2display"),
            h1("On peut importer une flashcard stockée dans un fichier Md standalone."),
            # includeHTML(input$files),
            uiOutput('flashcard')
            
        )
    )
)