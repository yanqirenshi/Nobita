<school-district_inspector class={hide()}>

    <section class="section" style="padding-top: 22px;">
        <div class="container">
            <h1 class="title">{title()}</h1>

            <div ref="contents">
                <!--
                     <school-district_g-an></school-district_g-an>
                     <school-district_4neo></school-district_4neo>
                     <school-district_nobita></school-district_nobita>
                -->
            </div>
        </div>
    </section>

    <script>
     this.tagData = {
         'G*AN':   'school-district_g-an',
         '4NEO':   'school-district_4neo',
         'NOBIT@': 'school-district_nobita',
     }
     this.on('update', () => {
         let nobita = new Nobita();
         nobita.switchSchoolDistrictInspectorContents ({
             coller: this,
             data: this.opts.source,
             root: this.refs.contents,
             tagData: this.tagData,
         });
     });
    </script>

    <script>
     this.title = () => {
         if (!this.opts.source)
             return '?????????';

         return this.opts.source._class;
     };
     this.hide = () => {
         return this.opts.source ? '' : 'hide';
     };
    </script>

    <style>
     school-district_inspector {
         display: block;
         position: fixed;
         right: 0;
         top: 0;
         height: 100vh;
         min-width: 222px;
         max-width: 33%;
         background: #fff;
         box-shadow: 0px 0px 22px #333333;
     }
     school-district_inspector .hide {
         display: none;
     }
    </style>

</school-district_inspector>
