# edp-2023-recursado-tp

## generador

```
$ cd 01-generador/
$ docker build ...docker build -t gener .

$ docker run ... docker run -it -v $(pwd)/output_gen/:/root/output_gen/ gener

```

## usuario

```
$ cd 02-usuario/
$ docker build ... docker build -t edp .
$ docker run ... docker run -it -v $(pwd)/../01-generador/ouput_gen/:/root/input_gen/ edp
```
# esta anda docker run -it -v $(pwd)/../01-generador/output_gen/:/root/input_gen usu
