var JFPageCommond = function() {this.Name = 'JFPage';}
JFPageCommond.prototype.Execute = function () {InsertHTML();}
JFPageCommond.prototype.GetState = function() {return FCK_TRISTATE_OFF;}

// Register the related command.
FCKCommands.RegisterCommand( 'JFPage',new JFPageCommond()) ;

// Create the "Plaholder" toolbar button.
var oJFPageItem = new FCKToolbarButton( 'JFPage', "插入分页标签[JF:Page]" ) ;
oJFPageItem.IconPath = FCKPlugins.Items['JFPage'].Path + 'JFPage.gif' ;
FCKToolbarItems.RegisterItem( 'JFPage', oJFPageItem ) ;


function InsertHTML()
{
	var oEditor = FCKeditorAPI.GetInstance('Content') ;

	if ( oEditor.EditMode == FCK_EDITMODE_WYSIWYG )
	{
		oEditor.InsertHtml( '[JF:Page]' ) ;
	}
	else
		alert( 'You must be on WYSIWYG mode!' ) ;
}