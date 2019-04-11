# docker-saxon-he

A Docker image containing Saxon-HE and the Apache resolver.

The [source code for Saxon-HE/C](https://www.saxonica.com/saxon-c/index.xml) is licensed under the Mozilla Public License Version 2.0. 

The Apache Resolver is licensed under the [Apache License Version 2.0](http://www.apache.org/licenses/LICENSE-2.0).

## Usage example

```bash
docker run --rm --mount type=bind,source="$(pwd)",target=/data hubdock/saxon-he net.sf.saxon.Transform \
    -s:"/data/input.xml" \
    -xsl:"/data/xsl/transform.xsl" \
    -o:"/data/output.xml" \
    -dtd:on \
    -l:on \
    -catalog:"/data/catalog.xml"
```
