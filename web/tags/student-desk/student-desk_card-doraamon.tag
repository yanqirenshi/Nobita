<student-desk_card-doraamon>

    <student-desk_card-doraamon-large source={childrenSource()}></student-desk_card-doraamon-large>
    <student-desk_card-doraamon-small source={childrenSource()}></student-desk_card-doraamon-small>

    <script>
     this.childrenSource = () => {
         return this.opts.source;
     }
    </script>

</student-desk_card-doraamon>
