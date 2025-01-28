# Social Media UI with Swift

This project is a simple implementation of a social media app's user interface built using Swift and SwiftUI. The app mimics a basic layout of a social media page, including user profiles, stories, posts, and interactions.

## Features

- **Stories Section**: Displays user stories in a horizontal scrollable layout.
- **User Profile Header**: Includes a user profile picture, username, and options.
- **Post Section**: Shows a post with a caption, username, and interactive icons for likes, comments, and sharing.
- **Clean Design**: Built using SwiftUI for a modern and responsive user interface.

## Preview

![App Preview](/img/image.png)

## Technologies Used

- **Swift**: Programming language for iOS development.
- **SwiftUI**: Framework for building user interfaces in a declarative way.

## How to Run

1. Clone this repository:
   ```bash
   git clone https://github.com/your-username/social-media-ui-swift.git
   ```
2. Open the project in Xcode.
3. Run the project on the iOS Simulator or a physical device.

## Code Structure

- `ContentView.swift`: Main file that defines the layout and UI components.
- `Data Models`: Includes a User struct for managing user data such as username, friends, and captions.

## Example Code

```bash
struct User {
    var username: String
    var friend: String
    var caption: String
}

let nama = User(username: "yolookings", friend: "yoloaster", caption: "So Adorable!")
```

## License

This project is licensed under the MIT License. See the [LICENSE](https://gist.github.com/ckib16/8732561535ed766cd6b8) file for details.
