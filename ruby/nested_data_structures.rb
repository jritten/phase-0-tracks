# Challenge 5.3: Nested Data Structures
# Release 2: Design and Build a Nested Data Structure

Dior = {
	'Clothing' => [
		"gowns",
		"pants",
		"shirts"
	],
	'Shoes' => [
		"flats",
		"dress shoes",
		'heels',
		"men's shoes"
	],
	'Accessories' => [
		"jewellery",
		"belts",
		"lingerie"
		],
	'Cosmetics' => [
		"foundation",
		"blush",
		"concealer",
		"eyeshadow",
		"lipstick"
		],
	'Skin Care' => [
		"cleanser",
		"toner",
		"serum",
		"cream",
		"spf"
		]

}

p Dior['Cosmetics'][3]

p Dior['Skin Care'][2]

p Dior['Skin Care'].reverse
