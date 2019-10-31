<page-doraamon_card-future-items>

    <page-doraamon_card-future-item each={obj in opts.source}
                                    source={obj}></page-doraamon_card-future-item>

    <style>
     page-doraamon_card-future-items {
         display: flex;
         flex-wrap:wrap
     }
     page-doraamon_card-future-items > page-doraamon_card-future-item {
         margin-left: 22px;
         margin-bottom: 22px;
     }
    </style>

</page-doraamon_card-future-items>
