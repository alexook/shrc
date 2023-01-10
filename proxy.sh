# >>> proxy configure >>>
function proxy(){
    if [ $# -eq 0 ]
    then
		set_proxy
		show_proxy
		echo "Proxy set"
		return
    fi

	if [[ $1 = "0" ]]
	then
		unset_proxy	
		show_proxy
		echo "Proxy reset."
	elif [[ $1 = "1" ]]
	then
		show_proxy
	else
		echo "No command line arguments accepted!"
	fi
}

function set_proxy(){
	export ALL_PROXY="socks5://127.0.0.1:7890"
	export all_proxy="socks5://127.0.0.1:7890"
}


function unset_proxy(){
        unset http_proxy
        unset https_proxy
        unset all_proxy
		unset HTTP_PROXY
		unset HTTPS_PROXY
		unset ALL_PROXY
}

function show_proxy(){
	echo "$(env | grep -i proxy)"
}


# <<< proxy configure <<<
