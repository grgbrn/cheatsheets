# To pretty print the json:
jq "." < filename.json

# To access the value at key "foo":
jq '.foo'

# To access first list item:
jq '.[0]'

# to slice and dice:
jq '.[2:4]'
jq '.[:3]'
jq '.[-2:]'

# extract specific fields from an array
jq 'map({id: .id, created_at:.created_at})'

# extract specific fields and output CSV
jq -r ' map([.dateTime, .value.value, .value.error] | join(", ")) | join("\n")' $JSONFILE

# filter fields by key name
jq 'with_entries(select(.key|startswith("auth")))'
