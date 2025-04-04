// HelloWorld.cls
public class HelloWorld {
    public static String sayHello() {
        return 'Hello World from Salesforce!';
    }
    
    public static String greetUser(String name) {
        if(String.isBlank(name)) {
            return 'Please provide a name';
        }
        return 'Hello ' + name + '!';
    }
}