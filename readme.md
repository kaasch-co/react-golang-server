# Home rolled react golang html server stack template
This is my first public repo, and it is mostly here for documenting and assisting in my learning of different technologies. Expect a lot of shit code and unconventional things :)

---
### For development:

**Prerequisites & working versions:**
*   Golang - version > 1.23.1
*   Node   - version > 20.17.0
*   npm    - version > 10.8.3

#### Setup environment:
1.  Clone repo
2.  run `npm i` in ./client
3.  run `go get .` or `go install` in ./server

**Should now be ready.**
Use `npm run dev` in ./client to run frontend dev server with auto reload on 127.0.0.1:9000
Use `npm run build` in ./client to build the frontend into ./client/bundle
Use `go run .` in ./server to compile and run the go server on 127.0.0.1:5001
Use `go build .` in ./server to build an executable binary
Use `source build.sh` in ./ to build.
- This will first create the webpack bundle, then move the bundle files to the server resource directory, and then it builds the go application, producing server.bin
- Alternatively use `source build-frontend.sh` to build only frontend.
  
---
### More coming...
