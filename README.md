# Adventure Time

![](http://i.imgur.com/qLEK9dM.jpg?1)


# Instructions

Open up the .xcodeproj file (there are no tests associated with this lab).

**1** Create a new Swift file, `Character.swift`. You should then define a new struct called `Character`. This struct will have the following stored properties:

* `name` of type `String`
* `species` of type `String`
* `occupation` of type `String`
* `powerLevel` of type `Double`
* `killedEnemies` of type `Int` with a default value of 0
* `bestFriend` of type `String` with a default value of ""

**2** Create an `init` method that takes in a `name`, `species`, `occupation`, and `powerLevel` as arguments. Implement your `init` method.

**3** Create a mutating func called `fight(enemy:)`. The parameter is of type `Character`. In your implementation of this function, you should check to see if the `powerLevel` (on the current instance) is greater than the enemies power level which is passed into this method as an argument. If it is then you should increment the `killedEnemies` stored property by 1. As well, you should increase the `powerLevel` stored property by 10. 

Within this same function, if the `powerLevel` of the current instance is less than the enemies `powerLevel` than you should decrease the `powerLevel` stored property by 10.

**4** Create a mutating func called `becomeBestFriends(with:)`. It should take in one argument called `friend` of type `String`. In your implementation of this function, you should change your `bestFriend` (which is a stored property) to equal this new `friend` which was passed into this method as an argument.

**5** Copy & Paste this function below where you created your `becomeBestFriends(with:)` function. This will be its own new function which will come in handy later.

```swift
    func displayImage() -> UIImage {
        
        switch name {
        case "Finn The Human":
            return UIImage(named: "Finn")!
        case "Jake The Dog":
            return UIImage(named: "JakeTheDog")!
        case "Princess Bubblegum":
            return UIImage(named: "PrincessBubblegum")!
        case "Lemongrab":
            return UIImage(named: "Lemongrab")!
        case "BMO":
            return UIImage(named: "BMO")!
        case "Lumpy Space Princess":
            return UIImage(named: "LumpySpacePrincess")!
        default:
            return UIImage()
        }
                
    }
```

**6** Head on over to the `Main.storyboard` file and have a look around. This is what you will be implementing. Run the app to see it in action (nothing should be working yet). You wil notice that the user will be able to tap various buttons along the bottom of the screen. The buttons have the following titles:

* "Finn"
* "Jake"
* "Bubblegum"
* "BMO"
* "Lemongrab"
* "LSP"

As well, there's three `UILabel`'s in the center of the screen with text. The text reads as Name, Occupation and Species. Above that is a `UIImageView` with a `UIImage` being displayed in it. It's some of the cast of the show [Adventure Time](https://en.wikipedia.org/wiki/Adventure_Time).

When a user taps one of the buttons below, it should update the labels to reflect _that_ character and it should update the image above to display the image of that particular character.

Don't do anything just yet! Keep on reading.

**7** Head on over to the `ViewController.swift` file. Create outlets for the three `UILabel`'s in the center of the screen. Name those `UILabel`'s something that makes sense, I suggest giving them the following names when you drag them over to the `ViewController.swift` file when you create the outlets:
* `nameLabel`
* `occupationLabel`
* `speciesLabel`

Now you should create an outlet for the `UIImageView` which is displaying that list of characters. Name that `UIImageView` outlet something like `characterImageView`.

Notice how when you're creating these various outlets you see the `!` after the type. That means its an implicitly unwrapped optional. You can do some reading (hint: Apple's Docs) on what this is. Also, I will be producing a video which will be inserted right in this very spot over the weekend which you can watch to also understand them.

**8** Create the following stored properties below where you just dragged over those outlets, feel free to copy/paste these in:

```swift
    var finn: Character!
    var jake: Character!
    var bubblegum: Character!
    var bmo: Character!
    var lemongrab: Character!
    var lsp: Character!
```

We will come back to this! Don't do anything with these yet.

**9** Drag over IBAction's from all six(6) `UIButton`'s. BUT I don't want you to create separate IBAction's for each button. Drag every single `UIButton` to the same action. You can't do this all at the same time (meaning, you can't highlight all the `UIButton`'s and drag them over that way). You need to do one at a time and you can drag them all to the same IBAction. The name of this IBAction should be `buttonTapped` and when you first create this IBAction (when you do this for the first `UIButton`) you should change the sender argument to `UIButton`, it will default to `AnyObject`.

**10** Create a function called `createAllCharacters()`. In your implementation of this function, you should assign values to all of those `Character` stored properties you declared above in Instruction #8. What does that mean? Well, those stored properties called `finn`, `jake`, etc. don't have values assigned to them yet. So that's what you need to do. Here's an example of how to do that:

```swift
finn = Character(name: "Finn The Human", species: "Human", occupation: "Hero", powerLevel: 50.0)
``` 

You should do this for every single one of these stored properties. After you finished implementing this method, call on this function in the `viewDidLoad()` function, like so:

```swift
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createAllCharacters()
    }
```

**11** Create a function called `updateViews(with:)` that takes in one argument labeled `character` of type `Character`



<a href='https://learn.co/lessons/StructUsage' data-visibility='hidden'>View this lesson on Learn.co</a>
