<operators-table-section>

    <section class="section">
        <div class="container">
            <h1 class="title is-4">Operators:</h1>

            <div class="contents">
                <operators-table targets={targets()}
                                 link-prefix={location.hash}></operators-table>
            </div>
        </div>
    </section>

    <script>
     this.targets = () => {
         if (this.opts.targets && this.opts.targets.operators)
             return this.opts.targets.operators;

         return [];
     }
    </script>

</operators-table-section>
