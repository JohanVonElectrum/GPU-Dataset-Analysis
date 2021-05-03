### Detalles previos

- Este dataset ha sido extraído de [Kaggle](https://www.kaggle.com/iliassekkaf/computerparts "Kaggle").
- El análisis de los datos se ha realizado con [R](https://en.wikipedia.org/wiki/R_programming_language "R"), en [RStudio](https://www.rstudio.com/ "RStudio").

# GPU Dataset Analysis

![](https://img.shields.io/github/issues/JohanVonElectrum/GPU-Dataset-Analysis) ![](https://img.shields.io/github/forks/JohanVonElectrum/GPU-Dataset-Analysis) ![](https://img.shields.io/github/stars/JohanVonElectrum/GPU-Dataset-Analysis) ![](https://img.shields.io/github/license/JohanVonElectrum/GPU-Dataset-Analysis)


**Table of Contents**

[TOCM]

[TOC]

## Resumen

## Información relevante

- El dataset consta de 34 variables con 3406 observaciones. Se puede encontrar en [Kaggle](https://www.kaggle.com/iliassekkaf/computerparts "Kaggle").
- Este estudio se hace con el fin de encontrar patrones y tendencias en los datos sobre las GPUs del dataset.
- La muestra en cada sección del análisis es diferente, así que se especificarán sus características y como se ha seleccionado en los casos que no usen la totalidad de los datos.
- Existen variables redundantes en el [dataset](https://www.kaggle.com/iliassekkaf/computerparts "Kaggle"), como el par ["Dedicated", "Integrated"].

### Breve descripción sobre las variables

| Variable               | Descripción                     | Tipo      | Unidad        | NA %     | Relación                |
| ---------------------- | ------------------------------- | --------- |:-------------:| --------:| ----------------------- |
| Architecture           | Nombre de la arquitectura       | Categoría |               |   1.82 % |                         |
| Best_Resolution        | Resolución óptima               | Categoría | Píxel         |  18.85 % |                         |
| Boost_Clock            | Frecuencia en turbo             | Número    | Hz            |  57.55 % |                         |
| Core_Speed             | Frecuencia del reloj            | Número    | Hz            |  26.63 % |                         |
| DVI_Connection         | Conexiones DVI                  | Número    |               |  22.02 % |                         |
| Dedicated              | Tarjeta dedicada                | Booleano  |               |   0.41 % | Inversa de "Integrated" |
| Direct_X               | Versión de DirectX              | SEMVER*   |               |   0.18 % |                         |
| DisplayPort_Connection | Conexiones DisplayPort          | Número    |               |  74.84 % |                         |
| HDMI_Connection        | Conexiones HDMI                 | Número    |               |  22.4  % |                         |
| Integrated             | Tarjeta integrada               | Booleano  |               |   0.41 % | Inversa de "Dedicated"  |
| L2_Cache               | Tamaño del L2 Cache             | Número    | Byte          |   0    % |                         |
| Manufacturer           | Fabricante                      | Categoría |               |   0    % |                         |
| Max_Power              | Potencia requerida              | Número    | Watts         |  18.35 % |                         |
| Memory                 | Cantidad de VRAM                | Número    | Byte          |  12.33 % |                         |
| Memory_Bandwidth       | Velocidad de i/o en VRAM        | Número    | Byte/segundo  |   3.55 % |                         |
| Memory_Bus             | Tamaño del BUS                  | Número    | Bit           |   1.82 % |                         |
| Memory_Speed           | Frecuencia de la VRAM           | Número    | Hz            |   3.08 % |                         |
| Memory_Type            | Tipo de VRAM                    | Categoría |               |   1.64 % |                         |
| Name                   | Nombre de la GPU                | Texto     |               |   0    % |                         |
| Notebook_GPU           | GPU para Notebook               | Booleano  |               |   0    % |                         |
| Open_GL                | Versión de OpenGL               | SEMVER*   |               |   1.17 % |                         |
| PSU                    | Fuente de alimentación          | Categoría |               |  34.5  % |                         |
| Pixel_Rate             | Píxeles por segundo             | Número    | Píxel/segundo |  19.97 % |                         |
| Power_Connector        | Conector de corriente           | Categoría |               |  20.82 % |                         |
| Process                | Tecnología                      | Número    | Nanómetro     |  13.59 % |                         |
| ROPs                   | Pipelines de rasterización      | Número    |               |  15.8  % |                         |
| Release_Date           | Fecha de salida al mercado      | Fecha     |               |   0    % |                         |
| Release_Price          | Precio de salida                | Número    | Dólares ($)   |  83.68 % |                         |
| Resolution_WxH         | Máxima resolución               | Categoría | Píxel         |   5.73 % |                         |
| SLI_Crossfire          | Compatible con Crossfire o SLI  | Booleano  |               |   0    % |                         |
| Shader                 | Modelo de Shader                | SEMVER*   |               |   3.14 % |                         |
| TMUs                   | Unidades de mapeado de texturas | Número    |               |  15.8  % |                         |
| Texture_Rate           | Téxeles por segundo             | Número    | Téxel/segundo |  15.97 % |                         |
| VGA_Connection         | Conexiones VGA                  | Número    |               |  22.25 % |                         |

## Objetivo

En este análisis se pretenden sacar conclusiones a partir de los datos disponibles en el [dataset](https://www.kaggle.com/iliassekkaf/computerparts "Kaggle"). Algunos de ellos serán:
- Relación del precio de salida con la fecha de salida, los nanómetros de la tecnología, la memoria VRAM, la resolución óptima, y la frecuencia del reloj.
- Relación de la resolución óptima con los téxeles por segundo, los píxeles por segundo, la frecuencia del reloj, y la potencia requerida.

## Población-muestra

Cada muestra es elegida para representar a la población correctamente. En cada análisis se especificará con que criterio se ha seleccionado la muestra y por qué se considera representativa de la población. Los criterios siempre evitaran sesgar y/o perder información.

# Análisis de las variables

## Frecuencia de las arquitecturas

## 

H1 Header (Underline)
=============

H2 Header (Underline)
-------------

###Characters
                
----

~~Strikethrough~~ <s>Strikethrough (when enable html tag decode.)</s>
*Italic*      _Italic_
**Emphasis**  __Emphasis__
***Emphasis Italic*** ___Emphasis Italic___

Superscript: X<sub>2</sub>，Subscript: O<sup>2</sup>

**Abbreviation(link HTML abbr tag)**

The <abbr title="Hyper Text Markup Language">HTML</abbr> specification is maintained by the <abbr title="World Wide Web Consortium">W3C</abbr>.

###Blockquotes

> Blockquotes

Paragraphs and Line Breaks
                    
> "Blockquotes Blockquotes", [Link](http://localhost/)。

###Links

[Links](http://localhost/)

[Links with title](http://localhost/ "link title")

`<link>` : <https://github.com>

[Reference link][id/name] 

[id/name]: http://link-url/

GFM a-tail link @pandao

###Code Blocks (multi-language) & highlighting

####Inline code

`$ npm install marked`

####Code Blocks (Indented style)

Indented 4 spaces, like `<pre>` (Preformatted Text).

    <?php
        echo "Hello world!";
    ?>
    
Code Blocks (Preformatted text):

    | First Header  | Second Header |
    | ------------- | ------------- |
    | Content Cell  | Content Cell  |
    | Content Cell  | Content Cell  |

####Javascript　

```javascript
function test(){
	console.log("Hello world!");
}
 
(function(){
    var box = function(){
        return box.fn.init();
    };

    box.prototype = box.fn = {
        init : function(){
            console.log('box.init()');

			return this;
        },

		add : function(str){
			alert("add", str);

			return this;
		},

		remove : function(str){
			alert("remove", str);

			return this;
		}
    };
    
    box.fn.init.prototype = box.fn;
    
    window.box =box;
})();

var testBox = box();
testBox.add("jQuery").remove("jQuery");
```

####HTML code

```html
<!DOCTYPE html>
<html>
    <head>
        <mate charest="utf-8" />
        <title>Hello world!</title>
    </head>
    <body>
        <h1>Hello world!</h1>
    </body>
</html>
```

###Images

Image:

![](https://pandao.github.io/editor.md/examples/images/4.jpg)

> Follow your heart.

![](https://pandao.github.io/editor.md/examples/images/8.jpg)

> 图为：厦门白城沙滩 Xiamen

图片加链接 (Image + Link)：

[![](https://pandao.github.io/editor.md/examples/images/7.jpg)](https://pandao.github.io/editor.md/examples/images/7.jpg "李健首张专辑《似水流年》封面")

> 图为：李健首张专辑《似水流年》封面
                
----

###Lists

####Unordered list (-)

- Item A
- Item B
- Item C
     
####Unordered list (*)

* Item A
* Item B
* Item C

####Unordered list (plus sign and nested)
                
+ Item A
+ Item B
    + Item B 1
    + Item B 2
    + Item B 3
+ Item C
    * Item C 1
    * Item C 2
    * Item C 3

####Ordered list
                
1. Item A
2. Item B
3. Item C
                
----
                    
###Tables
                    
First Header  | Second Header
------------- | -------------
Content Cell  | Content Cell
Content Cell  | Content Cell 

| First Header  | Second Header |
| ------------- | ------------- |
| Content Cell  | Content Cell  |
| Content Cell  | Content Cell  |

| Function name | Description                    |
| ------------- | ------------------------------ |
| `help()`      | Display the help window.       |
| `destroy()`   | **Destroy your computer!**     |

| Item      | Value |
| --------- | -----:|
| Computer  | $1600 |
| Phone     |   $12 |
| Pipe      |    $1 |

| Left-Aligned  | Center Aligned  | Right Aligned |
| :------------ |:---------------:| -----:|
| col 3 is      | some wordy text | $1600 |
| col 2 is      | centered        |   $12 |
| zebra stripes | are neat        |    $1 |
                
----

####HTML entities

&copy; &  &uml; &trade; &iexcl; &pound;
&amp; &lt; &gt; &yen; &euro; &reg; &plusmn; &para; &sect; &brvbar; &macr; &laquo; &middot; 

X&sup2; Y&sup3; &frac34; &frac14;  &times;  &divide;   &raquo;

18&ordm;C  &quot;  &apos;

##Escaping for Special Characters

\*literal asterisks\*

##Markdown extras

###GFM task list

- [x] GFM task list 1
- [x] GFM task list 2
- [ ] GFM task list 3
    - [ ] GFM task list 3-1
    - [ ] GFM task list 3-2
    - [ ] GFM task list 3-3
- [ ] GFM task list 4
    - [ ] GFM task list 4-1
    - [ ] GFM task list 4-2

###Emoji mixed :smiley:

> Blockquotes :star:

####GFM task lists & Emoji & fontAwesome icon emoji & editormd logo emoji :editormd-logo-5x:

- [x] :smiley: @mentions, :smiley: #refs, [links](), **formatting**, and <del>tags</del> supported :editormd-logo:;
- [x] list syntax required (any unordered or ordered list supported) :editormd-logo-3x:;
- [x] [ ] :smiley: this is a complete item :smiley:;
- [ ] []this is an incomplete item [test link](#) :fa-star: @pandao; 
- [ ] [ ]this is an incomplete item :fa-star: :fa-gear:;
    - [ ] :smiley: this is an incomplete item [test link](#) :fa-star: :fa-gear:;
    - [ ] :smiley: this is  :fa-star: :fa-gear: an incomplete item [test link](#);
            
###TeX(LaTeX)
   
$$E=mc^2$$

Inline $$E=mc^2$$ Inline，Inline $$E=mc^2$$ Inline。

$$\(\sqrt{3x-1}+(1+x)^2\)$$
                    
$$\sin(\alpha)^{\theta}=\sum_{i=0}^{n}(x^i + \cos(f))$$
                
###FlowChart

```flow
st=>start: Login
op=>operation: Login operation
cond=>condition: Successful Yes or No?
e=>end: To admin

st->op->cond
cond(yes)->e
cond(no)->op
```

###Sequence Diagram
                    
```seq
Andrew->China: Says Hello 
Note right of China: China thinks\nabout it 
China-->Andrew: How are you? 
Andrew->>China: I am good thanks!
```

###End