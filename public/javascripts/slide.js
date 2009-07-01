$.fn.slideLeft = function() {
	$(this).show("slide", { 
				direction: "left"
				});
}

$.fn.slidingReplacement = function(new_div, direction) {
	/*
	$(this).blindLeft();
	$(new_div).slideLeft();
	*/
	// Note this is temporary - I want my kick ass sliding.
	$(this).hide();
	$(new_div).show();
};
