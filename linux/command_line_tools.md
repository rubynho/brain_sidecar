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
