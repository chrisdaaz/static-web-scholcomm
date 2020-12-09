#!/bin/bash

sed ':again;$!N;$!b again; s/{{[^}]*}}//g' content/teaching-resources/bibliography.md > bibliography.md
sed -i "/Download PDF/d" bibliography.md
sed -i "/Download DOCX/d" bibliography.md
pandoc bibliography.md --include-after-body=copyright.latex -o static/bibliography.pdf
pandoc bibliography.md -o static/bibliography.docx
rm bibliography.md

sed ':again;$!N;$!b again; s/{{[^}]*}}//g' content/teaching-resources/lesson-plan.md > lesson-plan.md
sed  -i "/\*\*Topics:\*\*/d" lesson-plan.md
pandoc lesson-plan.md --include-after-body=copyright.latex -o static/lesson-plan.pdf
pandoc lesson-plan.md -o static/lesson-plan.docx
rm lesson-plan.md