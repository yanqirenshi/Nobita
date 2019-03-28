<school-district_basic>
    <h1 class="title is-4">Basic</h1>

    <div>
        <table class="table is-bordered is-striped is-narrow is-hoverable">
            <thead>
                <tr>
                    <th>Name</th>
                    <td>{name()}</td>
                </tr>

                <tr>
                    <th>id</th>
                    <td>{id()}</td>
                </tr>

                <tr>
                    <th>Class</th>
                    <td>{cls()}</td>
                </tr>
            </thead>
        </table>

        <div>
            <button class="button" onclick={clickMoveView}>照会</button>
        </div>
    </div>

    <script>
     this.clickMoveView = () => {
         let path = this.path() + '/' + this.opts.source._id;

         ACTIONS.moveSchoolDistrictFriendView(path);
     };
     this.path = () => {
         if (!this.opts.source)
             return null;

         let cls = this.opts.source._class;

         let node = ''
         if (cls=='G*AN')
             node = 'g*ans'
         if (cls=='4NEO')
             node = '4neos';
         if (cls=='NOBIT@')
             node = 'nobitas'

         return '#school-district/' + node;
     };
     this.id = () => {
         return this.opts.source ? this.opts.source._id : '';
     };
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
