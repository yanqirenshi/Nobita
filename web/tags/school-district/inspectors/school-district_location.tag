<school-district_location>
    <h1 class="title is-4">Location</h1>

    <div>
        <table class="table is-bordered is-striped is-narrow is-hoverable">
            <thead>
                <tr>
                    <th></th> <th>DB</th> <th>Now</th>
                </tr>
            </thead>
            <tbody>
                <tr> <th>X</th>    <td>{val('x')}</td>  <td>{val('x.now')}</td> </tr>
                <tr> <th>Y</th>    <td>{val('y')}</td>  <td>{val('y.now')}</td> </tr>
                <tr> <th>Z</th>    <td>{val('z')}</td>  <td>{val('z.now')}</td> </tr>
                <tr>
                    <th>Hold</th>
                    <td colspan="2" class="hold-operators {val('hold')}">
                        <button class="button is-primary is-small hold">固定する</button>
                        <button class="button is-warning is-small unhold">固定解除</button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>

    <script>
     this.val = (key) => {
         if (!this.opts.source)
             return '';

         let val = this.opts.source ? this.opts.source[key] : null;

         if (key=='x' || key=='y' || key=='z') {
             let location = this.opts.source.location;
             let val = location[key];

             if (val || val==0) {
                 return Math.floor(val*100)/100;
             } else {
                 return '---';
             }
         }

         if (key=='x.now' || key=='y.now' || key=='z.now') {
             let location = this.opts.source;
             let k = key.split('.')[0];
             let val = location[k];

             if (val || val==0) {
                 return Math.floor(val*100)/100;
             } else {
                 return '---';
             }
         }

         if (key=='hold') {
             let location = this.opts.source.location;
             return val ? 'hold' : '';
         }

         return val
     };
    </script>

    <style>
     school-district_location {
         display: block;
         margin-bottom: 22px;
     }
     school-district_location > h1.title {
         margin-bottom: 11px;
     }
     school-district_location > div {
         padding-left: 22px;
     }
     school-district_location .hold-operators      > .unhold { display: none; }
     school-district_location .hold-operators.hold > .hold   { display: none; }

    </style>
</school-district_location>
