<home-wbs-header>

    <section class="hero">
        <div class="hero-body">
            <div class="container">
                <h1 class="title">{makeTitle()}</h1>
                <h2 class="subtitle">
                    <section-breadcrumb></section-breadcrumb>
                </h2>
            </div>
        </div>
    </section>

    <script>
     this.makeTitle = () => {
         let node = this.geData();

         if (!node)
             return '????????';

         let type = node._core.type;
         let name = node.name;

         return type.toUpperCase() + ':' + name.toUpperCase();
     };
     this.geData = () => {
         let path = location.hash.split('/').reverse();
         let id = path[0]*1;
         let type = {
             packages:  'package',
             variables: 'variable',
             classes:   'class',
             operators: 'operator',
         }[path[1]];

         let node = STORE.get('wnqi.workpackages.ht')[id];

         if (!node)
             return null;

         if (!type==node._core.type)
             return null;

         return node;
     };
    </script>

</home-wbs-header>
