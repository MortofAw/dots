from i3ipc import Connection

i3 = Connection()
workspaces = i3.get_workspaces()
focused = i3.get_tree().find_focused().workspace().num

out = ""

if 1 == focused:
    out += "%{F-} " + "●" + " %{F-}"
else:
    exists = False
    for ws in workspaces:
        if ws.num == 1:
            exists = True
            out += " " + "" + " "
            break
    if not exists:
        out += " " + "" + " "

if 2 == focused:
    out += "%{F-} " + "●" + " %{F-}"
else:
    exists = False
    for ws in workspaces:
        if ws.num == 2:
            exists = True
            out += " " + "" + " "
            break
    if not exists:
        out += " " + "" + " "

if 3 == focused:
    out += "%{F-} " + "●" + " %{F-}"
else:
    exists = False
    for ws in workspaces:
        if ws.num == 3:
            exists = True
            out += " " + "" + " "
            break
    if not exists:
        out += " " + "" + " "

if 4 == focused:
    out += "%{F-} " + "●" + " %{F-}"
else:
    exists = False
    for ws in workspaces:
        if ws.num == 4:
            exists = True
            out += " " + "" + " "
            break
    if not exists:
        out += " " + "" + " "

if 5 == focused:
    out += "%{F-} " + "●" + " %{F-}"
else:
    exists = False
    for ws in workspaces:
        if ws.num == 5:
            exists = True
            out += " " + "" + " "
            break
    if not exists:
        out += " " + "" + " "
print(out)
