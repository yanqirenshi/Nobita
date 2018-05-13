<app>

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
         if (action.target=='app')
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
