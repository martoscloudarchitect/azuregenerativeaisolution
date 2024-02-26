
/// Creates Local Variables for Script
var rglocation = resourceGroup().location

resource AzureOpenAiService 'Microsoft.CognitiveServices/accounts@2023-05-01' = {
  name: 'openai-service'
  location: rglocation
  kind: 'OpenAi'
  sku:{
    name: 'S0'
  }
}

