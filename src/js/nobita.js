$(function(){

    var graph = new joint.dia.Graph;

    var place = $('#myholder');
    var paper = new joint.dia.Paper({
        el:       place,
        width:    place.width(),
        height:   place.height(),
        model:    graph,
        gridSize: 1
    });

    var rect = new joint.shapes.basic.Rect({
        position: { x: 100, y: 30 },
        size:     { width: 100, height: 30 },
        attrs:    { rect: { fill: 'white' }, 
                    text: { text: '(+ 1 2)', fill: 'blue' } }
    });

    var rect2 = new joint.shapes.basic.Rect({
        position: { x: 300, y: 230 },
        size:     { width: 100, height: 30 },
        attrs:    { rect: { fill: 'white' }, 
                    text: { text: '(+ 3 in)', fill: 'blue' } }
    });

    var rect3 = new joint.shapes.basic.Rect({
        position: { x: 400, y: 330 },
        size:     { width: 100, height: 30 },
        attrs:    { rect: { fill: 'white' }, 
                    text: { text: 'xxx', fill: 'blue' } }
    });

    var link = new joint.dia.Link({
        source: { id: rect.id },
        target: { id: rect2.id }
    });

    link.attr({
	'.connection': { stroke: 'blue' },
	'.marker-target': { fill: 'blue', d: 'M 10 0 L 0 5 L 10 10 z' }
    });

    var link1 = new joint.dia.Link({
        source: { id: rect2.id },
        target: { id: rect3.id }
    });

    link1.attr({
	'.connection': { stroke: 'blue' },
	'.marker-target': { fill: 'blue', d: 'M 10 0 L 0 5 L 10 10 z' }
    });

    var link2 = new joint.dia.Link({
        source: { id: rect3.id },
        target: { id: rect.id }
    });

    link2.attr({
	'.connection': { stroke: 'blue' },
	'.marker-target': { fill: 'blue', d: 'M 10 0 L 0 5 L 10 10 z' }
    });


    graph.addCells([rect, rect2, rect3, link, link1, link2]);
});
