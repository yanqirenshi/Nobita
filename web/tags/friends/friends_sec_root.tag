<friends_sec_root>
    <section class="hero">
        <div class="hero-body">
            <div class="container">
                <h1 class="title">友達</h1>
                <h2 class="subtitle">。。。皆は友達怖くない</h2>
            </div>
        </div>
    </section>

    <section class="section">
        <div class="container">
            <h1 class="title">一覧</h1>
            <h2 class="subtitle"></h2>

            <div class="contents">
                <table class="table is-bordered is-striped is-narrow is-hoverable">
                    <thead>
                        <tr>
                            <th rowspan="2">Type</th>
                            <th rowspan="2">ID</th>
                            <th rowspan="2">Name</th>
                            <th rowspan="1">Action</th>
                        </tr>
                        <tr>
                            <th>Size</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr each={friend in friends()}>
                            <td>{friend._class}</td>
                            <td>{friend._id}</td>
                            <td>{friend.name}</td>
                            <td>{friend.action}</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </section>

    <script>
     this.friends = () => {
         return STORE.state().toJS().nodes.list;
     };
     STORE.subscribe((action) => {
         if (action.type=='FETCHED-NODES')
             this.update();
     });
    </script>

    <style>
     page02-sec_root {
         display: block;
         margin-left: 55px;
     }
    </style>
</friends_sec_root>
