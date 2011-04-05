#!/usr/bin/env bash

# ϟ ☠ ⁕ ⁙ ⁘ ⁜  ↂ ⇪ ⊕ ⊗ ⊙ ⊡ ⌘ ⌖ ⌦ ⌫ ⌽ ⎈ ⎇ ⎋ ⎚ ⏏ ⏎ ◈ ◉ ☀ ☁ ☂ ☃ ★ ☆ ☕ ☢ ☣ ☭ ☮ ☯ ♨ ♠ ♿ ✈ ✎ ❉ ⟁ 
function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo " ϟ"
}

function __git_dirty {
  git diff --quiet HEAD &>/dev/null 
  [ $? == 1 ] && echo " ➠"
}

function __git_at {
  __git_ps1 " @"
}

function __git_branch {
  __git_ps1 " %s"
}