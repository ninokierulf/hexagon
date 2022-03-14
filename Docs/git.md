
# Git

appendix
/əˈpɛndɪks/
noun: appendix; plural noun: appendices; plural noun: appendixes
supplementary material usually attached at the end of a piece of writing


## Branching

[git-flow](https://nvie.com/posts/a-successful-git-branching-model/)

Additional rules.
- Always rebase before merging. This is to have a concise and linear git history

## Commitizen

Commit command instead of `git commit -S`
`cz commit -s`

Install
`brew install commitizen`

## Git commit template

Template can be found and edited in [Docs](Docs/zFiles/GIT_COMMIT_TEMPLATE.txt)
`git config commit.template <path-to-commit-template>`
eg: `git config commit.template Docs/zFiles/GIT_COMMIT_TEMPLATE.txt`


## Conventional commits

[org](https://www.conventionalcommits.org/)

```
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```

### Types

#### Basic  
- `fix:` (correlates with PATCH in Semantic Versioning)
- `feat:` 
- `chore:`

#### Others
- `build:`
- `revert:`
- `ci:`
- `docs:`
- `style:`
- `refactor:`
- `reformat:`
- `perf:`
- `test:`


### Breaking Change

correlates with MAJOR in Semantic Versioning

adding `!` after <type> or [scope] indicates BREAKING CHANGE
eg: `fix[user]!: Changed signature of getUsers()`

no scope
```
feat!: send an email to the customer when a product is shipped
```

with scope
```
feat(api)!: send an email to the customer when a product is shipped
```

a commit that has a footer `BREAKING CHANGE:`

```
feat: allow provided config object to extend other configs

BREAKING CHANGE: `extends` key in config file is now used for extending other config files
```

### Why use conventional commits

- Automatically generating CHANGELOGs.
- Automatically determining a semantic version bump (based on the types of commits landed).
- Communicating the nature of changes to teammates, the public, and other stakeholders.
- Triggering build and publish processes.
- Making it easier for people to contribute to your projects, by allowing them to explore a more structured commit history.

## Commit Message

### Verbs

- Add: Create a capability e.g. feature, test, dependency.
- Drop: Delete a capability e.g. feature, test, dependency.
- Fix: Fix an issue e.g. bug, typo, accident, misstatement.
- Bump: Increase the version of something e.g. a dependency.
- Make: Change the build process, or tools, or infrastructure.
- Start: Begin doing something; e.g. enable a toggle, feature flag, etc.
- Stop: End doing something; e.g. disable a toggle, feature flag, etc.
- Optimize: A change that MUST be just about performance, e.g. speed up code.
- Document: A change that MUST be only in the documentation, e.g. help files.
- Refactor: A change that MUST be just refactoring.
- Reformat: A change that MUST be just formatting, e.g. change spaces.
- Rearrange: A change that MUST be just arranging, e.g. change layout.
- Redraw: A change that MUST be just visual, e.g. change a graphic, image, icon, etc.
- Reword: A change that MUST be just textual, e.g. change a comment, label, doc, etc.

### Verbs pt2
- Rework:
- Polish: 
- Update: 

### References

- [How to write a Git Commit Message] (https://chris.beams.io/posts/git-commit/)
- [@lisawolderiksen Git Commit Template](https://gist.github.com/lisawolderiksen/a7b99d94c92c6671181611be1641c733)
- [@joelparkerhenderson's Git Commit Message ](https://github.com/joelparkerhenderson/git-commit-message)
- [@joelparkerhenderson's Git Commit Template ](https://github.com/joelparkerhenderson/git-commit-template)


## Signing commits


[GPG] List secret keys 
`gpg --list-secret-keys --keyid-format=long`

```
/Users/<username>/.gnupg/pubring.kbx
--------------------------------------
sec   rsa4096/xxxxxxxxxxxxxxxx 2022-02-14 [SC]
              ^^^^^^^^^^^^^^^^ signing id
```


`echo "test" | gpg --clearsign`
