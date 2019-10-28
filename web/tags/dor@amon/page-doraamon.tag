<page-doraamon>

    <section-header-with-breadcrumb title="Dora @ mon"></section-header-with-breadcrumb>

    <section class="section">
        <div class="container">
            <h1 class="title"></h1>
            <h2 class="subtitle">
            </h2>

            <div class="contents">
                <a href={futureItemLink()}>Future Item</a>
            </div>

        </div>
    </section>

    <script>
     this.futureItemLink = () => {
         return location.hash + '/future-items/' + 1
     };
     this.on('mount', () => {
     });
    </script>

</page-doraamon>
