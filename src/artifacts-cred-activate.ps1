Write-Host "Running artifacts-cred-provider-conda..."
$token = conda config --show --json | python (Join-Path $PSScriptRoot 'artifacts-cred.py')
$env:ARTIFACTS_CONDA_TOKEN = $token
Write-Host "Set token to ARTIFACTS_CONDA_TOKEN environment variable."