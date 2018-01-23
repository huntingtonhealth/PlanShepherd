# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
	#get county/state on page load
#	if ( $('#zipBlur').val() )
#		$.ajax
#			url: '/home/update_zips'
#			data: ZIP: $('#zipBlur').val()
#			dataType: 'script'
#		$("#showCounties").css("display", "inline")
#		$.ajax
#			url: '/home/update_state'
#			data: county: $('#_county').val(), ZIP: $('#zipBlur').val()
#			dataType: 'script'
#	else
#		console.log('nope')
	
	#listeners for updating query
	$("#zipBlur").blur ->
		$.ajax
			url: '/home/update_zips'
			data: zip: $('#zipBlur').val()
			dataType: 'script'
		$("#showCounties").css("display", "inline")
		
	$("#showCounties").change ->
		$.ajax
			url: '/home/update_state'
			data: county: $('#_county').val(), ZIP: $('#zipBlur').val()
			dataType: 'script'
	
	$("#addspouse").click ->
		$.ajax
			url: '/home/addspouse'
			dataType: 'script'
			
	$("#adddependent").click ->
		$.ajax
			url: '/home/adddependent'
			dataType: 'script'