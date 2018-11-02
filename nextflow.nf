process printversion{
 script:
    template 'version.sh'
}
result.subscribe { println it }
