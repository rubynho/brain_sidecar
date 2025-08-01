## Command Line Tools

### PV

It helps to visualize data transfers by including it in the command pipeline.
[Docs](https://www.ivarch.com/programs/pv.shtml).

### tee

Works just like `>` and `>>`, but can be used with sudo. Useful when writing to a protected file.
```sh
echo 'hello, world' | tee /etc/protected-file.txt
```

Using `-a` flag will append the information instead of overwriting.
```sh
echo 'append hello, world' | tee -a /etc/protected-file.txt
```

### ss

It's an utility used to investigate sockets.

To list all listening UDP sockets:

Options
- u list UDP sockets
- l that are listening
- n numerically, not human-readable
```sh
ss -uln
```

### lsof

Options

- (-i arg) can be used to check which process in bind to some port
```sh
lsof -i :4000
```
