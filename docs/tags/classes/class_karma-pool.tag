<class_karma-pool>
    <section-container title="Class: KARMA-POOL">
    </section-container>
    
    <section-container title="Description">
            <p>queues を利用して karma をキューイングします。</p>
            <p>FILO でキュー処理されます。</p>
        </section-container>

        <section-container title="Slots" data={slots}>
            <section-contents data={opts.data}>
                <slots-list slots={opts.data}></slots-list>
            </section-contents>
        </section-container>

        <section-container title="Operators">
            <function_make-karma-pool></function_make-karma-pool>
            <generic-function_qsize></generic-function_qsize>
            <generic-function_push-karma></generic-function_push-karma>
            <generic-function_pop-karma></generic-function_pop-karma>
            <generic-function_find-karmas></generic-function_find-karmas>
            <generic-function_rm-karma-at-idea-id></generic-function_rm-karma-at-idea-id>
        </section-container>

        <script>
         this.slots = [
             { name: 'counter', description: '', type: 'Integer', initform: '0' },
             { name: 'queue',   description: '', type: 'Function', initform: 'queues:priority-cqueue'}
         ];
         dump(this.slots)
        </script>
</class_karma-pool>
