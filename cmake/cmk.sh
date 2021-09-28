cmd=$1

build_dir="build"

clean="rm -rf $build_dir"
build="(mkdir -p $build_dir && cd $build_dir && cmake -v .. && make)"
runtest="$build_dir/tests/runtests"

if [[ $cmd == "c" ]]
then
    eval $clean
elif [[ $cmd == "b" ]]
then
    eval $build
elif [[ $cmd == "t" ]]
then
    eval $runtest
elif [[ $cmd == "bt" ]]
then
    eval "$build && $runtest"
else
    echo "cmk: unknown command shortcut"
fi
