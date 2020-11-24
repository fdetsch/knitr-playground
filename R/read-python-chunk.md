knitr Code Externalization for Python
================

(Code taken from
[StackOverflow](https://stackoverflow.com/questions/42785318/knitr-code-externalization-for-python))

1.  Create Python source file, eg. in ./src/test.py, with following
    content.

    ``` python
    ## @knitr abc
    print(1)
    ```

2.  Read code chunk(s) from Python file.

    ``` r
    knitr::read_chunk('../src/test.py')
    ```

3.  Include output in `.Rmd`.

        ## 1
