ready = ->
	new Typed '.element',
		stringsElement: '#typed-strings',
		typeSpeed: 45
	return


$(document).on 'turbolinks:load', ready