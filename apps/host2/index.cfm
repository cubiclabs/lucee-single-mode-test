<cfscript>
    info = [];
    ArrayAppend(info, "url: " & cgi.request_url);
    ArrayAppend(info, "application name: " & getApplicationSettings().name);
    ArrayAppend(info, getApplicationSettings().mappings);

    ArrayAppend(info, "--new model.test()");
    ArrayAppend(info, new model.test().hello());
    ArrayAppend(info, "--new mapModel.test()");
    ArrayAppend(info, new mapModel.test().hello());

    ArrayAppend(info, "--application.test1 new model.test()");
    ArrayAppend(info, application.test1.hello());

    ArrayAppend(info, "--application.test2 new mapModel.test()");
    ArrayAppend(info, application.test2.hello());

    ArrayAppend(info, "--application.test3 createObject(""component"", ""model.test"")");
    ArrayAppend(info, application.test3.hello());

    ArrayAppend(info, "--application.test4 createObject(""component"", ""/model/test"")");
    ArrayAppend(info, application.test4.hello());

    ArrayAppend(info, "--application.test5 createObject(""component"", ""/mapModel/test"")");
    ArrayAppend(info, application.test5.hello());

    ArrayAppend(info, "--application.test6 createObject(""component"", ""mapModel.test"")");
    ArrayAppend(info, application.test6.hello());

    for (i in info){
        systemOutput(i, true);
        echo(serializeJson(i)  & "<br>");
    }

    systemOutput("", true);
    echo("<hr>");
    systemOutput("#### componentCacheList()", true);
    echo("#### componentCacheList()");

    componentCache = componentCacheList();
    loop collection="#componentCache#" key="k" value="v" {
        systemOutput("#k#: #v# <br>", true);
        echo("#k#: #v# <br>");
    }

</cfscript>