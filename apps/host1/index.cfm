<cfscript>
    info = [];
    ArrayAppend(info, "url: " & cgi.request_url);
    ArrayAppend(info, "application name: " & getApplicationSettings().name);
    ArrayAppend(info, getApplicationSettings().mappings);

    ArrayAppend(info, "--model.test");
    ArrayAppend(info, new model.test().hello());
    ArrayAppend(info, "--mapModel.test");
    ArrayAppend(info, new mapModel.test().hello());

    ArrayAppend(info, "--application.test1");
    ArrayAppend(info, application.test1.hello());

    ArrayAppend(info, "--application.test2");
    ArrayAppend(info, application.test2.hello());

    ArrayAppend(info, "--application.test3");
    ArrayAppend(info, application.test3.hello());

    ArrayAppend(info, "--application.test4");
    ArrayAppend(info, application.test4.hello());

    ArrayAppend(info, "--application.test5");
    ArrayAppend(info, application.test5.hello());

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