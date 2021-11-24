[CmdletBinding()]
param(
    [Parameter()]
    [string]$configuration,
    [string]$pathApp
)
$solution_file = Join-Path $pathApp "webapp/DotNetCoreSqlDb.csproj"
dotnet build $solution_file -c $configuration
if ($LASTEXITCODE) { throw "Dotnet failed" }
