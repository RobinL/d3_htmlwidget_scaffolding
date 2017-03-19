HTMLWidgets.widget({

  name : 'threelittlecircles',
  type : 'output',

  factory : function(el, width, height) {

    var elementId = el.id;
    var container = document.getElementById(elementId); //This is the DOM element wer're going to put the vis in
    var threelittlecircles = new ThreeLittleCircles(container)
    
    return {

      renderValue: function(data_from_r) {  //This equates to a kind of 'update' method - what happens if we pass new data to the chart
        threelittlecircles.redraw(data_from_r)
      },

      resize : function(width, height) {
      }
   
    };
  }
});