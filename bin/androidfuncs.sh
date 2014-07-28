
export LD_LIBRARY_PATH=~/lib/

port=4242

function getpid()
{
    echo $(adb shell ps | grep $1 | awk '{print $2}')
}

function aygdb()
{
    yapaspid=$(getpid yapas)

    adb root
    adb forward tcp:$port tcp:$port
    adb shell kill $(getpid gdbserver)
    adb shell gdbserver :$port --attach $yapaspid &
    gdbclient app_process :$port
}

function yapaskill()
{
    adb shell kill $(getpid yapas)
}
