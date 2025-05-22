import re

with open("IA.md", "r") as f:
    content = f.read()

output = re.sub(r'<!-- speaker_note: \|(.*?)-->', '<span class="notes">Notes :</span> \\g<1>', content, flags=re.DOTALL)

with open("Le-côté-obscur-de-l-IA-avec-notes.md", "w") as f:
    f.write(output)
