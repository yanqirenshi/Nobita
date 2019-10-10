<app-modals-add-nobita-contents>

    <div style="display: flex; flex-direction: column;">

        <div>
            <div class="field">
                <div class="control">
                    <input class="input" type="text" placeholder="Name">
                </div>
            </div>

        </div>

        <div style="display: flex; margin-top: 22px;">
            <div style="width:auto; margin-right:22px;">

                <div class="control" style="margin-bottom: 22px;">
                    <label class="radio"
                           each={obj in contents_types}>
                        <input type="radio" name="answer" code={obj.code}>
                        {obj.label}
                    </label>
                </div>

                <!-- <app-modals-add-nobita-contents-fn></app-modals-add-nobita-contents-fn> -->
                <app-modals-add-nobita-contents-cl></app-modals-add-nobita-contents-cl>
            </div>

            <div style="width:333px; flex-grow:1;">
                <div class="field" style="height:100%;">
                    <div class="control" style="height:100%;">
                        <textarea class="textarea"
                                  placeholder="Description"
                                  style="height:100%;"></textarea>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <script>
     this.contents_types = [
         { code: 'fn', label: 'Submit Lisp Code' },
         { code: 'cl', label: 'Call Function' },
     ];
    </script>

</app-modals-add-nobita-contents>
