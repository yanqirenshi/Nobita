<page01-sec_root>
    <section-header title="NOBIT@: Home"></section-header>

    <section-container title="セクション" data={sections()}>
        <sections-list data={opts.data}>
        </sections-list>
    </section-container>

    <script>
     this.sections = () => {
         let pages = STORE.state().get('site').pages;
         let page = pages.find((d) => { return d.code=='page01'; });

         return page.sections;
     }
    </script>
</page01-sec_root>
