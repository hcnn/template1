# template1

### DELETE THIS LATER 
Download template1 and rename it

```
git clone git@github.com:hcnn/template1.git
cd template1
bash rename.sh "mycoolnewclibpkg" "Licensor Name"
```

The git repo is reinitialized without an remote url. 
Therefore

```
git remote add origin git@github.com:username/mycoolnewclibpkg.git
```

### Installation
```
clib install hcnn/template1
```

Or add to your `package.json` and run `clib install`

```
{ ...
    "dependencies": {
        "hcnn/template1": "0.1.0"
        ...
```

### Test and Demo
Download, compile, and run [test.c](https://github.com/hcnn/template1/blob/master/test.c) and [demo.c](https://github.com/hcnn/template1/blob/master/demo.c)

```
git clone git@github.com:hcnn/template1.git
cd template1
make deps
make validate
make showcase
```
