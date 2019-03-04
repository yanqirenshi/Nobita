<function_make-karma>

    <section class="hero">
        <div class="hero-body">
            <div class="container">
                <h1 class="title">{source.type}: {source.name}</h1>
                <h2 class="subtitle">
                    <section-breadcrumb></section-breadcrumb>
                </h2>

                <!-- ---------------------------------------------------------------- -->
                <!-- ----START------------------------------------------------------- -->
                <!-- ---------------------------------------------------------------- -->

                <section class="section">
                    <div class="container">
                        <h1 class="title is-4">Syntax:</h1>

                        <div class="contents">
                            <operator-syntax name={source.name}
                                             args={source.syntax.args}
                                             results={source.syntax.results}>
                            </operator-syntax>
                        </div>
                    </div>
                </section>

                <section class="section">
                    <div class="container">
                        <h1 class="title is-4">Arguments and Values:</h1>

                        <div class="contents">
                            <slots-list slots={source.slots}></slots-list>
                        </div>
                    </div>
                </section>

                <section class="section">
                    <div class="container">
                        <h1 class="title is-4">Description:</h1>
                    </div>
                </section>

                <section class="section">
                    <div class="container">
                        <h1 class="title is-4">Examples:</h1>

                        <div class="contents">
                            <p><pre>
                            </pre></p>
                        </div>
                    </div>
                </section>

                <section class="section">
                    <div class="container">
                        <h1 class="title is-4">Affected By:</h1>

                        <div class="contents">
                            <p>None.</p>
                        </div>
                    </div>
                </section>

                <section class="section">
                    <div class="container">
                        <h1 class="title is-4">Exceptional Situations:</h1>
                    </div>
                </section>

                <section class="section">
                    <div class="container">
                        <h1 class="title is-4">See Also:</h1>
                    </div>
                </section>

                <section class="section">
                    <div class="container">
                        <h1 class="title is-4">Notes:</h1>
                    </div>
                </section>

                <!-- ---------------------------------------------------------------- -->
                <!-- ----END--------------------------------------------------------- -->
                <!-- ---------------------------------------------------------------- -->

            </div>
        </div>
    </section>

    <script>
     this.source = {
         type: 'Function',
         name: '@@@@@@@@',
         syntax: {
             args: ['a', 'b'],
             results: "Plist",
         },
         slots: [
             { name: '', type: '', description: '' },
         ],
     }

    </script>

</function_make-karma>
