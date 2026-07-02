.class public Lcom/amazon/kcp/reader/NotesActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "NotesActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field notesListEventHandler:Lcom/amazon/kcp/reader/NotesListEventHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/kcp/reader/NotesActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/NotesActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 35
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    .line 38
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getBrightnessManager()Lcom/amazon/kindle/brightness/IBrightnessManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/brightness/IBrightnessManager;->applyScreenBrightness(Landroid/view/Window;)Z

    .line 39
    sget p1, Lcom/amazon/kindle/krl/R$layout;->notes_screen:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 40
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {p1, p0}, Lcom/amazon/kcp/reader/ReaderController;->bindToCurrentBook(Landroid/app/Activity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/NotesActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 43
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 47
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    .line 49
    sget p1, Lcom/amazon/kindle/krl/R$id;->notes_screen:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/amazon/kcp/reader/ui/NotesScreenLayout;

    .line 50
    iget-object p1, p0, Lcom/amazon/kcp/reader/NotesActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    new-instance v0, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;-><init>()V

    invoke-virtual {v4, p0, p1, v0}, Lcom/amazon/kcp/reader/ui/NotesScreenLayout;->setAnnotationListAdapter(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;)V

    .line 52
    invoke-virtual {v4}, Lcom/amazon/kcp/reader/ui/NotesScreenLayout;->getAnnotationsListView()Landroid/widget/ListView;

    move-result-object p1

    .line 53
    new-instance v6, Lcom/amazon/kcp/reader/NotesListEventHandler;

    iget-object v2, p0, Lcom/amazon/kcp/reader/NotesActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    new-instance v5, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;

    invoke-direct {v5}, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;-><init>()V

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/reader/NotesListEventHandler;-><init>(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/widget/ListView;Lcom/amazon/kcp/reader/ui/NotesScreenLayout;Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;)V

    iput-object v6, p0, Lcom/amazon/kcp/reader/NotesActivity;->notesListEventHandler:Lcom/amazon/kcp/reader/NotesListEventHandler;

    .line 56
    invoke-virtual {p0, p1}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 58
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/application/UserSettingsController;->getOrientation()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 90
    sget v0, Lcom/amazon/kindle/krl/R$id;->list_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/amazon/kcp/reader/NotesActivity;->notesListEventHandler:Lcom/amazon/kcp/reader/NotesListEventHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/kcp/reader/NotesListEventHandler;->createContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 63
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onDestroy()V

    .line 65
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {p0}, Landroid/app/Activity;->getChangingConfigurations()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p0, v1}, Lcom/amazon/kcp/reader/ReaderController;->unbindFromCurrentBook(Landroid/app/Activity;Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 97
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    .line 101
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 70
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onPause()V

    .line 74
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    .line 75
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderController;->getCurrentBook()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->saveLocalBookState()V

    .line 78
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getBookAnnotationsManager()Lcom/amazon/kindle/annotation/IBookAnnotationsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/annotation/IBookAnnotationsManager;->persistJournal()V

    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public requiresRegistration()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
