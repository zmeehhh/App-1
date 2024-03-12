library(shiny)

# Define UI ----
ui <- fluidPage(
  titlePanel("My Shiny App"),
  
  sidebarLayout(
    sidebarPanel(
      h2("Installation"),
      p("Shiny is available on CRAN, so you can install it in the usual way from your R console:"),
      code('install.packages("shiny")'),
      br(),
      br(),
      br(),
      br(),
      img(src = "rstudio.png", height = 70, width = 200),
      p("Shiny is a product of",
        span("R Studio", style = "color:blue"))
    ),
    mainPanel(
      h1("Introducing Shiny"),
      p("Shiny is a ne package from Rstudio that makes it incredibly easy to build interactive web application with R."),
      br(),
      p("For an introduction and live example, visit the", 
        a("Shiny homepage.",
          href = "https://shiny.posit.co")),
      br(),
      h2("Features"),
      p("-Build useful web applications with only a few lines of code - no JavaScript required"),
      p("- Shiny applications are automatically 'live' in the same way that ",
        strong("spreadsheets"),
        " are live. Outputs change instantly as users modify inputs, without requiring a reload of the browser.")
    )
  )
  
)

# Define server logic ----
server <- function(input, output) {
  
}

# Run the app ----
shinyApp(ui = ui, server = server)