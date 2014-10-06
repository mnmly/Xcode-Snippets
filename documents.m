// Documents Directory Path
// 
//
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: D1B60492-52D9-4EA5-85F9-524BE6901C7C
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

NSURL *documentsDirectoryURL = [NSURL fileURLWithPath:[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject]];
