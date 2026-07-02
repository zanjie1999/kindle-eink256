.class final Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender$2;
.super Ljava/lang/Object;
.source "WordwiseFeedbackSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender;->sendDictionaryLookupFeedback(Lcom/amazon/kindle/krx/content/IContentSelection;Lcom/amazon/kcp/wordwise/gloss/IGlossModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$glossModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

.field final synthetic val$selectionModel:Lcom/amazon/kindle/krx/content/IContentSelection;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/content/IContentSelection;Lcom/amazon/kcp/wordwise/gloss/IGlossModel;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender$2;->val$selectionModel:Lcom/amazon/kindle/krx/content/IContentSelection;

    iput-object p2, p0, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender$2;->val$glossModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 102
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sending ODOT dictionary lookup feedback"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender$2;->val$selectionModel:Lcom/amazon/kindle/krx/content/IContentSelection;

    iget-object v1, p0, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender$2;->val$glossModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    invoke-static {v0, v1}, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender;->access$200(Lcom/amazon/kindle/krx/content/IContentSelection;Lcom/amazon/kcp/wordwise/gloss/IGlossModel;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x3

    .line 104
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMessagingManager()Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    move-result-object v2

    .line 106
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v3

    invoke-static {}, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Payload: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "LanguageLayer.Customer.Feedback"

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/amazon/dcp/messaging/DeliveryOption;

    .line 109
    invoke-interface {v2, v1, v0, v3}, Lcom/amazon/kindle/krx/messaging/IMessagingManager;->send(Ljava/lang/String;[B[Lcom/amazon/dcp/messaging/DeliveryOption;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 111
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v1

    invoke-static {}, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to send dictionary lookup feedback payload"

    invoke-interface {v1, v2, v3, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
