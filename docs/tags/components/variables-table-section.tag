<variables-table-section>

    <section class="section">
        <div class="container">
            <h1 class="title is-4">Variables:</h1>

            <div class="contents">
                <variables-table targets={targets.variables}
                                 link-prefix={location.hash}></variables-table>
            </div>
        </div>
    </section>

    <script>
     this.targets = () => {
         if (this.opts.targets && this.opts.targets.variables)
             return this.opts.targets.variables;

         return [];
     };
    </script>

</variables-table-section>
