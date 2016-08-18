window.onload = function() {
 	alert( "welcome" );
};


$( "a" ).click(function( event ) {
    alert( "Thanks for visiting!" );
});


$( "p" ).click(function( event ) {
	$( this ).css( "color", "blue" );
});


$( "#box" ).on( "mouseover", function() {
  $( this ).css( "border", "20px solid red" );
});

console.log("hey there");