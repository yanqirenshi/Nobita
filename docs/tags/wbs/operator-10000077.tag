<operator-10000077>

    <home-wbs-header></home-wbs-header>

    <page-tab-with-section core={page_tabs} callback={clickTab}></page-tab-with-section>

    <div class="tab-contents-area">
        <operator-10000077-readme                class="hide"></operator-10000077-readme>
        <home-wbs-structure                      class="hide"></home-wbs-structure>
        <operator-10000077-signatiure-4neo       class="hide"></operator-10000077-signatiure-4neo>
        <operator-10000077-signatiure-friendship class="hide"></operator-10000077-signatiure-friendship>
        <operator-10000077-signatiure-g_an       class="hide"></operator-10000077-signatiure-g_an>
        <operator-10000077-signatiure-nobita     class="hide"></operator-10000077-signatiure-nobita>
    </div>

    <section-footer></section-footer>

    <script>
     this.page_tabs = new PageTabs([
         {code: 'readme',                label: 'README',                tag: 'operator-10000077-readme' },
         {code: 'signatiure-g_an',       label: 'Signatiure:G*an',       tag: 'operator-10000077-signatiure-g_an' },
         {code: 'signatiure-4neo',       label: 'Signatiure:4neo',       tag: 'operator-10000077-signatiure-4neo' },
         {code: 'signatiure-nobit@',     label: 'Signatiure:Nobit@',     tag: 'operator-10000077-signatiure-nobita' },
         {code: 'signatiure-friendship', label: 'Signatiure:Friendship', tag: 'operator-10000077-signatiure-friendship' },
         {code: 'structure',             label: 'Wnqi',                  tag: 'home-wbs-structure' },
     ]);

     this.on('mount', () => {
         this.page_tabs.switchTab(this.tags)
         this.update();
     });

     this.clickTab = (e, action, data) => {
         if (this.page_tabs.switchTab(this.tags, data.code))
             this.update();
     };
    </script>

</operator-10000077>
