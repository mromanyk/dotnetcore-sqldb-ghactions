[CmdletBinding()]
param(
    [Parameter()]
    [string]$configuration,
    [string]$pathApp
)

$solution_file = Join-Path $pathApp "App/DotNetCoreSqlDb.csproj"

dotnet build $solution_file -c $configuration

if ($LASTEXITCODE) { throw "Dotnet failed" }
