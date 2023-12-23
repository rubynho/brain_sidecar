## Linux processes

#### What is a process

A Linux process is basically a program running on the system like any shell command, application, etc.

The process has an address space (its address on RAM) and a Kernel data structure (what ports it can use; what is its parent process; the priority it's running at, etc...)

Each process has an ID, called process ID or PID. It auto-increments every time a process is spawned. The first process to be created is the one with PID 1, the father of all other processes.

In virtual environments the first process ID will likely not be one, because the host machine already has the process with PID 1.

The UID (User ID) of a process is which user owns it.
The EUID (Effective User ID) is a way of giving the process permissions that are different from the user how spawned that process.

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
