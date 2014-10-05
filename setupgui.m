// setupGUI
// 
//
// IDECodeSnippetCompletionPrefix: setupGUI
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: DC177834-FFD1-4F96-98D3-6D3D93371292
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.C-Plus-Plus
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 0
void ofApp::setupGUI(){
    gui = new ofxUISuperCanvas("PANEL 1: Basics");
    gui->addSpacer();
    gui->addLabel("Press `h` to hide GUIs", OFX_UI_FONT_SMALL);
    gui->addSlider("value", 0.0, 10.0, 5.0);
    ofAddListener(gui->newGUIEvent, this, &ofApp::guiEvent);
}

void ofApp::guiEvent(ofxUIEventArgs &e) {
    
    string name = e.getName();
    int kind = e.getKind();
    if (OFX_UI_WIDGET_SLIDER_H == kind) {
        ofxUISlider *slider = (ofxUISlider *)e.widget;
        ofLog(OF_LOG_NOTICE, "%s: %f", name.c_str(), slider->getValue());
    }
    
}