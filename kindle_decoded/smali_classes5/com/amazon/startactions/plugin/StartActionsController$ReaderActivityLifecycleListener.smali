.class Lcom/amazon/startactions/plugin/StartActionsController$ReaderActivityLifecycleListener;
.super Ljava/lang/Object;
.source "StartActionsController.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/plugin/StartActionsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReaderActivityLifecycleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/startactions/plugin/StartActionsController;


# direct methods
.method private constructor <init>(Lcom/amazon/startactions/plugin/StartActionsController;)V
    .locals 0

    .line 1027
    iput-object p1, p0, Lcom/amazon/startactions/plugin/StartActionsController$ReaderActivityLifecycleListener;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/startactions/plugin/StartActionsController;Lcom/amazon/startactions/plugin/StartActionsController$1;)V
    .locals 0

    .line 1027
    invoke-direct {p0, p1}, Lcom/amazon/startactions/plugin/StartActionsController$ReaderActivityLifecycleListener;-><init>(Lcom/amazon/startactions/plugin/StartActionsController;)V

    return-void
.end method


# virtual methods
.method public onActionBarVisibilityChange(Z)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1058
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController$ReaderActivityLifecycleListener;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-static {v0}, Lcom/amazon/startactions/plugin/StartActionsController;->access$1400(Lcom/amazon/startactions/plugin/StartActionsController;)Lcom/amazon/startactions/plugin/StartActionsController$StartActionsCustomTutorialHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsCustomTutorialHandler;->dismissCallBack()V

    return-void
.end method

.method public onOverlayVisibilityChange(Z)V
    .locals 1

    if-eqz p1, :cond_2

    .line 1081
    iget-object p1, p0, Lcom/amazon/startactions/plugin/StartActionsController$ReaderActivityLifecycleListener;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-static {p1}, Lcom/amazon/startactions/plugin/StartActionsController;->access$1000(Lcom/amazon/startactions/plugin/StartActionsController;)Lcom/amazon/startactions/ui/StartActionsOverlayController;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amazon/startactions/plugin/StartActionsController$ReaderActivityLifecycleListener;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-static {p1}, Lcom/amazon/startactions/plugin/StartActionsController;->access$1000(Lcom/amazon/startactions/plugin/StartActionsController;)Lcom/amazon/startactions/ui/StartActionsOverlayController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1082
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1083
    invoke-static {}, Lcom/amazon/startactions/plugin/StartActionsController;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hiding start actions on overlay visibility change to visible"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    :cond_0
    iget-object p1, p0, Lcom/amazon/startactions/plugin/StartActionsController$ReaderActivityLifecycleListener;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-static {p1}, Lcom/amazon/startactions/plugin/StartActionsController;->access$1000(Lcom/amazon/startactions/plugin/StartActionsController;)Lcom/amazon/startactions/ui/StartActionsOverlayController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->hideOverlay()V

    .line 1087
    iget-object p1, p0, Lcom/amazon/startactions/plugin/StartActionsController$ReaderActivityLifecycleListener;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-static {p1}, Lcom/amazon/startactions/plugin/StartActionsController;->access$1300(Lcom/amazon/startactions/plugin/StartActionsController;)Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1089
    invoke-static {}, Lcom/amazon/startactions/plugin/StartActionsController;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string v0, "no current book open on overlay visibility change, cannot log metric"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1092
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    const-string v0, "ClosedThroughChromeShow"

    .line 1093
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1040
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController$ReaderActivityLifecycleListener;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-static {v0}, Lcom/amazon/startactions/plugin/StartActionsController;->access$1300(Lcom/amazon/startactions/plugin/StartActionsController;)Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1042
    invoke-static {}, Lcom/amazon/startactions/plugin/StartActionsController;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "no current book open on pause, cannot save session to disk."

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1045
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/startactions/metrics/SessionManager;->saveSessionToDisk(Ljava/lang/String;)V

    .line 1046
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController$ReaderActivityLifecycleListener;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-static {v0}, Lcom/amazon/startactions/plugin/StartActionsController;->access$1000(Lcom/amazon/startactions/plugin/StartActionsController;)Lcom/amazon/startactions/ui/StartActionsOverlayController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController$ReaderActivityLifecycleListener;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-static {v0}, Lcom/amazon/startactions/plugin/StartActionsController;->access$1000(Lcom/amazon/startactions/plugin/StartActionsController;)Lcom/amazon/startactions/ui/StartActionsOverlayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1047
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController$ReaderActivityLifecycleListener;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-static {v0}, Lcom/amazon/startactions/plugin/StartActionsController;->access$1000(Lcom/amazon/startactions/plugin/StartActionsController;)Lcom/amazon/startactions/ui/StartActionsOverlayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->onReaderActivityPause()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1030
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController$ReaderActivityLifecycleListener;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-static {v0}, Lcom/amazon/startactions/plugin/StartActionsController;->access$1000(Lcom/amazon/startactions/plugin/StartActionsController;)Lcom/amazon/startactions/ui/StartActionsOverlayController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController$ReaderActivityLifecycleListener;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-static {v0}, Lcom/amazon/startactions/plugin/StartActionsController;->access$1000(Lcom/amazon/startactions/plugin/StartActionsController;)Lcom/amazon/startactions/ui/StartActionsOverlayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1034
    :cond_0
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController$ReaderActivityLifecycleListener;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-static {v0}, Lcom/amazon/startactions/plugin/StartActionsController;->access$1000(Lcom/amazon/startactions/plugin/StartActionsController;)Lcom/amazon/startactions/ui/StartActionsOverlayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->requestAccessibilityFocus()V

    .line 1035
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController$ReaderActivityLifecycleListener;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-static {v0}, Lcom/amazon/startactions/plugin/StartActionsController;->access$1000(Lcom/amazon/startactions/plugin/StartActionsController;)Lcom/amazon/startactions/ui/StartActionsOverlayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->onReaderActivityResume()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSettingsChange()V
    .locals 1

    .line 1063
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController$ReaderActivityLifecycleListener;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-static {v0}, Lcom/amazon/startactions/plugin/StartActionsController;->access$1000(Lcom/amazon/startactions/plugin/StartActionsController;)Lcom/amazon/startactions/ui/StartActionsOverlayController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController$ReaderActivityLifecycleListener;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-static {v0}, Lcom/amazon/startactions/plugin/StartActionsController;->access$1000(Lcom/amazon/startactions/plugin/StartActionsController;)Lcom/amazon/startactions/ui/StartActionsOverlayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1068
    :cond_0
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController$ReaderActivityLifecycleListener;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-static {v0}, Lcom/amazon/startactions/plugin/StartActionsController;->access$1000(Lcom/amazon/startactions/plugin/StartActionsController;)Lcom/amazon/startactions/ui/StartActionsOverlayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->repositionOverlay()V

    .line 1071
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController$ReaderActivityLifecycleListener;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-static {v0}, Lcom/amazon/startactions/plugin/StartActionsController;->access$1000(Lcom/amazon/startactions/plugin/StartActionsController;)Lcom/amazon/startactions/ui/StartActionsOverlayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->requestAccessibilityFocus()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
