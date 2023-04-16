#!/bin/bash

api="https://csclub.uwaterloo.ca/~phthakka/1pt"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36"

function add_url() {
	curl --request POST \
		--url "$api/addURL" \
		--user-agent "$user_agent" \
		--header "accept: application/json"	\
		--header "content-type: application/json" \
		--data '{"url": "'$1'"}'
}
