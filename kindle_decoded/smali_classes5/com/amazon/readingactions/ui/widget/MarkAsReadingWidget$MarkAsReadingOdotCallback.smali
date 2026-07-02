.class Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget$MarkAsReadingOdotCallback;
.super Ljava/lang/Object;
.source "MarkAsReadingWidget.java"

# interfaces
.implements Lcom/amazon/ea/util/MessageSender$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarkAsReadingOdotCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget;


# direct methods
.method private constructor <init>(Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget$MarkAsReadingOdotCallback;->this$0:Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget;Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget$1;)V
    .locals 0

    .line 325
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget$MarkAsReadingOdotCallback;-><init>(Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget;)V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/Exception;)V
    .locals 2

    .line 328
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget$MarkAsReadingOdotCallback;->this$0:Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget;

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    .line 329
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget$MarkAsReadingOdotCallback;->this$0:Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget;

    iget-object v0, v0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v1, "MarkAsCurrentlyReadingError"

    invoke-static {v1, v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/metrics/Metric;->addError(Ljava/lang/String;)V

    .line 332
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAsyncTaskExecutor()Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    move-result-object p1

    new-instance v0, Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget$MarkAsReadingOdotCallback$1;

    invoke-direct {v0, p0}, Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget$MarkAsReadingOdotCallback$1;-><init>(Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget$MarkAsReadingOdotCallback;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;->postOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 2

    .line 343
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget$MarkAsReadingOdotCallback;->this$0:Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget;

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    .line 344
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget$MarkAsReadingOdotCallback;->this$0:Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget;

    iget-object v0, v0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v1, "MarkAsCurrentlyReadingSucceeded"

    invoke-static {v1, v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 347
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAsyncTaskExecutor()Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    move-result-object p1

    new-instance v0, Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget$MarkAsReadingOdotCallback$2;

    invoke-direct {v0, p0}, Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget$MarkAsReadingOdotCallback$2;-><init>(Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget$MarkAsReadingOdotCallback;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;->postOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
