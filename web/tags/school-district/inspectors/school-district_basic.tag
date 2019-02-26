<school-district_basic>
    <h1 class="title is-4">Basic</h1>

    <div>
        <table class="table is-bordered is-striped is-narrow is-hoverable">
            <thead>
                <tr> <th>Class</th> <td>{cls()}</td> </tr>
                <tr> <th>Name</th>  <td>{name()}</td> </tr>
            </thead>
        </table>
    </div>

    <script>
     this.cls = () => {
         return this.opts.source ? this.opts.source._class : '';
     };
     this.name = () => {
         return this.opts.source ? this.opts.source.name : '';
     };
    </script>

    <style>
     school-district_basic {
         display: block;
         margin-bottom: 22px;
     }
     school-district_basic > h1.title {
         margin-bottom: 11px;
     }
     school-district_basic > div {
         padding-left: 22px;
     }
    </style>
</school-district_basic>
