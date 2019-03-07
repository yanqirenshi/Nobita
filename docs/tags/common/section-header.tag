<section-header>
    <!-- <img src="https://github.com/yanqirenshi/nobita/raw/master/web/assets/image/gian.png?raw=true"> -->

    <section class="section">
        <div class="container">
            <h1 class="title is-{opts.no ? opts.no : 3}">
                {opts.title}
            </h1>
            <h2 class="subtitle">{opts.subtitle}</h2>

            <yield/>
        </div>
    </section>

    <style>
     section-header > .section {
         background: #f8f7ed;
         margin-bottom: 33px;
     }
    </style>
</section-header>
