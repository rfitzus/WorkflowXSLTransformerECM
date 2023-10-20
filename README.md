# WorkflowXSLTransformerECM
Converts ECM XML files to HTML documents with hyperlinks

## Steps

- Launch the workflow designer in ECM
- Open your workflow
  
![01-Generate XML](https://github.com/rfitzus/WorkflowXSLTransformerECM/assets/51490261/59977a21-f280-4da0-a974-ea08a4c2cf03)
- Under Actions, select Generate XML for Comparison
- Save the XML file

![02-Workflow](https://github.com/rfitzus/WorkflowXSLTransformerECM/assets/51490261/f540b4d8-771c-439b-aa68-9e887f27c852)
- Take a full screenshot of your workflow and save the image as workflow.png
-
[[FreeFormatter](https://www.freeformatter.com/xsl-transformer.html)]
- Use the above Url to convert your Epicor ECM workflow xml document into a html document
- NOTE: Before downloading the xml file from Epicor ECM add comments to every Step
- In the Step Description, start the description with a 001,002, etc. and the xsl converter will sort each step accordingly
- On the website linked above upload the xml file and then upload the xsl file
- The xsl file will convert the workflow xml into a html file when you hit the transform button
- After it runs, click the COPY button on the site to copy the html code
- Paste the code in notepad and save it as a .html file
- Add the workflow.png screenshot of your workflow steps in the same folder as the html and it will be displayed at the top of the html document

![03-ChromePrintSettings](https://github.com/rfitzus/WorkflowXSLTransformerECM/assets/51490261/4dcb2eeb-c304-4276-b4e8-7df3b5f78f28)
- Print the html site as a pdf
- Within Chrome, when printing, there is a hide header and footer checkbox
