.class final Lcom/amazon/kcp/readingstreams/ReadingStreamUtil$1;
.super Ljava/lang/Object;
.source "ReadingStreamUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/readingstreams/ReadingStreamUtil;->sendAnnotationBackupSettingState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$payload:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/amazon/kcp/readingstreams/ReadingStreamUtil$1;->val$payload:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 391
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMessagingManager()Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    move-result-object v0

    const-string v1, "Configuration.DeviceAccount"

    .line 394
    iget-object v2, p0, Lcom/amazon/kcp/readingstreams/ReadingStreamUtil$1;->val$payload:[B

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/amazon/dcp/messaging/DeliveryOption;

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/krx/messaging/IMessagingManager;->send(Ljava/lang/String;[B[Lcom/amazon/dcp/messaging/DeliveryOption;)V
    :try_end_0
    .catch Lcom/amazon/kindle/krx/messaging/SendMessageFailureException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 397
    invoke-static {}, Lcom/amazon/kcp/readingstreams/ReadingStreamUtil;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ODOT send message failed for Annotation Setting state for topic: Configuration.DeviceAccount"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
