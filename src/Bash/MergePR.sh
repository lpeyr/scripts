merge() {
    pr_ids=$(gh pr list --state open --json number --jq '.[] | .number')
    for pr_id in $pr_ids; do
        gh pr merge "$pr_id" --merge -d
    done
}