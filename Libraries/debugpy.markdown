### debugpy
*This is a Debugger for Pythong in VS Code* https://github.com/microsoft/debugpy

---

launch.json needs to "connect": {"host": "localhost","port": 5678}

import debugpy
debugpy.listen(("localhost", 5678))
