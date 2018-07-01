<hearts_classes>
    <section-container title="Classes" data={classes}>
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
         { href: '#page04/nobiheart',  title: 'NOBIHEART',  description: '' },
         { href: '#page04/karma-pool', title: 'KARMA-POOL', description: 'NOBIHEART のスロットにセットする。NOBIHEARTが処理するためのキューです。' }
     ];
    </script>
</hearts_classes>
