set -x
if [ -z "$1" ]; then
	echo $0 tier-name
	exit 0
fi
tier="$1"
now="$(date +"%d-%m-%Y-%H-%M-%s")"

run-ci -m "$tier"  --ocsci-conf run-config.yaml --cluster-path /root/ocp4-workdir/  --html report-${tier}-$now.html --self-contained-html | tee workload-${tier}-$now.log

# run single test case
#run-run /path/tests/e2e/.... or relative path, keep remaining options

