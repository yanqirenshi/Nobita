<operator-syntax>
    <p style="">
        <span>{opts.name}</span>
        <span class="args" style="">
            <i style="font-weight:bold;">{args()}</i>
            <i>{keyPrefix()}</i>
            <i style="font-weight:bold;">{keys()}</i>
        </span>
        <span>⇒</span>
        <span class="results"  style="font-weight:bold;">
            <i>{ret()}</i>
        </span>
    </p>

    <style>
     operator-syntax > p {
         font-size: 24px;
         background: rgba(233,233,233,0.3);
         padding: 8px 24px;
         border-radius: 3px;
     }
     operator-syntax span.args {
         margin-left: 8px;
         margin-right: 8px;
     }

     operator-syntax span.results {
         margin-left: 8px;
         margin-right: 8px;
     }
    </style>

    <script>
     this.args = () => {
         let args = this.opts.args ? this.opts.args : [];
         return args.join(' ');
     };
     this.keyPrefix = () => {
         let keys = this.opts.keys ? this.opts.keys : [];
         return keys.length!=0 ? '&key' : '';
     };
     this.keys = () => {
         let keys = this.opts.keys ? this.opts.keys : [];
         return keys.join(' ');
     };
     this.ret = () => {
         return this.opts.results ? this.opts.results : '???';
     };
    </script>
</operator-syntax>
