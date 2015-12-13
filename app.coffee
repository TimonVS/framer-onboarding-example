sketch = Framer.Importer.load "imported/onboarding-tour"

sketch.Step_one.visible = true
sketch.Step_two.visible = true

print sketch.Step_one.subLayers[0]

page = new PageComponent
	width: Screen.width
	height: Screen.height
	scrollVertical: false
	
page.addPage sketch.Step_one, "right"

page.addPage sketch.Step_two, "right"

page.addPage sketch.Step_three, "right"



"""
# Pages
amount = 6

# Array for page indicators
allIndicators = []

indicatorsContainer = new Layer 
	backgroundColor: "transparent"
	width: page.width, height: 12
	x: 0, y: 1102
	index: 5

# Generate indicators
for i in [0...amount]				
	indicator = new Layer 
		backgroundColor: "white"
		width: 12, height: 12
		x: 30 * i, y: 0
		borderRadius: "50%", opacity: 0.5
		superLayer: indicatorsContainer
	indicator.x += (page.width / 2) - 9 - (12 * amount)
	# States
	indicator.states.add(active: {opacity: 1})
	indicator.states.animationOptions = time: 0.5
	# Store indicator in array
	allIndicators.push(indicator)

current = page.horizontalPageIndex(page.currentPage)
allIndicators[current].states.switch("active")
	
# set page indicator on page change
page.on "change:currentPage", ->
	indicator.states.switch("default") for indicator in allIndicators
	current = page.horizontalPageIndex(page.currentPage)
	allIndicators[current].states.switch("active")
"""