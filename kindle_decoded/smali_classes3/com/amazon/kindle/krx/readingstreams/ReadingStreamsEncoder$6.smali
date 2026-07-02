.class Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$6;
.super Ljava/lang/Object;
.source "ReadingStreamsEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->sendOdotMessageIfCriteriaMet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;

.field final synthetic val$self:Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$6;->this$0:Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;

    iput-object p2, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$6;->val$self:Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 661
    iget-object v0, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$6;->val$self:Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;

    monitor-enter v0

    .line 665
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$6;->this$0:Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->getSizeInBytes()I

    move-result v1

    const/16 v2, 0x1600

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    .line 667
    iget-object v1, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$6;->this$0:Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->toByteArray()[B

    move-result-object v1

    .line 668
    iget-object v2, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$6;->this$0:Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;

    invoke-static {v2}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->access$600(Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;)Lcom/amazon/rma/rs/encoding/MessageEncoder;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/amazon/rma/rs/encoding/MessageEncoder;->clear(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 670
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 674
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$6;->this$0:Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;

    invoke-static {v0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->access$200(Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;)Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    move-result-object v0

    const-string v2, "Kindle.DeviceReadingStreams"

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/amazon/dcp/messaging/DeliveryOption;

    iget-object v5, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$6;->this$0:Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;

    invoke-static {v5}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->access$100(Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;)Lcom/amazon/dcp/messaging/DeliveryOption;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-interface {v0, v2, v1, v4}, Lcom/amazon/kindle/krx/messaging/IMessagingManager;->send(Ljava/lang/String;[B[Lcom/amazon/dcp/messaging/DeliveryOption;)V
    :try_end_1
    .catch Lcom/amazon/kindle/krx/messaging/SendMessageFailureException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 676
    invoke-static {}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DATA LOSS WARNING!!! Error sending ODOT message"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void

    :catchall_0
    move-exception v1

    .line 670
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
