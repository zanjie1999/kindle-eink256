.class final Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender$1;
.super Ljava/lang/Object;
.source "WordwiseFeedbackSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender;->sendFeedback(ZLcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;Lcom/amazon/kcp/wordwise/gloss/IGlossModel;Ljava/lang/String;Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$currentBook:Lcom/amazon/kindle/krx/content/IBook;

.field final synthetic val$currentEntry:Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

.field final synthetic val$difficulty:I

.field final synthetic val$glossModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

.field final synthetic val$helpful:Z

.field final synthetic val$selectedText:Ljava/lang/String;

.field final synthetic val$status:Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/content/IBook;ZLcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;Lcom/amazon/kcp/wordwise/gloss/IGlossModel;Ljava/lang/String;Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;I)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender$1;->val$currentBook:Lcom/amazon/kindle/krx/content/IBook;

    iput-boolean p2, p0, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender$1;->val$helpful:Z

    iput-object p3, p0, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender$1;->val$currentEntry:Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    iput-object p4, p0, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender$1;->val$glossModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    iput-object p5, p0, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender$1;->val$selectedText:Ljava/lang/String;

    iput-object p6, p0, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender$1;->val$status:Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;

    iput p7, p0, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender$1;->val$difficulty:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 41
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sending ODOT feedback"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender$1;->val$currentBook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender$1;->val$currentBook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender$1;->val$helpful:Z

    iget-object v4, p0, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender$1;->val$currentEntry:Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    iget-object v5, p0, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender$1;->val$glossModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    iget-object v6, p0, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender$1;->val$selectedText:Ljava/lang/String;

    iget-object v7, p0, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender$1;->val$status:Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;

    iget v8, p0, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender$1;->val$difficulty:I

    invoke-static/range {v1 .. v8}, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender;->access$100(Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;Lcom/amazon/kcp/wordwise/gloss/IGlossModel;Ljava/lang/String;Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;I)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x3

    .line 43
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMessagingManager()Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    move-result-object v2

    .line 45
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

    .line 47
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "LanguageLayer.Customer.Feedback"

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/amazon/dcp/messaging/DeliveryOption;

    .line 48
    invoke-interface {v2, v1, v0, v3}, Lcom/amazon/kindle/krx/messaging/IMessagingManager;->send(Ljava/lang/String;[B[Lcom/amazon/dcp/messaging/DeliveryOption;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 50
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v1

    invoke-static {}, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to send feedback payload"

    invoke-interface {v1, v2, v3, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
