// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
jQuery.ajaxSetup({
	'beforeSend' : function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")}
})

function initializeGoogleMap(center, meetingLocation, title, description) {
	if (GBrowserIsCompatible()) {
//		var center = new GLatLng(42.369, -87.957);
//		var eighthLight = new GLatLng(42.30026991719819, -88.00201714038849);
//		var map = new GMap2(document.getElementById("map_canvas"), {size: new GSize(309, 330)});
//		var marker = new GMarker(eighthLight, {title: "8th Light Office"});
//		var infoWindow = '<div class="directions_info" style="width: 230px;">Meetings are' + 
//									   ' held at the 8th Light offices, located just off of Route 45 in Libertyville. If' +
//									   ' you need pickup and drop off from the Libertyville Train station' +
//									   ' <a href="mailto:eric@8thlight.com?subject=pickup">email me</a> and one of the' + 
//									   ' 8th Lighters should be able to give you a ride.' + 
//									   '<p style="font-weight:bold;">Coming From:</p>' + 
//									   '<form action="http://maps.google.com/maps" method="get" target="_blank">' +
//					           '<input type="text" SIZE=20 MAXLENGTH=48 name="saddr" id="saddr" value="" /><br>' +
//					           '<INPUT value="Get Directions" TYPE="SUBMIT">' +
//					           '<input type="hidden" name="daddr" value="' + eighthLight.lat() + ',' + eighthLight.lng() + '" />';
    var map = new GMap2(document.getElementById("map_canvas"), {size: new GSize(309, 330)});
    var marker = new GMarker(meetingLocation, {title: title}); 
    var infoWindow = '<div class="directions_info" style="width: 230px;">' + 
                     description + 
      '<p style="font-weight:bold;">Coming From:</p>' +
      '<form action="http://maps.google.com/maps" method="get" target="_blank">' +
      '<input type="text" SIZE=20 MAXLENGTH=48 name="saddr" id="saddr" value="" /><br>' +
      '<INPUT value="Get Directions" TYPE="SUBMIT">' +
      '<input type="hidden" name="daddr" value="' + meetingLocation.lat() + ',' + meetingLocation.lng() + '" />'; 

    var customUI = map.getDefaultUI();
    customUI.controls.menumaptypecontrol = false;
    customUI.controls.smallzoomcontrol3d = false;
    map.setUI(customUI);
    map.setCenter(center, 15);
    map.addOverlay(marker);
    marker.openInfoWindowHtml(infoWindow, {suppressMapPan:true});
  } 


}

$(document).ready(function() {
	$("#location").click(function(event) {
		$("#registration_screen").slidingReplacement('#location_screen', 'left');
	});
	
	$("#location_back").click(function(event) {
		$('#location_screen').slidingReplacement('#registration_screen', 'right');
	});
	
	$("#registration_form").submit(function() {
		$.post($(this).attr("action"), $(this).serialize(), null, "script");
		return false;
	});
	
	$("#google_group_link").click( function(event)  {
		window.open('http://groups.google.com/group/chiphone', 'chiPhone google group');
	});
		
	$('#success_dialog').jqm({modal:true});
	
});
