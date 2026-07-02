.class public Lcom/amazon/kcp/reader/StandaloneFullDefinitionActivity;
.super Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;
.source "StandaloneFullDefinitionActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/amazon/kcp/reader/StandaloneFullDefinitionActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/StandaloneFullDefinitionActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 22
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 27
    invoke-interface {p1}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    .line 28
    instance-of v0, p1, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    if-eqz v0, :cond_0

    .line 29
    check-cast p1, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->renderFirstPage()Z

    :cond_0
    return-void
.end method

.method public startSearch(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    .line 56
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$string;->search_activity:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 59
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.SEARCH"

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 64
    :catch_0
    sget-object v0, Lcom/amazon/kcp/reader/StandaloneFullDefinitionActivity;->TAG:Ljava/lang/String;

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

    .line 68
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v0

    .line 69
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->normalizeSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is a dictionary, using lookup"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->search(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-lez p1, :cond_2

    .line 78
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
