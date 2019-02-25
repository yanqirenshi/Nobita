<school-district_inspector class={hide()}>

    <section class="section" style="padding-top: 22px;">
        <div class="container">
            <h1 class="title">Inspector Base</h1>
            <h2 class="subtitle"></h2>
        </div>
    </section>

    <script>
     hide = () => {
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
         width: 333px;
         max-width: 50%;
         background: #fff;
         box-shadow: 0px 0px 22px #333333;
     }
     school-district_inspector .hide {
         display: none;
     }
    </style>
</school-district_inspector>
