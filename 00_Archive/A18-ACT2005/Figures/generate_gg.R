## Graphique pour l'exemple 13.57 du Loss Models
## ACT-2005 // A2018 // Gabriel Crépeault-Cauchon
## 7 décembre 2018
setwd(dirname(rstudioapi::getSourceEditorContext()$path))
library(ggplot2)

## Créer la fonction à tracer
f <- function(x)
{
    -200.2213 - 40 * log(x) - 40 * x * log(100) + 198.25 * (x+1)
}

ggplot(data = data.frame(x = c(0,10)), aes(x)) + 
    coord_cartesian(xlim = c(1,5), ylim = c(-4,1)) + 
    stat_function(fun = f) + 
    geom_abline(intercept = 0, slope = 0, color = "red") + 
    geom_rect(aes(xmin = 1.77, xmax = 4.28,
                  ymin = -4, ymax = 0,
                  alpha = 0.3)) + 
    geom_label(aes(x = 1.77, y = 0.3, label = "L = 1.77")) + 
    geom_label(aes(x = 4.28, y = 0.3, label = "U = 4.28")) + 
    theme(legend.position = "none") + 
    ggsave("Q13-57_visualisation.png")

