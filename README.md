# C lang development with neovim

## Getting started

### Build image and Run docker

```bash
git clone https://github.com/shinshin86/dev-c-lang-with-neovim-at-docker.git
cd dev-c-lang-with-neovim-at-docker
docker build -t dev-c-lang-with-vim .
docker run -it --rm -v $(pwd)/work:/tmp/share --name dev-c dev-c-lang-with-vim /bin/bash
```

### develop of C language(in docker container)

```bash
# in docker container
cp -p /tmp/share/test.c $HOME/work/
cd $HOME/work
clang test.c # Also can use gcc => gcc test.c
./a.out
# ---> hello world
```



### Start neovim

Set neovim alias "nv"

```bash
nv test.c # => nvim test.c
```