<school-district_nobita>

    <school-district_basic source={opts.source}></school-district_basic>

    <school-district_location source={opts.source}></school-district_location>

    <h1 class="title is-4">Action</h1>

    <div style="padding-left:22px;">
        <p>{action()}</p>
    </div>

    <script>
     this.action = () => {
         return this.opts.source ? this.opts.source.action : '';
     };
    </script>

</school-district_nobita>
