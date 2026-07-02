.class Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$MarkAsReadingClickListener;
.super Ljava/lang/Object;
.source "MarkAsReadingWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarkAsReadingClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;


# direct methods
.method private constructor <init>(Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$MarkAsReadingClickListener;->this$0:Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$1;)V
    .locals 0

    .line 276
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$MarkAsReadingClickListener;-><init>(Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 279
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 280
    invoke-static {}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mark as reading button click received."

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_0
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$MarkAsReadingClickListener;->this$0:Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;

    invoke-static {p1}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$200(Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$MarkAsReadingClickListener;->this$0:Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;

    invoke-static {p1}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$300(Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 286
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$MarkAsReadingClickListener;->this$0:Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;

    invoke-static {p1}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$300(Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;)Landroid/widget/Button;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/ea/R$string;->startactions_widget_mark_as_reading_button_in_progress:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 288
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$MarkAsReadingClickListener;->this$0:Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;

    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    const-string v0, "DidAnything"

    .line 289
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 290
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$MarkAsReadingClickListener;->this$0:Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "ClickedMarkAsCurrentlyReading"

    invoke-static {v2, v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 292
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$MarkAsReadingClickListener;->this$0:Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;

    invoke-virtual {p1}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getReadingStreamsMetadataWithMetricsTag()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->newHashMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p1

    .line 293
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v2, "AnyActionsMarkAsReadingWidget"

    const-string v3, "MarkAsReading"

    invoke-interface {v0, v2, v3, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 297
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    if-nez p1, :cond_1

    .line 299
    invoke-static {}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Current book is null; will not send ODOT Message"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$MarkAsReadingClickListener;->this$0:Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;

    invoke-static {p1, v1}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$400(Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;Z)V

    return-void

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$MarkAsReadingClickListener;->this$0:Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;

    invoke-static {v0}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$500(Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;)Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$GoodreadsShelfAsyncTask;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$MarkAsReadingClickListener;->this$0:Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;

    invoke-static {v2}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$500(Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;)Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$GoodreadsShelfAsyncTask;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 307
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    invoke-static {}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "odot queued while pull in progress. cancelling pull and deleting saved state. [status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$MarkAsReadingClickListener;->this$0:Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;

    .line 309
    invoke-static {v3}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$500(Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;)Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$GoodreadsShelfAsyncTask;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 308
    invoke-static {v0, v2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$MarkAsReadingClickListener;->this$0:Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;

    invoke-static {v0}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->access$500(Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;)Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$GoodreadsShelfAsyncTask;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 315
    :cond_3
    new-instance v0, Lcom/amazon/startactions/messaging/StartActionsMarkAsReadingJsonMessage;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    const-string v1, "currently-reading"

    invoke-direct {v0, p1, v1}, Lcom/amazon/startactions/messaging/StartActionsMarkAsReadingJsonMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    new-instance p1, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$MarkAsReadingOdotCallback;

    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$MarkAsReadingClickListener;->this$0:Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$MarkAsReadingOdotCallback;-><init>(Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$1;)V

    invoke-static {v0, p1}, Lcom/amazon/ea/util/MessageSender;->send(Lcom/amazon/ea/messaging/IMessage;Lcom/amazon/ea/util/MessageSender$Callback;)V

    return-void
.end method
