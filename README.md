# Roblox-Spotify-Miniplayer

> THIS SCRIPT ONLY WORKS FOR SYNAPSE X, DO NOT COMPLAIN TO ME IF YOU HAVE ISSUES ON A DIFFERENT EXECUTER
# Script
## IF YOU HAVE ANY ISSUES PLEASE REFER TO THE FAQ AND READ THIS WHOLE DOCUMENT.

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/V-0ID/Roblox-Spotify-Miniplayer/main/Miniplayer.lua"))();
```

## Instructions
Execute the script & enter an API token within the settings, this can be accessed by pressing the cogwheel on the top right of the miniplayer
then enter the APIToken within the textbox and press submit. Tokens can be obtained here: 
[https://developer.spotify.com/console/get-user-player/]

### When creating the APIToken make sure the following scopes are enabled:

> make scure the following scopes are enabled:

> user-read-recently-played 

> user-read-playback-position

> user-read-playback-state

> user-read-currently-playing 

> user-follow-modify

> user-modify-playback-state

# FAQ
## Will this be updated?
No, this script will no longer be updated as I have moved on from it and have started to work on other things.
I do have plans to merge this script with another script I am making, though I do not plan to release that anytime
soon.

## I put in the API key but it didn't do anything
Make sure you use the link listed above and enable all of the following scopes.

## The playback has freezed
If this issue occurs it is a problem on both ends (the spotify API and the script) this occurs because the script
sends alot of API request. To fix this you need to renew the API Token. If this is too much of an issue for you
you can go into the *Patches* folder, then find the most recent patch, from there copy everything in that file,
at the top of the script you will see the settings, you can change the *Refresh Rate* (this is how fast API requsts are sent).
I would reccomend changing this to 1. By changing this it will slow down all interactions (that include the spotify API)
meaing that skipping, pausing or even how fast the song updates on the miniplayer will be delayed by how many seconds you set
the *Refrest Rate* to.

## Can I use your script?
Ofcourse, you can use this script or look at the code (Credit me though). Though please do not just copy and paste everything and claim it as your own
I made this script open source to be a learning resource, when I was trying to figure out how to do this it took me a few weeks just
to understand how to use the API properly and fix existing errors. There aren't any other scripts like this that are public that I am
aware of, which is why I chose to make this open source.

# Credit
> All code was created by: Matteo❤#6537

> Inspiration for this script was from: Scream#4766

> The code to drag the miniplayer was taken from somewhere, I don't remember where from.
