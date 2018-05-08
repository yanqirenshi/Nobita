riot.tag2('app', '<stage></stage>', 'app stage,[data-is="app"] stage{ width: 100%; height: 100%; overflow: hidden; display: block; }', '', function(opts) {
     STORE.subscribe((action) => {
         this.update()
     });

     window.addEventListener('resize', (event) => {
         this.update();
     });

     this.on('mount', function () {
         Metronome.start();
     });
});

riot.tag2('stage', '<svg></svg>', '', '', function(opts) {
});
