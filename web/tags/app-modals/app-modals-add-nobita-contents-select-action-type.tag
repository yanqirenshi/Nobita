<app-modals-add-nobita-contents-select-action-type>

    <label class="radio"
           each={obj in opts.source}>
        <input type="radio"
               name="answer"
               code={obj.code}
               onchange={changeActionType}>
        {obj.label}
    </label>

    <script>
     this.changeActionType = (e) => {
         this.opts.callbacks(
             'selected-action-type',
             e.target.getAttribute('code')
         );
     };
    </script>

</app-modals-add-nobita-contents-select-action-type>
