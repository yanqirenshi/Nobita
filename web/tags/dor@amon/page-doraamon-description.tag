<page-doraamon-description>

    <div>
        <p>{descriptionValue()}</p>
    </div>

    <script>
     this.descriptionValue = () => {
         let obj = this.opts.source;

         if (!obj || !obj.description)
             return "";

         return obj.description;
     };
    </script>

    <style>
     page-doraamon-description > div {
         display: block;
         background: #fafafa;
         padding: 22px;
         border-radius: 5px;
         margin-top: 33px;

         height: 333px;
     }
    </style>

</page-doraamon-description>
