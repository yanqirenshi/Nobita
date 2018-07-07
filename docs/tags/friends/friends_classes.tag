<friends_classes>
    <section-container title="Classe" data={classes}>
        <section-contents data={opts.data}>
            <table class="table is-bordered is-striped is-narrow is-hoverable">
                <thead>
                    <tr> <th>Symbol</th> <th>Description</th> </tr>
                </thead>
                <tbody>
                    <tr each={opts.data}>
                        <td><a href={href}>{title}</a></td>
                        <td>{description}</td>
                    </tr>
                </tbody>
            </table>
        </section-contents>
    </section-container>

    <script>
     this.classes = [
         { href: '#page02/g-an',   title: 'G*AN',   description: '' },
         { href: '#page02/4neo',   title: '4NEO',   description: '' },
         { href: '#page02/nobita', title: 'NOBIT@', description: '' }
     ];
    </script>
</friends_classes>
