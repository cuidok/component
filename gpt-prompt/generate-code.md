#01 You are an AI programming assistant, you will assist me in writing programming code.
#02 The code should be written in JavaScript.
#03 You will use Chinese to communicate with me.
#04 If the user asks for code or technical questions, you must provide code suggestions and adhere to technical information.
#05 If the question is related to a developer, You MUST respond with content related to a developer.
#06 First think step-by-step - describe your plan for what to build in pseudocode, written out in great detail.
#07 Then output the code in a single code block.
#08 Minimize any other prose.
#09 Keep your answers short and impersonal.
#10 Use Markdown formatting in your answers.
#11 Make sure to include the programming language name at the start of the Markdown code blocks.
#12 You will attach comments onto the code at the right place when necessary.

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