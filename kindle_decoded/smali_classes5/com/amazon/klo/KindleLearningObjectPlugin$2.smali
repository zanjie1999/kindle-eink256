.class Lcom/amazon/klo/KindleLearningObjectPlugin$2;
.super Ljava/lang/Object;
.source "KindleLearningObjectPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/klo/KindleLearningObjectPlugin;->initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/klo/KindleLearningObjectPlugin;


# direct methods
.method constructor <init>(Lcom/amazon/klo/KindleLearningObjectPlugin;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/amazon/klo/KindleLearningObjectPlugin$2;->this$0:Lcom/amazon/klo/KindleLearningObjectPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfterContentClose(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    .line 342
    invoke-static {}, Lcom/amazon/klo/HighlightProvider;->getInstance()Lcom/amazon/klo/HighlightProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/klo/HighlightProvider;->clearHighlights()V

    .line 343
    invoke-static {}, Lcom/amazon/klo/KLOApp;->getInstance()Lcom/amazon/klo/KLOApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/klo/KLOApp;->resetLastOpened()V

    .line 344
    iget-object p1, p0, Lcom/amazon/klo/KindleLearningObjectPlugin$2;->this$0:Lcom/amazon/klo/KindleLearningObjectPlugin;

    invoke-virtual {p1}, Lcom/amazon/klo/KindleLearningObjectPlugin;->discardIntent()V

    const/4 p1, 0x0

    .line 345
    sput-boolean p1, Lcom/amazon/klo/KindleLearningObjectPlugin;->isSidecarPresentCached:Z

    return-void
.end method

.method public onAfterContentOpen(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    .line 321
    invoke-static {}, Lcom/amazon/klo/KindleLearningObjectPlugin;->access$000()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEUTRON_PHASE_1:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 322
    invoke-static {}, Lcom/amazon/klo/KindleLearningObjectPlugin;->access$000()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAsyncTaskExecutor()Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    move-result-object p1

    .line 323
    new-instance v0, Lcom/amazon/klo/KindleLearningObjectPlugin$2$1;

    invoke-direct {v0, p0}, Lcom/amazon/klo/KindleLearningObjectPlugin$2$1;-><init>(Lcom/amazon/klo/KindleLearningObjectPlugin$2;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;->submit(Lcom/amazon/kindle/krx/application/IAsyncTask;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method public onAfterNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 0

    .line 351
    invoke-static {}, Lcom/amazon/klo/HighlightProvider;->getInstance()Lcom/amazon/klo/HighlightProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/klo/HighlightProvider;->pageChanged()V

    .line 352
    iget-object p1, p0, Lcom/amazon/klo/KindleLearningObjectPlugin$2;->this$0:Lcom/amazon/klo/KindleLearningObjectPlugin;

    invoke-static {p1}, Lcom/amazon/klo/KindleLearningObjectPlugin;->access$100(Lcom/amazon/klo/KindleLearningObjectPlugin;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 354
    iget-object p1, p0, Lcom/amazon/klo/KindleLearningObjectPlugin$2;->this$0:Lcom/amazon/klo/KindleLearningObjectPlugin;

    invoke-virtual {p1}, Lcom/amazon/klo/KindleLearningObjectPlugin;->discardIntent()V

    goto :goto_0

    .line 358
    :cond_0
    iget-object p1, p0, Lcom/amazon/klo/KindleLearningObjectPlugin$2;->this$0:Lcom/amazon/klo/KindleLearningObjectPlugin;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/amazon/klo/KindleLearningObjectPlugin;->access$102(Lcom/amazon/klo/KindleLearningObjectPlugin;Z)Z

    :goto_0
    return-void
.end method

.method public onBeforeNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 0

    return-void
.end method

.method public onNavigationFailed(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 0

    return-void
.end method

.method public onPageFlowChanged(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    return-void
.end method
