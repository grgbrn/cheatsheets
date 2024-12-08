# create a new module and fill in deps
go mod init something
go mod tidy

# view available upgrades for all direct & indirect deps:
go list -u -m all

# upgrade a single dep to latest version:
go get example.com/package

# ugprade a dep and all it's deps to the latest version:
go get -u example.com/package

# upgrade everything in the project (including indirect):
go get -u -t -d -v ./...
