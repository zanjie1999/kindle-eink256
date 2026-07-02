.class Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;
.super Ljava/lang/Object;
.source "RmrManagerBase.java"

# interfaces
.implements Lamazon/whispersync/communication/rmr/RmrRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RmrRequestImpl"
.end annotation


# instance fields
.field private final mEndpoint:Lamazon/whispersync/communication/identity/EndpointIdentity;

.field private final mHandler:Lamazon/whispersync/communication/rmr/RmrResponseHandler;

.field private final mMessage:Lamazon/whispersync/communication/Message;

.field private final mMetricEvent:Lcom/amazon/whispersync/client/metrics/MetricEvent;

.field private mRequestId:I

.field private final mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;Lamazon/whispersync/communication/identity/EndpointIdentity;Lamazon/whispersync/communication/Message;Lamazon/whispersync/communication/rmr/RmrResponseHandler;Lcom/amazon/whispersync/client/metrics/MetricEvent;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;->this$0:Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p2, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;->mEndpoint:Lamazon/whispersync/communication/identity/EndpointIdentity;

    .line 220
    iput-object p3, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;->mMessage:Lamazon/whispersync/communication/Message;

    .line 221
    iput-object p4, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;->mHandler:Lamazon/whispersync/communication/rmr/RmrResponseHandler;

    .line 222
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 223
    iput-object p5, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;->mMetricEvent:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    return-void
.end method


# virtual methods
.method public cancelRequest()V
    .locals 1

    .line 251
    new-instance v0, Lamazon/whispersync/communication/rmr/RmrResponseCanceledException;

    invoke-direct {v0}, Lamazon/whispersync/communication/rmr/RmrResponseCanceledException;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;->cancelRequest(Lamazon/whispersync/communication/rmr/RmrResponseException;)V

    return-void
.end method

.method public cancelRequest(Lamazon/whispersync/communication/rmr/RmrResponseException;)V
    .locals 6

    .line 256
    iget-object v0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;->this$0:Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;

    invoke-static {v0}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->access$200(Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "mRequestId"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "RmrRequestImpl.cancelRequest"

    if-eqz v0, :cond_0

    .line 257
    invoke-static {}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v2, v0, v3

    iget v2, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;->mRequestId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "cleanUp is called, give up cancelling request"

    invoke-virtual {p1, v5, v1, v0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;->this$0:Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;

    invoke-static {v0}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->access$300(Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 265
    invoke-static {}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object p1

    const-string/jumbo v0, "request has not been started"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    iget v2, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;->mRequestId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-virtual {p1, v5, v0, v4}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    iget-object p1, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;->this$0:Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;

    invoke-static {p1}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->access$300(Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;)Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    .line 270
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;->this$0:Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;

    iget v1, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;->mRequestId:I

    iget-object v2, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;->mHandler:Lamazon/whispersync/communication/rmr/RmrResponseHandler;

    invoke-static {v0, v1, p0, v2, p1}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->access$600(Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;ILamazon/whispersync/communication/rmr/RmrRequest;Lamazon/whispersync/communication/rmr/RmrResponseHandler;Lamazon/whispersync/communication/rmr/RmrResponseException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    iget-object p1, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;->this$0:Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;

    invoke-static {p1}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->access$300(Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;)Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;->this$0:Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;

    invoke-static {v0}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->access$300(Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    throw p1
.end method

.method public startRequest()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/ConnectionAcquisitionFailedException;,
            Lamazon/whispersync/communication/MissingCredentialsException;,
            Lamazon/whispersync/communication/connection/TransmissionFailedException;,
            Lamazon/whispersync/communication/connection/IllegalConnectionStateException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;->this$0:Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;

    invoke-static {v0}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->access$200(Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "mRequestId"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "RmrRequestImpl.startRequest"

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    .line 230
    invoke-static {}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    iget v1, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;->mRequestId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    const-string v1, "cleanUp is called, give up starting request"

    invoke-virtual {v0, v4, v1, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;->this$0:Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;

    invoke-static {v0}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->access$300(Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    invoke-static {}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object v0

    const-string/jumbo v6, "request has already been started"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    iget v1, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;->mRequestId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-virtual {v0, v4, v6, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    iget-object v0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;->this$0:Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;

    invoke-static {v0}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->access$300(Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    .line 242
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;->this$0:Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;

    invoke-static {v0}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->access$400(Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    iput v2, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;->mRequestId:I

    .line 243
    iget-object v1, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;->this$0:Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;

    iget-object v4, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;->mEndpoint:Lamazon/whispersync/communication/identity/EndpointIdentity;

    iget-object v5, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;->mMessage:Lamazon/whispersync/communication/Message;

    iget-object v6, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;->mHandler:Lamazon/whispersync/communication/rmr/RmrResponseHandler;

    iget-object v7, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;->mMetricEvent:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->access$500(Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;ILamazon/whispersync/communication/rmr/RmrRequest;Lamazon/whispersync/communication/identity/EndpointIdentity;Lamazon/whispersync/communication/Message;Lamazon/whispersync/communication/rmr/RmrResponseHandler;Lcom/amazon/whispersync/client/metrics/MetricEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    iget-object v0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;->this$0:Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;

    invoke-static {v0}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->access$300(Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;->this$0:Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;

    invoke-static {v1}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->access$300(Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RmrRequestImpl [message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;->mMessage:Lamazon/whispersync/communication/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", handler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;->mHandler:Lamazon/whispersync/communication/rmr/RmrResponseHandler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endpoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;->mEndpoint:Lamazon/whispersync/communication/identity/EndpointIdentity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", started="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;->mRequestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
