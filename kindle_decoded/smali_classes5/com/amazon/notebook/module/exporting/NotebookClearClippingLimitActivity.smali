.class public Lcom/amazon/notebook/module/exporting/NotebookClearClippingLimitActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "NotebookClearClippingLimitActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/notebook/module/exporting/NotebookClearClippingLimitActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/notebook/module/exporting/NotebookClearClippingLimitActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/notebook/module/exporting/NotebookClearClippingLimitActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amazon/notebook/module/exporting/NotebookClearClippingLimitActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 26
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    .line 29
    invoke-interface {p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/redding/ReddingActivity;->setRequestedOrientation(I)V

    .line 30
    invoke-interface {p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/SettingsController;->applyScreenBrightness(Landroid/view/Window;)Z

    .line 31
    sget v0, Lcom/amazon/notebook/module/R$layout;->notebook_module_clear_clipping_limit:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 33
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {p1, p0}, Lcom/amazon/kcp/reader/ReaderController;->bindToCurrentBook(Landroid/app/Activity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/notebook/module/exporting/NotebookClearClippingLimitActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez p1, :cond_0

    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 40
    :cond_0
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/notebook/module/exporting/NotebookClearClippingLimitActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/notebook/module/exporting/NotebookClearClippingLimitActivity$1;-><init>(Lcom/amazon/notebook/module/exporting/NotebookClearClippingLimitActivity;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 61
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

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

    .line 62
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onDestroy()V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
