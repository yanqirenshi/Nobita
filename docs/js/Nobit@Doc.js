class NobitaDoc {
    constructor(reducer) {}
    makeDicDataLink (linkPrefix, data) {
         if (!linkPrefix)
             return '';

         return linkPrefix + '/' + data.name;
    }
    filterDicData (target_group_names, dicdata) {
        if (!target_group_names || target_group_names.length==0)
            return dicdata;

        let check = (data) => {
            for (let group_name of target_group_names)
                if (data.group[group_name])
                    return true;

            return false;
        };

        let out = [];
        for (let data of dicdata)
            if (check(data))
                out.push(data);

        return out;
    }
}
