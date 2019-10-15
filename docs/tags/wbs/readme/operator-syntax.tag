<operator-syntax>

    <div>
        <div class="operator-name">
            <p>{opts.operator}</p>
        </div>

        <div class="arguments-normal">
            <p each={arg in opts.arguments.normal}>{arg}</p>
        </div>

        <div class="sep">⇒</div>

        <div class="results">
            <p each={result in opts.results}>{result}</p>
        </div>
    </div>

    <style>
     operator-syntax > div {
         padding: 22px;
         background: #f8f8f8;
         border-radius: 5px;

         display: flex;
     }
     operator-syntax .operator-name {
         font-weight: bold;
         display: flex;
     }
     operator-syntax .arguments-normal {
         display: flex;
         margin-left: 11px;
     }
     operator-syntax .arguments-normal > * { margin-left: 11px; }
     operator-syntax .arguments-normal > *:first-child { margin-left: 0px; }
     operator-syntax .sep { margin-left: 11px; }
     operator-syntax .results {
         display: flex;
         margin-left: 11px;
     }
    </style>

</operator-syntax>
