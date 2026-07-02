.class Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$3;
.super Ljava/lang/Object;
.source "ReadingStreamsEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->publishReadingStreamsMessage([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;

.field final synthetic val$message:[B


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;[B)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$3;->this$0:Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;

    iput-object p2, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$3;->val$message:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$3;->this$0:Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;

    invoke-static {v0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->access$200(Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;)Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    move-result-object v0

    const-string v1, "Kindle.DeviceReadingStreams"

    iget-object v2, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$3;->val$message:[B

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/amazon/dcp/messaging/DeliveryOption;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$3;->this$0:Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;

    invoke-static {v5}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->access$100(Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;)Lcom/amazon/dcp/messaging/DeliveryOption;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/krx/messaging/IMessagingManager;->send(Ljava/lang/String;[B[Lcom/amazon/dcp/messaging/DeliveryOption;)V
    :try_end_0
    .catch Lcom/amazon/kindle/krx/messaging/SendMessageFailureException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 326
    invoke-static {}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DATA LOSS WARNING!!! Failed to publish the reading streams message to server"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
