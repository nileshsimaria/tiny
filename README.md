# tiny

A tiny docker container (image size 1.21MB) running one go program.

<pre>

$ git clone https://github.com/nileshsimaria/tiny.git
Cloning into 'tiny'...
remote: Counting objects: 9, done.
remote: Compressing objects: 100% (8/8), done.
remote: Total 9 (delta 0), reused 6 (delta 0), pack-reused 0
Unpacking objects: 100% (9/9), done.

$ make
GOOS=linux go build --ldflags="-s -w" && tar c tiny | docker import - -c 'ENTRYPOINT ["/tiny"]' tiny:latest
sha256:9f263704445666219aeefbae06e041a2b2d3acf1e205484869d14f9fa0973762
docker run --rm tiny
Hello, Go!

$ docker images
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
tiny                latest              9f2637044456        7 seconds ago       1.21MB

</pre>  
