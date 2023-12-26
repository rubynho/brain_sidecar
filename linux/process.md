## Linux processes

#### What is a process

A Linux process is basically a program running on the system like any shell command, application, etc.

The process has an address space (its address on RAM) and a Kernel data structure (what ports it can use; what is its parent process; the priority it's running at, etc...)

Each process has an ID, called process ID or PID. It auto-increments every time a process is spawned. The first process to be created is the one with PID 1, the father of all other processes.

In virtual environments the first process ID will likely not be one, because the host machine already has the process with PID 1.

The UID (User ID) of a process is which user owns it.
The EUID (Effective User ID) is a way of giving the process permissions that are different from the user how spawned that process.
The PPID (Parent Process ID) is the PID of the process' parent.

All processes come from other processes.

Processes are how work is get done in the system.

#### Process communication

Processes communicate through signals, that is the way kernel and processes send information to each other. The most commonly signal sent to a process is SIGTERM of SIGKILL, but the are a list of signals that can be used.

The `kill` command can be used to send signals to processes, `kill -l` can be typed to see all signals.

Send a SIGTERM to process of pid 5555.
```bash
kill 15 5555
```

SIGTERM if the default signal if it's omitted from the command.

#### Process attributes

There are four states a process can be in. That is:

1. Runnable - eligible to be scheduled by the Kernel
2. Sleeping - waiting for something (e.g. a signal from other process)
3. Zombie - has finished and is waiting for a signal (probably an exit signal)
4. Stopped - stopped by a signal sent by other process or user, waiting to receive a continue signal

Niceness is an attribute that determines how nice the process is being to other processes, how respectful it's with its use of resources. It's another way of checking if the process priority is high or low (the higher the number the low the priority). The range is between -20 and 19.

#### Process monitoring

The `top` and `htop` command line tools can be used to monitor processes.

`strace` can be used to trace system calls called by a process and signals which are received by a process.

#### Process file system

Kernel has a virtual filesystem mounted at `/proc` where it posts information about active processes as you ask for them (not stored, but updated on the fly). The information on `/proc` are not designed to be human readable, but for programs to parse and use or display. Tools like `ps` and `htop` are great examples.
