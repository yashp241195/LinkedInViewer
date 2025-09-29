```markdown
# Generate `files_array.js`

Use `lister.sh` (Linux/macOS) or `lister.bat` (Windows) to create a JS array of your HTML files for the viewer.

---

## 1. Linux/macOS

1. Place your HTML files in folders alongside `lister.sh`:

```

folder1/file1.html
folder2/fileA.html

````

2. Make the script executable:

```bash
chmod +x lister.sh
````

3. Run the script:

```bash
./lister.sh
```

---

## 2. Windows

1. Place your HTML files in folders alongside `lister.bat`:

```
folder1\file1.html
folder2\fileA.html
```

2. Double-click `lister.bat` **or** run in Command Prompt:

```bat
lister.bat
```

---

## Result

* `files_array.js` will be generated automatically.
* Include it in your HTML viewer:

```html
<script src="files_array.js"></script>
```

```
