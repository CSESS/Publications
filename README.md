# 📚 Publications
Welcome to the publication repository maintained by The Computer Science and Engineering Students' Society, The Hong Kong University of Science and Technology Students' Union, Session 2023–2024 (CSESS, HKUSTSU). Developed with [usertam/context-minimals].

## 📜 · Preface
This repository contains a collection of internal publications, including reports, guidelines, procedures, and policies, that are created and used by the Executive Committee, as well as Members of the Society. All documentations are licensed under [CC ND 4.0], unless otherwise stated. Please note that access to the publications in this repository is restricted to Members of the Society and should not be shared or distributed outside of the Society. You can access the public publications on our website [csess.su.ust.hk].

To ensure the accuracy and relevance of the publications, corrections to documentations should be sent as soon as possible, under the signature of a member of the delegation concerned, to the Internal Secretary of the Executive Committee, and incorporated in a copy of the record. Corrected records will be reissued electronically.

Our goal is to provide a comprehensive and up-to-date resource for our Members and successive Executive Committee cabinets to help them succeed in their roles and contribute to the Society's mission. If you have any questions or suggestions, please feel free to contact us at [su_csess@ust.hk].

## 📅 · Timeline
### 🌄 · Spring 2023
| Date  | Preview                                                                                             | Jump to Code                                |
| ----- | --------------------------------------------------------------------------------------------------- | ------------------------------------------- |
| 14/05 | [CinderS: Reimbursement for CSE Farewell Dinner 2023][2023/cinders/reimburse-farewell-dinner-dist]  | [`2023/cinders/reimburse-farewell-dinner`]  |
| 12/03 | [CinderS: Year Plan][2023/cinders/year-plan-dist]                                                   | [`2023/cinders/year-plan`]                  |
| 23/01 | [CinderS: Records of Online Meetings][2023/cinders/meeting-records-2-dist]                          | [`2023/cinders/meeting-records-2`]          |
| 18/01 | [CinderS: Records of the First Closed Meeting][2022/cinders/meeting-records-1-dist]                 | [`2022/cinders/meeting-records-1`]          |

## 🧱 · Local Build
- [Install nix].
- Check out the [Setup with binary cache] section, at [usertam/context-minimals].
- Change to branch, then do `nix build`.

## 🔩 · Develop
This checks out all branches as worktrees locally.
```sh
git clone git@github.com:csess/publications.git && cd publications
git for-each-ref --format="%(refname:lstrip=3)" refs/remotes/origin | \
  grep -Ev 'HEAD|master|dist' | xargs -i git worktree add {} {}
```
This forks and checks out a new branch from the template branch.
```sh
git branch -c templates/context 2023/<new-branch>
git worktree add 2023/<new-directory> 2023/<new-branch> # at repo root
```

<!---
References below are auto-generated, using
  $ cat <<'EOF' | cut -d\| -f4 | cut -d\` -f2 | sort \
      | xargs -i printf '[`{}`]: /../../tree/{}\n[{}-dist]: /../../blob/dist/{}/main.pdf\n'
  > | ... | ... | ... |
  > EOF
-->

[usertam/context-minimals]: https://github.com/usertam/context-minimals/
[CC ND 4.0]: https://creativecommons.org/licenses/by-nd/4.0/
[csess.su.ust.hk]: https://csess.su.ust.hk/
[su_csess@ust.hk]: mailto:su_csess@ust.hk
[Install nix]: https://nixos.org/download.html
[Setup with binary cache]: https://github.com/usertam/context-minimals/tree/master#setup-with-binary-cache

[`2022/cinders/meeting-records-1`]: /../../tree/2022/cinders/meeting-records-1
[2022/cinders/meeting-records-1-dist]: /../../blob/dist/2022/cinders/meeting-records-1/main.pdf
[`2023/cinders/meeting-records-2`]: /../../tree/2023/cinders/meeting-records-2
[2023/cinders/meeting-records-2-dist]: /../../blob/dist/2023/cinders/meeting-records-2/main.pdf
[`2023/cinders/year-plan`]: /../../tree/2023/cinders/year-plan
[2023/cinders/year-plan-dist]: /../../blob/dist/2023/cinders/year-plan/main.pdf
[`2023/cinders/reimburse-farewell-dinner`]: /../../tree/2023/cinders/reimburse-farewell-dinner
[2023/cinders/reimburse-farewell-dinner-dist]: /../../blob/dist/2023/cinders/reimburse-farewell-dinner/main.pdf
