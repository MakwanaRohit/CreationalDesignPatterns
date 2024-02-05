
# FactoryDesignPattern

The Factory design pattern is a creational design pattern that provides a way to create objects without specifying the exact class of object that will be created. Instead, a factory class is responsible for creating objects based on a set of input parameters.

    protocol AnyUIComponent {
        associatedtype View
    
        func create() -> View
    }
    
In this example, the *AnyUIComponent* protocol defines the create() method that all factory classes must implement. LabelFactory and ButtonFactory classes all conform to the *AnyUIComponent* protocol and provide their own implementation of the create() method.

    let labelFactory = LabelFactory()
    let buttonFactory = ButtonFactory()
    
    let label = labelFactory.create()
    let button = buttonFactory.create()


With example of using the Factory design pattern when building an iOS application could be when building a Social app that displays posts in different formats such as text, video, and image.

    protocol PostProtocol {
        var author: String { get }
        var date: Date { get }
        var content: String { get }
        var type: PostType { get }
    }
    
    enum PostType {
        case text
        case image
        case video
    }
    
Create a PostsFactory class that creates the appropriate post format based on the data it receives from the server:

The PostsFactory class takes in data from the server and uses a switch statement to determine which type of post to create. The factory class then creates the appropriate post object and returns it.

By using the factory pattern, the client code does not need to know the details of how the post objects are created, it only needs to know that it will receive a PostProtocol object.
