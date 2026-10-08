Homebrew tap for Roon-related stuff.

# Installation

To install a package from this homebrew tap, you need to add it first:

    brew tap nepherte/roon

Once added, you also need to whitelist it (do so at your own risk):

    brew trust nepherte/roon

Finally, packages (be it formula or casks) can be installed with:

    brew install nepherte/roon/<package>

# Packages

An overview of the available packages in this homebrew tap:

| Package  | Version |       x86_64       |       arm64        |
|:---------|:-------:|:------------------:|:------------------:|
| roon-tui |  0.3.2  | :white_check_mark: | :white_check_mark: |
|   arco   |  0.3.1  | :white_check_mark: | :white_check_mark: |

# FAQ

#### Where is the source code coming from?
The source code is taken from upstream repositories.

# Credits

Big thanks to Jan Koudijs for providing roon-tui. Check out his
[GitHub](https://github.com/TheAppgineer) profile.

Big thanks to Rene Bouwmeester for providing Arco. Check out his
[GitHub](https://github.com/renebouwmeester/arco) profile.
