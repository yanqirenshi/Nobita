<page-future-tool-create-basic-info>

    <section class="section">
        <div class="container">
            <h1 class="title">Basic Infomation</h1>
            <h2 class="subtitle"></h2>

            <div class="field">
                <div class="control">
                    <input class="input"
                           type="text"
                           placeholder="Name"
                           onkeyup={keyupName}>
                </div>
            </div>

            <div class="field">
                <div class="control">
                    <textarea class="textarea"
                              placeholder="Description"
                              onkeyup={keyupDescription}></textarea>
                </div>
            </div>

        </div>
    </section>

    <script>
     this.keyupName = (e) => {
         let name = e.target.value;
         let cb = this.opts.callback;

         cb('change-name', name);
     };
     this.keyupDescription = (e) => {
         let description = e.target.value;
         let cb = this.opts.callback;

         cb('change-description', description);
     };
    </script>


    <style>
     page-future-tool-create-basic-info > .section {
         padding-bottom: 11px;
     }
    </style>

</page-future-tool-create-basic-info>
