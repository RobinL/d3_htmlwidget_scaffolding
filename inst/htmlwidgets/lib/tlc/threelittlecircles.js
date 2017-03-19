function ThreeLittleCircles(container) {


    var svg = d3.select(container).append("svg")
        .attr("width", 400)
        .attr("height", 400);


    this.redraw = function(data) {

        data = [50,100,150];
        id_fn = function(d) {return d;};
        svg.selectAll(".circles")
           .data(data)
           .enter()
           .append("circle")
           .attr("cx", id_fn)
           .attr("cy", id_fn)
           .attr("r", 10);

    }


}