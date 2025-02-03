# `massive` Package Development Notes

Here are some tips for developing `massive`.

## Git etiquette

* Generally speaking you should ALWAYS work on a branch.
* When you want your work to make it back into the main branch, you should push it to the equivalent branch on the repo and make a Pull Request (PR).
* PRs should look something like this PR [rTPC#62](https://github.com/padpadpadpad/rTPC/pull/62), where you outline the broad strokes of what merging the PR will change.
* It's best to work on a new branch for each contiguous set of changes you make.
  * So if you rearchitect a set of functions to be more intuitive to use then that might go on one branch from which a PR is created.
* You may get requests to change or fix elements of the PR, try to do so fairly quickly so that you don't risk merge conflicts later.

## General dev notes

* I strongly recommend developing packages in RStudio. It has some excellent tooling to make your life 100x easier.
* `Ctrl+Shift+L` reloads the dev package in RStudio.
* Document files AS YOU WRITE THEM, don't commit functions and files that are not documented unless they are purely internal.
* When adding function dependencies (for a function that you use all the time), use the `usethis::use_import_from()` command to add it to all the relevant places.
  * This will allow you to use something like `pivot_longer()` rather than `dplyr::pivot_longer()`
  
``` r
usethis::use_import_from("package", "function")
```

* Try to do all messaging to the user using the functions in the `cli` package.
* Try not to add too many dependencies to the package!
* Use the base R pipe `|>` rather than the magrittr pipe `%>%`
* Write tests for your functions!!! Don't leave this til months later.
  * The `usethis::use_test()` function is your friend here.
* Lint when adding new functions to the package using `Ctrl+Alt+Shift+L` (you may have to configure this shortcut yourself by going to `Tools>Modify keyboard shortcuts>Lint current package`).
  * Address any linting issues as soon as you can. If you _really_ want to suppress one, there are ways of doing this, but its best to fix.
* When writing documentation, remember to run `devtools::document()` function to regenerate documentation files.
* Before final submission, if you are the primary package maintainer, make sure to bump the version using `usethis::use_version()` if required.
  * When you do this, make sure to add the relevant changes to the `NEWS.md` file.
  * After this make sure to run `devtools::build_readme()` to incorporate the new version number and patch notes into the README.
  * _Do not do this unless you are the one in charge of main_
* Before finally committing and pushing, make sure to run a build check (`Ctrl+Shift+E`).
* To preview the documentation website
  * Unload massive with `detach("package:massive", unload=TRUE)`
  ``` r
  detach("package:massive", unload=TRUE)
  ```
  * Rebuild the documentation site preview with `pkgdown::build_site()`
  * Alternatively if you are iterating, it is quicker to use the following command, though remember to load the package again when done.
  ``` r
  pkgdown::build_site(lazy=TRUE, preview = FALSE)
  ```
  * You can view a nice version of these notes by building a local version of the package documentation using `pkgdown::build_site()` and then changing `.../.../index.html` to `.../.../pkg_dev_notes.html`
  * If you have any questions or clarifications just ask Francis!

## Checklist
- Lint all `Ctrl+Alt+Shift+L`
- Document funcs `devtools::document()`
- Add a brief log of any changes to `NEWS.md` (if there is a section for the next release)
- Build README `devtools::build_readme()`
- Build check `Ctrl+Shift+E`
- Commit
- Push
- Create PR
- Make any changes requested and commit and push them to the same branch (no need to remake the PR).
