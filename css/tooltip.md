
# CSS tooltip


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/css/tooltip.red](https://github.com/lepinekong/mycodesnippets/blob/master/css/tooltip.red)


### Demo

<iframe width="560" height="315" src="https://www.youtube.com/embed/gKCfUUC_LiA" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

### Code Snippet

- [View source](https://github.com/lepinekong/mycodesnippets/blob/master/css/src/tooltip.red)
                        
- [Copy source](https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/css/src/tooltip.red)
                        


```css

p{
    margin: 30% 20%;
}

span{
    font-weight: bold;
    font-size: 1.2em;
    cursor: help;
    position: relative;
}

span::before{
    content: attr(data-tooltip);
    position: absolute;
    background: rgba(0,0,0,.7);
    padding: 1em 2em;
    color: #fff;
    border-radius: 7px;
    bottom: 120%;
    right: -50px;
    white-space: nowrap;
    transform: scale(0);
}

span:hover::before{
    transform:scale(1);
}

span::after{
    content: "";
    border-top: 7px solid rgba(0,0,0,.7);
    border-left: 7px solid transparent;
    border-right: 7px  solid transparent;
    position: absolute;
    left: 50%;
    bottom: 85%;
    opacity: 0;
}

span:hover::after{
    opacity: 1;
}

        
```


