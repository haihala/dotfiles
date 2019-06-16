SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
    DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
    SOURCE="$(readlink "$SOURCE")"
[[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
CONFIG_ROOT="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
CONFIG_ROOT="$(dirname "$CONFIG_ROOT")"
METACONFIG=$CONFIG_ROOT/meta_config
DEFAULT_METACONFIG=$CONFIG_ROOT/default_meta_config

load_metaconfig () {
    if [ -z "$1" ]; then
		echo "load_metaconfig needs an argument"
        exit 1
    fi
    if [ -f $DEFAULT_METACONFIG/$1.conf.sh ]; then
        source $DEFAULT_METACONFIG/$1.conf.sh
    fi
    if [ -f $METACONFIG/$1.conf.sh ]; then
        source $METACONFIG/$1.conf.sh
    fi
}
