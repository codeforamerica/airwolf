var myModule=require("../src/helloworld.js")

describe("Hello world", function() {
    it("says hello", function() {
        expect(myModule.helloWorld()).toEqual("Hello world!");
    });
});