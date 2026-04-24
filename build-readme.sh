#!/usr/bin/env bash
# Genera README.md concatenando todos los archivos del informe en orden
# y reescribiendo las rutas de imágenes para que funcionen desde la raíz.
# Uso: ./build-readme.sh

set -euo pipefail

cd "$(dirname "$0")"

FRONT_MATTER=(
  "report/front-matter/01-title-page.md"
  "report/front-matter/02-version-control-log.md"
  "report/front-matter/03-collaboration-insights.md"
  "report/front-matter/04-table-of-contents.md"
  "report/front-matter/05-student-outcomes.md"
)

CHAPTERS=(
  "report/10-chapter-01.md"
  "report/11-chapter-02.md"
  "report/12-chapter-03.md"
  "report/13-chapter-04.md"
  "report/14-chapter-05.md"
  "report/15-chapter-06.md"
  "report/99-bibliography.md"
)

# Normaliza rutas de imágenes al escribir el README:
#  - ../assets/...        -> report/assets/...   (desde front-matter/)
#  - /report/assets/...   -> report/assets/...   (quita / inicial absoluto)
#  - (src|href)="assets/  -> report/assets/      (desde report/)
#  - ](assets/...         -> report/assets/...   (imágenes markdown)
rewrite_paths() {
  sed -E \
    -e 's#(src|href)="\.\./assets/#\1="report/assets/#g' \
    -e 's#(src|href)="/report/assets/#\1="report/assets/#g' \
    -e 's#(src|href)="assets/#\1="report/assets/#g' \
    -e 's#\]\(/report/assets/#](report/assets/#g' \
    -e 's#\]\(assets/#](report/assets/#g'
}

: > README.md
for f in "${FRONT_MATTER[@]}" "${CHAPTERS[@]}"; do
  rewrite_paths < "$f" >> README.md
  printf '\n\n' >> README.md
done

echo "README.md generado ($(wc -l < README.md) líneas)"
