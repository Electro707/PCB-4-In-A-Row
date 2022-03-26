mkdir -p "$PWD"/png
for file in $PWD/*.svg
do
  filename=$(basename "$file")
  inkscape -d 300 -C -o "$PWD/png/${filename%.svg}.png" "$file" 
done
