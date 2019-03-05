<generic-function_spread>

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
                    <h1 class="title is-5">???</h1>

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

    <!-- ---------------------------------------------------------------- -->
    <!-- ----END--------------------------------------------------------- -->
    <!-- ---------------------------------------------------------------- -->

    <script>
     this.source = {
         type: 'Generic Function',
         name: 'SPREAD',
         syntax: {
             args: ['graph', 'idea', 'source', 'target'],
             results: "???",
         },
         args: [
             { name: 'graph',  type: 'Object', description: '' },
             { name: 'idea',   type: 'Plist',  description: '' },
             { name: 'source', type: 'Object', description: '' },
             { name: 'target', type: 'Object', description: '' },
         ],
         values: [],
         method: {
             signatures: [
                 { graph: 'shinra:banshou', idea: 'list', source: 't', target: '4neo' },
                 { graph: 'shinra:banshou', idea: 'list', source: 't', target: 'friendship' },
                 { graph: 'shinra:banshou', idea: 'list', source: 't', target: 'g*an' },
                 { graph: 'shinra:banshou', idea: 'list', source: 't', target: 'nobit@' },
             ]
         }
     }
    </script>

</generic-function_spread>
