<class_karma-pool>
    <section class="hero">
        <div class="hero-body">
            <div class="container">
                <h1 class="title">Class: KARMA-POOL</h1>
                <h2 class="subtitle">
                    <p>心臓が背負う業。</p>
                    <p>Package: nobit@.karma</p>
                </h2>

                <section class="section">
                    <div class="container">
                        <h1 class="title is-4">Slots:</h1>
                        <h2 class="subtitle">
                        </h2>

                        <div class="contents">
                            <slots-list slots={slots}></slots-list>
                        </div>
                    </div>
                </section>

                <section class="section">
                    <div class="container">
                        <h1 class="title is-4">Class Precedence List:</h1>
                        <h2 class="subtitle">
                        </h2>

                        <div class="contents">
                            <p>???</p>
                        </div>
                    </div>
                </section>

                <section class="section">
                    <div class="container">
                        <h1 class="title is-4">Description:</h1>
                        <h2 class="subtitle">
                        </h2>

                        <div class="contents">
                            <p>queues を利用して karma をキューイングします。</p>
                            <p>FILO でキュー処理されます。</p>
                        </div>
                    </div>
                </section>

                <section class="section">
                    <div class="container">
                        <h1 class="title is-4">See Also:</h1>
                        <h2 class="subtitle">
                        </h2>

                        <div class="contents">
                            <p>Generic Function qsize</p>
                            <p>Generic Function push-karma</p>
                            <p>Generic Function pop-karma</p>
                            <p>Generic Function find-karmas</p>
                            <p>Generic Function rm-karma-at-idea-id</p>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </section>

    <!-- <section-container title="Operators">
         <function_make-karma-pool></function_make-karma-pool>
         <generic-function_qsize></generic-function_qsize>
         <generic-function_push-karma></generic-function_push-karma>
         <generic-function_pop-karma></generic-function_pop-karma>
         <generic-function_find-karmas></generic-function_find-karmas>
         <generic-function_rm-karma-at-idea-id></generic-function_rm-karma-at-idea-id>
         </section-container> -->

    <script>
     this.slots = [
         { name: 'counter', description: '', type: 'Integer', initform: '0' },
         { name: 'queue',   description: '', type: 'Function', initform: 'queues:priority-cqueue'}
     ];
    </script>
</class_karma-pool>
