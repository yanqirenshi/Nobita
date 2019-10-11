<app-modals-add-friendship-contents-hearts>

    <div style="display: flex; justify-content: center;">

        <div style="margin-right:11px;margin-left:-36px;">
            <p style="font-size:24px;"><i class="fas fa-heartbeat"></i></p>
        </div>

        <div class="select">
            <select onchange={onChange}>
                <option each={obj in list()}
                        value={obj.name}>
                    {obj.name}
                </option>
            </select>
        </div>
    </div>


    <script>
     this.onChange = (e) => {
         let code = e.target.value;
         let heart = null;

         if (code!='Select Heart')
             heart = STORE.get('hearts').find((d) => {
                 return d.name = code;
             });

         this.opts.callbacks('change-heart', heart);
     };
     this.list = () => {
         let list = STORE.get('hearts');

         if (!list)
             return [];

         return [
             { name: 'Select Heart' },
         ].concat(list);

     };
    </script>

    <style>
     app-modals-add-friendship-contents-hearts {
         display: flex;
         flex-direction: column;
     }
    </style>

</app-modals-add-friendship-contents-hearts>
