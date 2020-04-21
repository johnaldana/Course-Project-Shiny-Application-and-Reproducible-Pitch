shinyUI(pageWithSidebar(
   headerPanel("Sensory Analysis Bean To Bar Chocolate"),
   sidebarPanel(
      textInput(inputId="text1", label = "Product:"),
      textInput(inputId="text2", label = "Evaluated by:"),
      dateInput("date", "Date:"),
      h3('Positive Attributes'),
      sliderInput('Sweet','Descriptor 1, Sweet: Sugar, Honey, Molasses, Malt', value = 0, min = 0, max = 10, step = 0.5),
      sliderInput('Salty','Descriptor 2, Salty: Salt', value = 0, min = 0, max = 10, step = 0.5),
      sliderInput('Bitter','Descriptor 3, Bitter: Aspirin, Burnt Coffe', value = 0, min = 0, max = 10, step = 0.5),
      sliderInput('Astringent','Descriptor 4, Astringent: Dry Mouth', value = 0, min = 0, max = 10, step = 0.5),
      sliderInput('Fresh_Fruits','Descriptor 5, Fresh Fruits: Banana, Melon, Pineapple', value = 0, min = 0, max = 10, step = 0.5),
      sliderInput('Dried_Fruits','Descriptor 6, Dried Fruits: Raisins, Dried Fig', value = 0, min = 0, max = 10, step = 0.5),
      sliderInput('Citrus','Descriptor 7, Citrus: Lemon, Orange, Grapefruit', value = 0, min = 0, max = 10, step = 0.5),
      sliderInput('Species','Descriptor 8, Species: Cinnamon, Cloves, Cardamon', value = 0, min = 0, max = 10, step = 0.5),
      sliderInput('Walnut','Descriptor 9, Walnut: Peanuts, Almonds, Pistachios', value = 0, min = 0, max = 10, step = 0.5),
      sliderInput('Flowers','Descriptor 10, Flowers: Roses, Jasmine', value = 0, min = 0, max = 10, step = 0.5),
      h3('Defects'),
      sliderInput('Mohos','Defect 1, Mohos: Mushroom, Kept, Basement, Wet', value = 0, min = 0, max = 10, step = 0.5),
      sliderInput('Dust','Defect 2, Dust: Mud, Wet Earth, Powder', value = 0, min = 0, max = 10, step = 0.5),
      sliderInput('Overfermented','Defect 3, Over-fermented: Ham, Rotten, Compost', value = 0, min = 0, max = 10, step = 0.5),
      sliderInput('Green','Defect 4, Green: turf, grass, Tree', value = 0, min = 0, max = 10, step = 0.5),
      sliderInput('Acid','Defect 5, Acid: Acetic Acid Vinegar, Lactic Acid Milk Cut', value = 0, min = 0, max = 10, step = 0.5),
      sliderInput('Others','Defect 6, Others: Metal, Fuel, Chemicals', value = 0, min = 0, max = 10, step = 0.5)
   ),
   mainPanel(
      h4('Product'),
      textOutput('text1'),
      h4('Evaluated By:'),
      textOutput('text2'),
      h4('Date'),
      verbatimTextOutput("odate"),
      h3('Sensory Profile Diagrams'),
      h3('Positive Attributes'),
      plotOutput('newPlot'),
      h3('Defects'),
      plotOutput('newPlot2')
   )
))