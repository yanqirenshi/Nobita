<page-doraamon_card-future-item>

    <a href={futureItemLink()}>{futureItemName()}</a>

    <script>
     this.futureItemName = () => {
         let obj = this.opts.source;

         if (!obj || !obj.name)
             return '';

         return obj.name;
     };
     this.futureItemLink = () => {
         let obj = this.opts.source;

         if (!obj)
             return null;

         return location.hash + '/future-tools/' + obj._id;
     };
    </script>

    <style>
     page-doraamon_card-future-item {
         display: flex;

         width: 222px;
         height: 222px;

         padding: 22px;

         border: 1px solid #eeeeee;
         border-radius: 5px;

         box-shadow: 0px 0px 11px #dddddd;
     }
    </style>

</page-doraamon_card-future-item>
