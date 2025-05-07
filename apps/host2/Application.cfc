component {
	this.name="two";
	this.mappings["/mapModel"] = getDirectoryFromPath(getCurrentTemplatePath()) & "model";

	public boolean function onApplicationStart(){

		application.test1 = new model.test();
		application.test2 = new mapModel.test();
		application.test3 = createObject("component", "model.test");
		application.test4 = createObject("component", "/model/test.cfc");
		application.test5 = createObject("component", "/mapModel/test.cfc");
		application.test6 = createObject("component", "mapModel.test");

		return true;
	}
}