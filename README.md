# bha-test-ig

deviations from [CLAUDE.md](CLAUDE.md):

* uses `package.json` instead of global
* run sushi with `npm run sushi`

try it out:

1. clone the repo, enter the directory

```
$ git clone git@github.com:RatioPBC/bha-test-ig.git

$ cd bha-test-ig
```

2. create PERSONAL_ACCESS_TOKEN with `read:packages` permission

3. login to GHCR

```
$ docker login ghcr.io -u <USERNAME>
Password: <PERSONAL_ACCESS_TOKEN>
```

4. pull image

```
$ mise r pull
...
```

5. run publisher

```
$ mise r publisher
...
```

6. view files in `output/`

7. edit files in `input/`; goto step 5

### image building

do this in the fhir-ig-publisher repo:

```toml
[tasks."image:build"]
description = "build fhir-ig-publisher image"
run = "docker build --platform linux/amd64 -t ghcr.io/ratiopbc/fhir-ig-publisher:2.0.17 ."

[tasks."image:login"]
description = "login to GHCR with a GitHub PAT"
run = "docker login ghcr.io -u $GITHUB_USER"

[tasks."image:push"]
description = "push fhir-ig-publisher image"
run = "docker push ghcr.io/ratiopbc/fhir-ig-publisher:2.0.17"
```
