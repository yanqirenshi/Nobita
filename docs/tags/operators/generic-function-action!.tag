<generic-function-action-ex>
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
                <p><b>action!</b> <i>graph nobit@ idea source</i> => <i>nil</i></p>
                <!-- <operator-syntax name={source.name}
                     args={source.syntax.args}
                     results={source.syntax.results}>
                     </operator-syntax> -->
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
            <h1 class="title is-4">Arguments and Values:</h1>

            <div class="contents">
                <table class="table is-bordered is-striped is-narrow is-hoverable">
                    <thead>
                        <tr> <th>Name</th>   <th>Type</th>           <th>description</th></tr>
                    </thead>
                    <tbody>
                        <tr> <td>graph</td>  <td>SHINRA:BANSHOU</td> <td></td> </tr>
                        <tr> <td>nobit@</td> <td>NOBIT@</td>         <td></td> </tr>
                        <tr> <td>idea</td>   <td>PLIST</td>          <td></td> </tr>
                        <tr> <td>source</td> <td>NODE</td>           <td></td> </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </section>

    <section class="section">
        <div class="container">
            <h1 class="title is-4">Description:</h1>

            <div class="contents">
                <p>スロット: <code>action</code> に設定されているコードを実行します。</p>
                <p><code>action</code> が設定されていない場合は引数の <code>idea</code> をそのまま返します。</p>
            </div>
        </div>
    </section>

    <!-- ---------------------------------------------------------------- -->
    <!-- ----END--------------------------------------------------------- -->
    <!-- ---------------------------------------------------------------- -->

    <script>
     this.source = {
         type: 'Function',
         name: 'ACTION!',
         syntax: {
             args: ['sequence', 'idea_id', 'graph', 'source', 'friendship'],
             results: "karama(plist)",
         },
     }
    </script>

</generic-function-action-ex>
