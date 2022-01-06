# Rock, Paper, Scissors game in Ruby

It is a 2 players game, you versus the computer. Each player simultaneously chooses "rock", "paper", and "scissors".

The game has a **cheat mode** where the computer wins every round.

## Code

The main file is `rockpaperscissors.rb` and the game is run with only one line of code :

```ruby
require_relative "interface"
require_relative "controller"
require_relative "rules"
require_relative "points"
require_relative "message"
require_relative "game"
Game.new.play
```

## Usage

From the project directory, on your command line run `ruby rockpaperscissors.rb`

Then just follow the instructions prompted.

![image](https://user-images.githubusercontent.com/85266997/148343259-9c142a60-0c29-4e97-ad0a-4cec7815e7fd.png)

## Live Demo

![image](https://user-images.githubusercontent.com/85266997/148345735-6902c613-a689-4459-82b5-2b3db970efe7.png)

[Video Link](https://oc-visio-archive.s3.eu-west-1.amazonaws.com/46969134/a3ec8d06-989b-4888-afa2-8ca001236cf0/archive.mp4?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAJ3OEUN7A5K7BWS3Q%2F20220106%2Feu-west-1%2Fs3%2Faws4_request&X-Amz-Date=20220106T072007Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Signature=8433b5e13cee687bb3028dac3861f12f55c21b0aa3a181b9c36817cef314ce9c) 




Just skip to 4:21min, the powerpoint did not show up. Will remake the same demo in the near future.

Presentation was made to project assessor @amuntasim , a senior software engineer and mentor at Openclassrooms (https://amuntasim.github.io/).
