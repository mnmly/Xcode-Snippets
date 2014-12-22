// ofx-setupGUI
// Setup ofxUI
//
// IDECodeSnippetCompletionPrefix: setupGUI
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 60E4CB56-6546-417B-B7DD-5BCD67698D7D
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.C-Plus-Plus
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
void ofApp::setupGUI()
{
    gui = new ofxUICanvas();
    gui->addLabel( "OFXUI TUTORIAL", OFX_UI_FONT_LARGE );
    gui->addSlider( "BACKGROUND", 0.0, 255.0, 100.0 );
    gui->addToggle( "FULLSCREEN", false );
    gui->autoSizeToFitWidgets(); 
    ofAddListener( gui->newGUIEvent, this, &ofApp::guiEvent );
    gui->loadSettings( "settings.xml" );
}

//--------------------------------------------------------------
void ofApp::guiEvent( ofxUIEventArgs &e )
{
    if( e.getName() == "BACKGROUND" ) {
        ofxUISlider *slider = e.getSlider();
        ofBackground( slider->getScaledValue() );
    } else if( e.getName() == "FULLSCREEN" ) {
        ofxUIToggle *toggle = (ofxUIToggle *) e.widget;
        ofSetFullscreen( toggle->getValue() );
    }
}

//--------------------------------------------------------------
void ofApp::keyPressed( int key ) {
    switch ( key ) {
        case 'p':
            gui->setDrawWidgetPadding( true );
            break;
        case 'P':
            gui->setDrawWidgetPadding( false );
            break;

            
        default:
            break;
    }
}

//--------------------------------------------------------------
void ofApp::exit()
{
    gui->saveSettings( "settings.xml" );
    delete gui; 
}
