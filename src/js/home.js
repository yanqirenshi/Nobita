function test(){
    
    var graph = new Springy.Graph();

    var dennis = graph.newNode({
				   label: 'Dennis',
				   ondoubleclick: function() { console.log("Hello!"); }
                               });
    var michael = graph.newNode({label: 'Michael'});
    var jessica = graph.newNode({label: 'Jessica'});
    var timothy = graph.newNode({label: 'Timothy'});
    var barbara = graph.newNode({label: 'Barbara'});
    var franklin = graph.newNode({label: 'Franklin'});
    var monty = graph.newNode({label: 'Monty'});
    var james = graph.newNode({label: 'James'});
    var bianca = graph.newNode({label: 'Bianca'});

    graph.newEdge(dennis, michael, {color: '#00A0B0'});
    graph.newEdge(michael, dennis, {color: '#6A4A3C'});
    graph.newEdge(michael, jessica, {color: '#CC333F'});
    graph.newEdge(jessica, barbara, {color: '#EB6841'});
    graph.newEdge(michael, timothy, {color: '#EDC951'});
    graph.newEdge(franklin, monty, {color: '#7DBE3C'});
    graph.newEdge(dennis, monty, {color: '#000000'});
    graph.newEdge(monty, james, {color: '#00A0B0'});
    graph.newEdge(barbara, timothy, {color: '#6A4A3C'});
    graph.newEdge(dennis, bianca, {color: '#CC333F'});
    graph.newEdge(bianca, monty, {color: '#EB6841'});
}

$(function ($) {
      init();

      loadOmae();


  });

function init(){
    $(window).resize(function() { $('#graph-section').height(window.innerHeight); });
}
var __request   = 0;
var __omae      = [];
var __situation = [];
function loadOmae(){
    __request   = 2;
    __omae      = [];
    __situation = [];
    //
    $.ajax({ type     : "GET",
             url      : "http://localhost:4242/oso/rsc/omae",
             dataType : "json"
           })
        .done(function(data){
		  __omae = data;	  
		  __request = __request - 1;
		  if(__request==0)
		      draw(__omae,__situation);
              })
        .error(function(data) {});

    $.ajax({ type     : "GET",
             url      : "http://localhost:4242/oso/rsc/situation",
             dataType : "json"
           })
        .done(function(data){
		  __situation = data;
		  __request = __request - 1;
		  if(__request==0)
		      draw(__omae,__situation);
              })
        .error(function(data) {});
}

function draw(omae,situation){
    var graph = new Springy.Graph();
    var hm    = {};
    for(var i in omae)
	hm[omae[i].id] = graph.newNode({label: omae[i].code});

    //graph.newEdge(dennis, michael, {color: '#00A0B0'});
    for(var i in situation){
	var air = situation[i];
	graph.newEdge(hm[air.from], hm[air.to], {color: '#888'});
    }
    
    var springy
        = window.springy
        = jQuery('#netowrk-graph-job')
        .springy({ graph: graph,
                   nodeSelected: function(node){
                       console.log('Node selected: ' + JSON.stringify(node.data));
                   }});
}


function dump(o){ console.log(o); }
