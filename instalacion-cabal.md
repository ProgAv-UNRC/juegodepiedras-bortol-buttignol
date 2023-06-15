# Instalación de herramientas

Estos son los pasos requeridos para instalar las herramientas necesarias que nos permitirán poder ejecutar la test suit implementada, y poder verificar que las funciones retornan los resultados correctos.

## Paso 1.1: Chequear instalación de Cabal.

Primero, debemos comprobar si ya hemos instalado la herramienta `Cabal`. Ejecute este comando en su terminal para verificar si está instalado:

``` 
cabal --version
```

Si está instalado, te debe aparecer algo como esto:
```
cabal-install version 3.0.0.0
compiled using version 3.0.1.0 of the Cabal library
```

Si ve este mensaje en su terminal, salte al Paso 2. Si no lo hace, siga leyendo el Paso 1.2.

## Paso 1.2: Instalación de Cabal.

Para instalar cabal, debemos seguir los siguientes pasos:

Para Linux, macOS, FreeBSD o Windows Subsystem 2 para Linux, ejecute esto en una terminal:

```
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
```

Para Windows, ejecute esto en una sesión de PowerShell:
```
Set-ExecutionPolicy Bypass -Scope Process -Force;[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; try { Invoke-Command -ScriptBlock ([ScriptBlock]::Create((Invoke-WebRequest https://www.haskell.org/ghcup/sh/bootstrap-haskell.ps1 -UseBasicParsing))) -ArgumentList $true } catch { Write-Error $_ }
```

También hay un video de [Youtube](https://www.youtube.com/watch?v=bB4fmQiUYPw) que explica la instalación en Windows.

Si tiene algún problema, puede consultar la [Documentación de GHCup](https://www.haskell.org/ghcup/install/) para obtener más información.

## Paso 2.1: Descargar dependencias

Necesitamos descargar las dependencias, para que podamos usar el conjunto de pruebas definido en el archivo `Tests.hs`, ejecute el siguiente comando en su terminal:
```
cabal build
```

## Paso 2.2: Ejecutar tests

Para ejecutar los tests para verificar si las cosas que estamos implementando funcionan correctamente, ejecute el siguiente comando en su terminal:
```
cabal test
```
