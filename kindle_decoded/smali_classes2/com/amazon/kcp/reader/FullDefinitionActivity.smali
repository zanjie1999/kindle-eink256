.class public Lcom/amazon/kcp/reader/FullDefinitionActivity;
.super Lcom/amazon/kcp/reader/BookReaderActivity;
.source "FullDefinitionActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/amazon/kcp/reader/FullDefinitionActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/FullDefinitionActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/BookReaderActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 46
    invoke-interface {p1}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    .line 47
    instance-of v0, p1, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    if-eqz v0, :cond_0

    .line 48
    check-cast p1, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->renderFirstPage()Z

    :cond_0
    return-void
.end method

.method protected refreshLayout(Landroid/os/Bundle;)Lcom/amazon/kcp/reader/ui/ReaderLayout;
    .locals 1

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->shouldFlashOverlays:Z

    .line 35
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->refreshLayout(Landroid/os/Bundle;)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object p1

    return-object p1
.end method

.method public setupCustomButtons()V
    .locals 1

    .line 56
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getHistoryManager()Lcom/amazon/kcp/application/HistoryManager;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/amazon/kcp/application/HistoryManager;->hasBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->clearCustomButtons()V

    return-void

    .line 63
    :cond_0
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->setupCustomButtons()V

    return-void
.end method

.method protected shouldSetOverlayVisibleAtLaunch()Z
    .locals 1

    .line 72
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getHistoryManager()Lcom/amazon/kcp/application/HistoryManager;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/amazon/kcp/application/HistoryManager;->hasBack()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 78
    :cond_0
    invoke-super {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->shouldSetOverlayVisibleAtLaunch()Z

    move-result v0

    return v0
.end method

.method public startSearch(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    .line 92
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$string;->search_activity:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 94
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.SEARCH"

    .line 95
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 98
    :catch_0
    sget-object v0, Lcom/amazon/kcp/reader/FullDefinitionActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Search class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was not found. Please make sure search_activity is set properly in classes.xml"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 101
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v0

    .line 102
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->normalizeSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is a dictionary, using lookup"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->search(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-lez p1, :cond_2

    .line 111
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->navigateToPosition(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public useLayoutCache()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
