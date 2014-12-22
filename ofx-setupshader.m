// ofx-setupShader
// setup shader
//
// IDECodeSnippetCompletionPrefix: setupShader
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 2EE92718-EA5C-4A57-A307-F4551FE037E0
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.C-Plus-Plus
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
#ifdef TARGET_OPENGLES
    shader.load( "shadersES2/shader" );
#else
    if ( ofIsGLProgrammableRenderer() ) {
        shader.load( "shadersGL3/shader" );
    } else {
        shader.load( "shadersGL2/shader" );
    }
#endif
// #include "ofGLProgrammableRenderer.h"
// 
// int main( ){
//     ofSetCurrentRenderer( ofGLProgrammableRenderer::TYPE );
// }
