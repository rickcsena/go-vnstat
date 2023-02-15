# go-vnstat

Web-based network usage reporting.

## Requirements

Operating System: Linux

- vnstat (each network interfaces must have their databases created by vnstat)
- go
- glide

Default port: 8989


### Dependency Installation

```bash
$ glide install
$ make install-dependences
```

### Building

```bash
$ make
```

To run the build.
```bash
$ cd Project/bin && ./go-vnstat
```
Then open your browser, and go to: [http://localhost:8989](http://localhost:8989)

# To-do
- [X] Makefile
- [ ] Use random unused port