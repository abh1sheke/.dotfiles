<div align="center">

# Yabai config
##### Tiling window manager for the mac
</div>

## How to get started?
Read through the [yabai wiki](https://github.com/koekeishiya/yabai/wiki) to configure yabai to your liking.

## Install scripting addition
yabai uses the macOS Mach APIs to inject code into Dock.app; this requires elevated (root) privileges. You can 
configure your user to execute yabai --load-sa as the root user without having to enter a password. To do this,
we add a new configuration entry that is loaded by /etc/sudoers.

- First get the path to your yabai binary by running:
```
which yabai
```

- Then fetch the sha256 hash of the yabai binary by running
```
shasum -a 256 $(which yabai)
```

- Lastly, open up your sudo config by running
```
sudo visudo -f /private/etc/sudoers.d/yabai
```

And then add the line below to the file:
```
<user> ALL=(root) NOPASSWD: sha256:<hash> <yabai> --load-sa
```

Replacing `<user>` with your username, `<hash>` with the generated sha256 hash and `<yabai>` with the path to the yabai binary.

After the above edit has been made, add the command to load the scripting addition at the top of your yabairc config file

```
yabai -m signal --add event=dock_did_restart action="sudo yabai --load-sa"
sudo yabai --load-sa
```
