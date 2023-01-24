if [ ! -z "${{ inputs.custom }}" ]; then
    if [[ ! "${{ inputs.custom }}" =~ ^v.* ]]; then
        echo "[err] custom tag name must be v*."
        exit 1
    fi
    next_version="${{ inputs.custom }}"
else
    prev_version="$(git describe --tags --abbrev=0)"
    next_version="v$(npx semver --increment '${{ inputs.semver }}' '${prev_version}')"
fi