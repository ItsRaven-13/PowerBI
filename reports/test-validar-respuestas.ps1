# Ruta del CSV
# CORRECCIÓN: Se usa una ruta relativa al script usando $PSScriptRoot
$csvPath = Join-Path $PSScriptRoot "Respuestas.csv"

Write-Host "=== VALIDANDO TABLA RESPUESTAS ==="

# 1. Validar existencia del archivo
if (-not (Test-Path $csvPath)) {
    Write-Host "ERROR: No existe el archivo Respuestas.csv en la ruta esperada: $csvPath" -ForegroundColor Red
    exit 1 # Es buena práctica salir con código de error
}

# 2. Cargar datos
$data = Import-Csv $csvPath

if ($data.Count -eq 0) {
    Write-Host "ERROR: Respuestas.csv está vacío" -ForegroundColor Red
    exit 1
}

Write-Host "Archivo cargado correctamente. Filas: $($data.Count)" -ForegroundColor Green

# 3. Columnas esperadas según tu CSV real
$expectedColumns = @(
    "Becado",
    "Correo",
    "Discapacidad",
    "Edad",
    "Genero",
    "Grupo",
    "Marca temporal",
    "Municipio",
    "Num Reprobadas",
    "Promedio",
    "Promedio numerico",
    "Reprobadas Num",
    "Reprobado",
    "Situacion Laboral",
    "Tipo Beca",
    "Tipo Discapacidad",
    "Transporte"
)

# 4. Validar que existan todas las columnas
$actualColumns = $data[0].PSObject.Properties.Name
$validationError = $false

foreach ($col in $expectedColumns) {
    if (-not ($actualColumns -contains $col)) {
        Write-Host "FALTA la columna: $col" -ForegroundColor Red
        $validationError = $true
    }
}

Write-Host ""
if ($validationError) {
    Write-Host "Validación fallida. Faltan columnas." -ForegroundColor Red
    exit 1
} else {
    Write-Host "Validación completada." -ForegroundColor Green
    exit 0 # Salida exitosa
}