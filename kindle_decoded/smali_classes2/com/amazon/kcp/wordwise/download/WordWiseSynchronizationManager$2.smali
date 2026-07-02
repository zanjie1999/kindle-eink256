.class Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$2;
.super Ljava/lang/Object;
.source "WordWiseSynchronizationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sendSidecarOdotAck(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;

.field final synthetic val$book:Lcom/amazon/kindle/krx/content/IBook;

.field final synthetic val$guid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$2;->this$0:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;

    iput-object p2, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$2;->val$book:Lcom/amazon/kindle/krx/content/IBook;

    iput-object p3, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$2;->val$guid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 551
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;->createGlossSidecar()Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;

    move-result-object v0

    .line 552
    iget-object v1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$2;->this$0:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;

    invoke-static {v1}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->access$000(Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;->withContext(Landroid/content/Context;)Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;

    iget-object v1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$2;->val$book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;->withBook(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;

    iget-object v1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$2;->val$guid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;->withGuid(Ljava/lang/String;)Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;

    .line 553
    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;->build()Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper;

    move-result-object v0

    const-string v1, "acr"

    .line 554
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;->getMetadataValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sidecarRevision"

    .line 555
    invoke-virtual {v0, v2}, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;->getMetadataValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 556
    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper;->close()V

    .line 558
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$2;->val$book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->access$900(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 559
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 560
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMessagingManager()Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    move-result-object v2

    .line 561
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v3

    invoke-static {}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->access$300()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ack Payload: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "LanguageLayer.Sidecar.Acknowledge"

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/amazon/dcp/messaging/DeliveryOption;

    .line 562
    invoke-interface {v2, v0, v1, v3}, Lcom/amazon/kindle/krx/messaging/IMessagingManager;->send(Ljava/lang/String;[B[Lcom/amazon/dcp/messaging/DeliveryOption;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 564
    iget-object v1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$2;->this$0:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;

    invoke-static {v1}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->access$000(Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v1

    invoke-static {}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to send sidecar ack"

    invoke-interface {v1, v2, v3, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
