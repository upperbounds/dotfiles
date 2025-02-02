import os
import readline
import atexit

history_file = os.path.expanduser('~/.python_history')
if not os.path.exists(history_file):
    os.mknod(history_file)

# readline.read_history_file(history_file)

# atexit.register(readline.write_history_file, history_file)
