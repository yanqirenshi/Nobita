<generic-function_flash-across-ones-mind>

    <section class="hero" style="background:#faf8ed;">
        <div class="hero-body">
            <div class="container">
                <h1 class="title">{source.type}: {source.name}</h1>
                <h2 class="subtitle">
                    <section-breadcrumb></section-breadcrumb>
                </h2>
            </div>
        </div>
    </section>

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

            <section class="section">
                <div class="container">
                    <h1 class="title is-5">karama(plist)</h1>

                    <div class="contents">
                    </div>
                </div>
            </section>

        </div>
    </section>

    <section class="section">
        <div class="container">
            <h1 class="title is-4">Method Signatures:</h1>

            <div class="contents">
                <generic-function-method-signatures source={source.method.signatures}>
                </generic-function-method-signatures>
            </div>
        </div>
    </section>

    <section class="section">
        <div class="container">
            <h1 class="title is-4">Arguments:</h1>

            <div class="contents">
                <slots-list slots={source.args}></slots-list>
            </div>
        </div>
    </section>

    <section class="section">
        <div class="container">
            <h1 class="title is-4">Values:</h1>

            <div class="contents">
                <slots-list slots={source.values}></slots-list>
            </div>
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

    <script>
     this.source = {
         type: 'Generic Function',
         name: 'flash-across-ones-mind',
         syntax: {
             args: ['graph', 'g*an'],
             results: "???",
         },
         args: [
             { name: 'graph', type: '', description: '' },
             { name: 'g*an',  type: '', description: '' },
         ],
         values: [
             { name: '???', type: '', description: '' },
         ],
         method: {
             signatures: [
                 { graph: 'shinra:banshou', g_an: 'g*an' },
             ]
         }
     }
    </script>

</generic-function_flash-across-ones-mind>
