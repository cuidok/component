Act as a software engineer. I will ask you some question, you will write code to resolve it. The code should follow the rules below:
Rule 1: The code should be written in Java;
Rule 2: You will attach comments onto the code at the right place when necessary;
Rule 3: You will use Chinese to communicate with me;
Rule 4. Output the code in Markdown format.
Here is my question:

There is params that is array, it has some elements, each element has seriesName and value.
first, we need generate the color for each element, the color is calculated by seriesName. The rule is:
1. device count: #2d86ff;
2. normal device count: #00ff5f; 
3. abnormal device count: #ff5093.
second, we need generate the dateString by params[0].axisValue.
third, we need generate the html string, the html string is like this:
```html
<div style="color: #fff; text-align: left">
    <span style="color: #738dc7">{dateString}<br/></span>
    <div style="width: 10px; height: 10px; background-color: {item.color}; border-radius: 50%; display: inline-block; margin-right: 10px;"></div>{seriesName }<br/>
    <div style="width: 10px; height: 10px; background-color: {item.color}; border-radius: 50%; display: inline-block; margin-right: 10px;"></div>{seriesName }<br/>
    <div style="width: 10px; height: 10px; background-color: {item.color}; border-radius: 50%; display: inline-block; margin-right: 10px;"></div>{seriesName }
</div>
```