#!/bin/bash
# Copy pages and fix import paths

for lang in es fr it ru; do
  for page in index about consultation services contact; do
    # Copy the file
    cp "src/pages/$page.astro" "src/pages/$lang/$page.astro"
    
    # Fix import paths (add one more ../)
    sed -i '' 's|from "../layouts/|from "../../layouts/|g' "src/pages/$lang/$page.astro"
    sed -i '' 's|from "../i18n/|from "../../i18n/|g' "src/pages/$lang/$page.astro"
  done
done

echo "✅ Pages copied and import paths fixed!"
