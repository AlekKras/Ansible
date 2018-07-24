cd .. && tee run.sh << EOF
set -eo pipefail
case $1 in
  start)
    yarn start | cat
    ;;
  build)
    yarn build
    ;;
  test)
    yarn test $@
    ;;
  *) 
    exec "$@"
    ;;
esac
EOF
