#!/bin/bash

function _alias_if_new() {
	_cmd_exists "$1" || alias "$1"="$2"
}

_alias_if_new assume 'assume-role'

_alias_if_new make 'direnv exec . make'

_alias_if_new vault 'aws-vault'

###### END OF ALIASES #########
unset _alias_if_new

