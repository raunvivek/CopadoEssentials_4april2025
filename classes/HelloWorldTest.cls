// HelloWorldTest.cls
@isTest
private class HelloWorldTest {
    @isTest
    static void testSayHello() {
        // Given & When
        String greeting = HelloWorld.sayHello();
        
        // Then
        System.assertEquals('Hello World from Salesforce!', greeting, 'Greeting should match');
    }
    
    @isTest
    static void testGreetUser() {
        // Given
        String userName = 'John';
        
        // When
        String greeting = HelloWorld.greetUser(userName);
        
        // Then
        System.assertEquals('Hello John!', greeting, 'Should greet user with their name');
    }
    
    @isTest
    static void testGreetUserWithBlankName() {
        // Given
        String userName = '';
        
        // When
        String greeting = HelloWorld.greetUser(userName);
        
        // Then
        System.assertEquals('Please provide a name', greeting, 'Should handle blank name');
    }
}