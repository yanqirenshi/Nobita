<student-desk>

    <section class="section">
        <div class="container">
            <h1 class="title"></h1>
            <h2 class="subtitle">
            </h2>

            <div class="card-pool">
                <student-desk_card-doraamon each={obj in source['dora@mons']}
                                            source={obj}></student-desk_card-doraamon>
            </div>

        </div>
    </section>

    <script>
     this.source = [];
     STORE.subscribe((action) => {
         if (action.type=='FETCHED-PAGES-STUDENT-DESK') {
             this.source = action.response;

             this.update();

             return;
         };
     });
     this.on('mount', () => {
         ACTIONS.fetchPagesStudentDesk();
     });
    </script>

    <style>
     student-desk {
         display: block;
         padding-left: 55px;
         width: 100vw;
         height: 100vh;
     }
     student-desk .card-pool {
         padding: 22px;
     }
     student-desk .card-pool > * {
         margin-left: 22px;
         margin-bottom: 22px;
     }
    </style>

</student-desk>
