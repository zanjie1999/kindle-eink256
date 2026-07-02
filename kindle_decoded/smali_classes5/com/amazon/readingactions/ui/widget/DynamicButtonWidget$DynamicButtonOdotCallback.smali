.class Lcom/amazon/readingactions/ui/widget/DynamicButtonWidget$DynamicButtonOdotCallback;
.super Ljava/lang/Object;
.source "DynamicButtonWidget.java"

# interfaces
.implements Lcom/amazon/ea/util/MessageSender$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/DynamicButtonWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DynamicButtonOdotCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/DynamicButtonWidget;


# direct methods
.method private constructor <init>(Lcom/amazon/readingactions/ui/widget/DynamicButtonWidget;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/DynamicButtonWidget$DynamicButtonOdotCallback;->this$0:Lcom/amazon/readingactions/ui/widget/DynamicButtonWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/readingactions/ui/widget/DynamicButtonWidget;Lcom/amazon/readingactions/ui/widget/DynamicButtonWidget$1;)V
    .locals 0

    .line 271
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/DynamicButtonWidget$DynamicButtonOdotCallback;-><init>(Lcom/amazon/readingactions/ui/widget/DynamicButtonWidget;)V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/Exception;)V
    .locals 2

    .line 275
    sget-object v0, Lcom/amazon/readingactions/ui/widget/DynamicButtonWidget;->TAG:Ljava/lang/String;

    const-string v1, "Failed to send dynamic button odot."

    invoke-static {v0, v1, p1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 278
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/DynamicButtonWidget$DynamicButtonOdotCallback;->this$0:Lcom/amazon/readingactions/ui/widget/DynamicButtonWidget;

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/DynamicButtonWidget$DynamicButtonOdotCallback;->this$0:Lcom/amazon/readingactions/ui/widget/DynamicButtonWidget;

    iget-object v0, v0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v1, "DynamicButtonOdotError"

    invoke-static {v1, v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 1

    .line 283
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAsyncTaskExecutor()Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    move-result-object p1

    new-instance v0, Lcom/amazon/readingactions/ui/widget/DynamicButtonWidget$DynamicButtonOdotCallback$1;

    invoke-direct {v0, p0}, Lcom/amazon/readingactions/ui/widget/DynamicButtonWidget$DynamicButtonOdotCallback$1;-><init>(Lcom/amazon/readingactions/ui/widget/DynamicButtonWidget$DynamicButtonOdotCallback;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;->postOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
