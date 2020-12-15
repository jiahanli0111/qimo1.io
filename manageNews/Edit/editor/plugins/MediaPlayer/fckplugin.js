FCKCommands.RegisterCommand( 'MediaPlayer', new FCKDialogCommand( 'MediaPlayer', FCKLang.MediaPlayerDlgTitle, FCKPlugins.Items['MediaPlayer'].Path + 'fck_wmp.html', 400, 225 ) ) ;

var oMediaPlayerItem = new FCKToolbarButton( 'MediaPlayer', FCKLang.MediaPlayerBtn) ;
oMediaPlayerItem.IconPath = FCKPlugins.Items['MediaPlayer'].Path + 'wmp.gif' ;
FCKToolbarItems.RegisterItem( 'MediaPlayer', oMediaPlayerItem ) ;

var FCKMediaPlayer = new Object() ;

FCKMediaPlayer.Insert = function(url,width,height,autoStart)
{
	FCK.InsertHtml("<embed type='application/x-mplayer2' defaultframe='datawindow' src="+url+" width="+width+" height="+height+" play="+autoStart+"></embed>");
}