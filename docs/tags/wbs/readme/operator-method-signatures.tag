<operator-method-signatures>

    <table class="table is-bordered is-striped is-narrow is-hoverable">
        <tehad>
            <th each={obj in opts.source.header}>{label(obj)}</th>
        </tehad>
        <tbody>
            <tr each={obj in opts.source.contents}>
                <td each={key in opts.source.header}>{obj[key]}</td>
            </tr>
        </tbody>
    </table>

    <script>
     this.label = (obj) => {
         if (obj.substring(0,1)=="_")
             return '';

         return obj;
     };
    </script>
</operator-method-signatures>
