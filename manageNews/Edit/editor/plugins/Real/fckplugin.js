FCKCommands.RegisterCommand( 'Real', new FCKDialogCommand( 'Real', FCKLang.RealDlgTitle, FCKPlugins.Items['Real'].Path + 'fck_Real.html', 400, 225 ) ) ;

var oRealItem = new FCKToolbarButton( 'Real', FCKLang.RealBtn) ;
oRealItem.IconPath = FCKPlugins.Items['Real'].Path + 'Real.gif' ;
FCKToolbarItems.RegisterItem( 'Real', oRealItem ) ;

var FCKReal = new Object() ;

FCKReal.Insert = function(url,width,height,autoStart)
{
	FCK.InsertHtml("<embed type='audio/x-pn-realaudio-plugin' controls='ControlPanel,StatusBar' src="+url+" width="+width+" height="+height+" play="+autoStart+" loop=true></embed>");
}