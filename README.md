[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/hFtQazP1)
Departamento de Computación  
FCEFQyN, Universidad Nacional de Río Cuarto  
Asignatura: Programación Avanzada  
Primer Cuatrimestre de 2023  

# Trabajo Práctico: Juego de las Piedras

# Este trabajo práctico debe ser resuelto en grupos de máximo tres personas. El proyecto podrá ser entregado cualquier fecha anterior al 15 de Junio a las 23.59hs a través de GitHub.

El trabajo práctico se trata de hacer un algoritmo para jugar el juego de las
piedras. Este juego es muy sencillo y consiste de dos jugadores (Humano vs
Computadora). El juego empieza con N piedras (con N>0) y cada jugador puede
tomar 1, 3 o 4 piedras en turnos. Cuando un jugador se queda sin piedras pierde, 
y por lo tanto gana el otro jugador. 

La idea es hacer un programa en Haskell para que la Computadora juegue de la mejor 
forma posible. En el juego empieza a jugar el humano, y luego la computadora, y se repite 
por turnos. Se puede notar que hay algunas configuraciones iniciales en que la
computadora no tiene jugadas ganadoras, es decir, el humano le va a ganar si
juega bien. De la misma forma, hay configuraciones en la cuales el humano no
tiene jugadas ganadoras.

El código en el repositorio tiene varias funciones implementadas y comentadas.
El trabajo práctico consiste en implementar las funciones que aparecen no
implementadas en el archivo TP.hs. 

El código provee una función:

  comenzarJuego :: Int -> IO()

  la cual dada una cantidad de piedras iniciales comienza un juego.
  
  Además de entregar la solución completa del juego, deberán adjuntar los casos de test realizados. 

---

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
