# TODO:
the plugin won't have inline images given the limitation of Iterm / Sixel

* the project is going to use mcat directly (no auto install mechanic)
* it should contain very simple functions. e.g display `input` at row y col x
* and examples of how to use them for instance showing images instead of buffers in oil.nvim
* should have some basic implementation built in a toggleable like the oil one. (so people won't have to implement everything on their own)
* should be locked to a certain mcat version (and above maybe)

> the function should be something like:  
#### Viewing functions
* mcat view `input` (creates a full sized image / video centered inside a pop up window)
    * the view function should have the ability to zoom pan the image.
    * add a cache keybind that is going to save the image locally so for things that require chromium it won't have to recreate the image everytime.
    * this function can allow a dir.
* mcat under_cursor (creates a small relative popup window next to the cursor to show an image of the file)
* mcat on_window `input`, width, height, win (creates an image/video at the size specified on a given window id ~ centered)
* mcat put_at `input`, width, height, x, y (should put the given input where the user specified and in the dimensions specified)

Important: All the above MUST not include Dirs. make all of them auto complete to files. and add a check to make sure its not a dir.

#### Fetch functions
* mcat fetch chromium
* mcat fetch ffmpeg
* mcat fetch clean

#### Util functions
* function to calculate the needed size to be a certain % of width, height of a certain win id.
* function to calculate the needed offset to make an image reach the top-left of a certain win id.
* function to setup a clean of an image when a given win id leaves. (Probbs BufLeave.) (should be smart about it, meaning kitty can clean after it self, while others require more aggressive options)

#### Related to mcat itself  
* make mcat have a report flag, that is going to report the upcoming image / video size in the start (also report things like is kitty/iterm/sixel supported, perhaps version too at the same time, all the Important info)


#### Config
* each viewing function should have the same set of settings yet separate. (yet there should be one that does that for all of them at once)
* each function should be able to disable / enable:
    * Image
    * URL
    * Video
    * Documents
    * Certain Extensions
* there should be a setting to specify a style.css for the theme.
* there should be a setting to specify max width / height
* there should be a setting to specify the backend forcefully (if a given detection is not working)

#### Examples
* oil preview
* mini files 
* other viewers if needed
* when opening a buffer

Staging:
### Stage 1:
* create the util functions (they should be the easiest and the underlying foundation) (image cleanup later)
* create the config, also easy and important for other things.

### Stage 2:
* create the put_at function
* create the on_window function
* create the cleanup function (unless mcat already reports by then, just use the same impl for all 3)

### Stage 3:
* implement the view function
* implement the under_cursor function (also requires mcat to report by then.)
* implement the fetch functions. (should be very easy)

### Stage 4:
* make examples

### Stage 5: 
* start building the doc, readme, checkhealth (from mcat report), and overall refining
