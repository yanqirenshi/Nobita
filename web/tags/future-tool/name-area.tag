<name-area>

    <div if={mode=='view'} class="viewer">
        <p>{nameValue()}</p>
        <button class="button" onclick={clickEdit}>Edit</button>
    </div>

    <div if={mode!='view'} class="editor">
        <input class="input"
               type="text"
               placeholder="Text input"
               value={tmpName}
               onkeyup={keyupName}
               ref="name">

        <button class="button is-warning" onclick={clickCancel}>Cancel</button>
        <button class="button is-danger"  onclick={clickSave}>Save</button>
    </div>


    <script>
     this.tmpName = null;
     this.clickEdit = () => {
         this.mode = 'edit';

         if (!this.tmpName)
             this.tmpName = this.opts.source;

         this.update();
     };
     this.clickCancel = () => {
         this.mode = 'view';
         this.update();
     };
     this.clickSave = () => {
         this.opts.callback('click-save-name', this.tmpName)
     };
     this.keyupName = (e) => {
         let name = e.target.value;

         this.tmpName = name;
     }
     STORE.subscribe((action) => {
         if (action.type==this.opts.succes_action) {
             this.clickCancel();
             return;
         }
     });
    </script>

    <script>
     this.mode = 'view';
     this.nameValue = () => {
         return this.opts.source;
     };
    </script>

    <style>
     name-area .viewer {
         display: flex;
     }
     name-area .viewer > p {
         flex-grow: 1;
         margin-right: 22px;

         font-weghit: bold;
         font-size: 24px;
     }

     name-area .editor {
         display: flex;
     }
     name-area .editor > input {
         flex-grow: 1;
         margin-right: 22px;
     }
     name-area .editor > .is-warning {
         margin-right: 11px;
     }
    </style>

</name-area>
