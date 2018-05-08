<app>
    <stage></stage>

    <style>
     stage {
         width: 100%;
         height: 100%;
         overflow: hidden;
         display: block;
     }
    </style>

    <script>
     STORE.subscribe((action) => {
         this.update()
     });

     window.addEventListener('resize', (event) => {
         this.update();
     });

     this.on('mount', function () {
         Metronome.start();
     });
    </script>
</app>
