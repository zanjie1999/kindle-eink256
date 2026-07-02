.class public Lcom/amazon/kindle/mangaviewer/StandaloneMangaPagerActivity;
.super Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;
.source "StandaloneMangaPagerActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private book:Lcom/amazon/kindle/krx/content/IBook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/kindle/mangaviewer/StandaloneMangaPagerActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/mangaviewer/StandaloneMangaPagerActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected enhancedNotebookSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getMenuItemByButtonId(Ljava/lang/String;)Landroid/view/MenuItem;
    .locals 1

    .line 139
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getCurrentMenu()Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    invoke-static {v0, p1}, Lcom/amazon/kcp/reader/ReaderActivityActionButtonHelper;->getMenuItemByButtonId(Landroid/view/Menu;Ljava/lang/String;)Landroid/view/MenuItem;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected initializeEventHandlers()V
    .locals 5

    .line 110
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaAdapter:Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;

    .line 113
    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaListener:Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 114
    sget v1, Lcom/amazon/kindle/thirdparty/R$id;->manga_root_layout:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/mangaviewer/MangaLayout;

    .line 115
    invoke-interface {v0}, Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;->getDocViewer()Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v2, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaListener:Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

    new-instance v3, Lcom/amazon/kindle/mangaviewer/LinkEventHandler;

    sget v4, Lcom/amazon/kindle/thirdparty/R$id;->manga_root_layout:I

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/mangaviewer/MangaLayout;

    invoke-direct {v3, v0, v4}, Lcom/amazon/kindle/mangaviewer/LinkEventHandler;-><init>(Lcom/amazon/android/docviewer/mobi/MangaDocViewer;Lcom/amazon/kindle/mangaviewer/MangaLayout;)V

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->addEventHandler(Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;)Z

    :cond_0
    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/modules/MangaViewerModule;->isManga(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    iget-object v2, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaListener:Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

    new-instance v3, Lcom/amazon/kindle/mangaviewer/ZoomEventHandler;

    invoke-direct {v3, v1}, Lcom/amazon/kindle/mangaviewer/ZoomEventHandler;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->addEventHandler(Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;)Z

    .line 122
    iget-object v2, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaListener:Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

    new-instance v3, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;

    iget-object v4, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    invoke-direct {v3, v4, p0, v1}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;-><init>(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;Landroid/content/Context;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->addEventHandler(Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;)Z

    .line 123
    iget-object v2, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaListener:Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

    new-instance v3, Lcom/amazon/kindle/mangaviewer/PanEventHandler;

    invoke-direct {v3, v1}, Lcom/amazon/kindle/mangaviewer/PanEventHandler;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->addEventHandler(Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;)Z

    .line 125
    :cond_1
    iget-object v2, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaListener:Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

    new-instance v3, Lcom/amazon/kindle/mangaviewer/OrientationLockHandler;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getOrientationLockManager()Lcom/amazon/kcp/reader/ui/IOrientationLockManager;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/amazon/kindle/mangaviewer/OrientationLockHandler;-><init>(Lcom/amazon/kcp/reader/ui/IOrientationLockManager;)V

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->addEventHandler(Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;)Z

    .line 126
    iget-object v2, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaListener:Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

    new-instance v3, Lcom/amazon/kindle/mangaviewer/PageEventHandler;

    invoke-direct {v3, v1}, Lcom/amazon/kindle/mangaviewer/PageEventHandler;-><init>(Lcom/amazon/kcp/reader/ui/BookLayout;)V

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->addEventHandler(Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;)Z

    if-eqz v0, :cond_2

    .line 128
    iget-object v2, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaListener:Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

    new-instance v3, Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler;

    invoke-direct {v3, v1, v0}, Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler;-><init>(Lcom/amazon/kcp/reader/ui/BookLayout;Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)V

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->addEventHandler(Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;)Z

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaListener:Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

    new-instance v1, Lcom/amazon/kindle/mangaviewer/BoundarySwipeEventHandler;

    invoke-direct {v1}, Lcom/amazon/kindle/mangaviewer/BoundarySwipeEventHandler;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->addEventHandler(Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;)Z

    goto :goto_0

    .line 132
    :cond_3
    sget-object v0, Lcom/amazon/kindle/mangaviewer/StandaloneMangaPagerActivity;->TAG:Ljava/lang/String;

    const-string v1, "MangaTouchListener was null when attempting to initialize event handlers."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 59
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelHelper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 32
    invoke-super {p0, p1}, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->setFocusableInTouchMode(Z)V

    .line 35
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaListener:Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 37
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz p1, :cond_0

    .line 38
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object p1

    .line 39
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-interface {p1}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    .line 41
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 43
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    .line 44
    new-instance v0, Lcom/amazon/kindle/krx/content/LocalBook;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krx/content/LocalBook;-><init>(Lcom/amazon/kindle/model/content/ILocalBookInfo;)V

    iput-object v0, p0, Lcom/amazon/kindle/mangaviewer/StandaloneMangaPagerActivity;->book:Lcom/amazon/kindle/krx/content/IBook;

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 146
    invoke-super {p0}, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/StandaloneMangaPagerActivity;->book:Lcom/amazon/kindle/krx/content/IBook;

    if-eqz v0, :cond_1

    .line 97
    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/ReaderActivityActionButtonHelper;->onCustomActionButtonSelected(Landroid/view/MenuItem;Lcom/amazon/kindle/krx/content/IBook;)V

    .line 100
    :cond_1
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 51
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelHelper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p1}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->syncState()V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 75
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/StandaloneMangaPagerActivity;->book:Lcom/amazon/kindle/krx/content/IBook;

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/mangaviewer/StandaloneMangaPagerActivity;->updateCustomActions(Landroid/view/Menu;Lcom/amazon/kindle/krx/content/IBook;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 1

    .line 66
    invoke-super {p0}, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->onResume()V

    .line 67
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverCache()Lcom/amazon/kcp/cover/ICoverCacheManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/cover/ICoverCacheManager;->clearCache()V

    .line 68
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelHelper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->syncState()V

    :cond_0
    return-void
.end method

.method protected updateCustomActions(Landroid/view/Menu;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    .line 87
    invoke-static {p1, p2}, Lcom/amazon/kcp/reader/ReaderActivityActionButtonHelper;->addCustomActionButtons(Landroid/view/Menu;Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method
