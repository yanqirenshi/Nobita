<school-district-controller>

    <div>
        <button class="button"
                each={obj in add_buttons}
                action={obj.action}
                onclick={clickAddButton}>
            {obj.label}
        </button>
    </div>

    <script>
     this.add_buttons = [
         { label: 'Add G * an',     action: 'add-gxan' },
         { label: 'Add 4neo',       action: 'add-4neo' },
         { label: 'Add No bit @',   action: 'add-nobita' },
         { label: 'Add Friendship', action: 'add-friendship' },
     ];
     this.clickAddButton = (e) => {
         let key = e.target.getAttribute('action');
         ACTIONS.openModal(key);
     };
    </script>


    <style>
     school-district-controller > div {
         position: fixed;
         right: 22px;
         bottom: 22px;

         display: flex;
         flex-direction: column;
     }
     school-district-controller > div > * {
         margin-bottom: 11px;
     }
     school-district-controller > div > *:last-child {
         margin-bottom: 0px;
     }
    </style>
</school-district-controller>
