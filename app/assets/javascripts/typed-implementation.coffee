ready = ->
	Typed.new '.element',
		strings: [
			"Study should be simple."
			"My name is Zicrou and this is my way."
		]
		typeSpeed: 30
	return

$(document).ready ready
$(document).on 'turbolinks:load', ready