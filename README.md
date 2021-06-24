# Image Downloader


## Explanations

- I have integrated two ways image downloader from a text file. First one is with most popular standard library `open-uri` and the second one is with `down` gem.
- `downloader.rb` uses `open-uri` and `downloader2.rb` uses `down` gem.
- I prefer the second one, `open-uri` is not very memory efficient, it loads the entire image into memory and then writes to disk.
- I have also attempted to DRY my code where possible.
- This challenge has been built using Test-Driven Development (TDD) with RSpec.
