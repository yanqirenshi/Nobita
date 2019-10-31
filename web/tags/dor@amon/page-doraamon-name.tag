<page-doraamon-name>

    <div if={!edit} style="display:flex;">
        <div style="flex-grow:1;">
            <h1 class="title is-2">{nameValue()}</h1>
        </div>

        <div style="margin-left:11px;">
            <button class="button"
                    onclick={clickEdit}>Edit</button>
        </div>
    </div>

    <div if={edit} style="display:flex;">
        <div style="flex-grow:1;">
            <input class="input"
                   type="text"
                   placeholder="Name"
                   value={nameValue()}>
        </div>

        <div style="margin-left:11px;">
            <button class="button"
                    onclick={clickCancel}>Cancel</button>

            <button class="button"
                    style="margin-right:11px;"
                    onclick={clickSave}>Save</button>
        </div>
    </div>

    <script>
     this.edit = false;
     this.clickEdit = () => {
         this.edit = true;
         this.update();
     };
     this.clickCancel = () => {
         this.edit = false;
         this.update();
     };
     this.clickSave = () => {
         this.edit = false;
         this.update();
     };
    </script>

    <script>
     this.on('mount', () => {
         dump('mo');
         dump(this.opts);
     });
     this.on('update', () => {
         dump('up');
         dump(this.opts);
     });
     this.nameValue = () => {
         let obj = this.opts.source;

         if (!obj || !obj.name)
             return "";

         return obj.name;
     };
    </script>

</page-doraamon-name>
