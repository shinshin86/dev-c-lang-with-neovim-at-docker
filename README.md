# C lang development with neovim

## Build image and Run docker

```bash
docker build -t dev-c-lang-with-vim .
docker run -it --rm -v $(pwd)/work:/tmp/share --name dev-c dev-c-lang-with-vim /bin/bash
```



## Getting started at develop of C language

Docker run after Change directory to work dir

```bash
cd $HOME/work
nv test.c
# or copy file
cp -p /tmp/share/test.c .
```

Writed code...so, hello world sampel

```c
#include <stdio.h>
int main(int argc, char **argv) {
        printf("hello world\n");
}
```

Compile and execute

```bash
clang test.c
./a.out
# ---> hello world
```

or

Docker run after...

```bash
# after : docker run -it --rm -v $(pwd)/work:/tmp/share --name dev-c dev-c-lang-with-vim /bin/bash
cp -p /tmp/share/test.c $HOME/work/
cd $HOME/work/
clang test.c
./a.out
# -----> hello world
```