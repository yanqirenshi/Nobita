<student-desk_card-doraamon-small>

    <div>
        <p><a href={draamonLink()} source={opts.source}>{opts.source.name}</a></p>
    </div>


    <script>
     this.draamonLink = () => {
         let dora = this.opts.source;

         return location.hash + '/dora@mons/' + dora._id;
     };
    </script>

    <style>
     student-desk_card-doraamon-small {
         display: flex;
         width: 222px;
         height: 222px;

         padding: 22px;

         border: 1px solid #eeeeee;
         border-radius: 5px;
         box-shadow: 0px 0px 8px #aaaaaa;
     }
    </style>

</student-desk_card-doraamon-small>
