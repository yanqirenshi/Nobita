<section-header-with-breadcrumb>
    <section class="section">
        <div class="container">
            <h1 class="title is-{opts.no ? opts.no : 3}">
                {opts.title}
            </h1>
            <h2 class="subtitle">
                <section-breadcrumb></section-breadcrumb>
            </h2>

            <yield/>
        </div>
    </section>

    <style>
     section-header-with-breadcrumb > .section {
         background: #F8F7ED;
         margin-bottom: 3px;
     }
    </style>
</section-header-with-breadcrumb>
