<classes-table-section>

    <section class="section">
        <div class="container">
            <h1 class="title is-4">Classes:</h1>

            <div class="contents">
                <classes-table targets={targets()}
                               link-prefix={location.hash}></classes-table>
            </div>
        </div>
    </section>

    <script>
     this.targets = () => {
         if (this.opts.targets && this.opts.targets.classes)
             return this.opts.targets.classes;

         return [];
     };
    </script>

</classes-table-section>
