.class Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;
.super Ljava/lang/Object;
.source "RmrManagerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerEntry"
.end annotation


# instance fields
.field private mConnection:Lamazon/whispersync/communication/connection/Connection;

.field private mCountReceived:I

.field private final mHandler:Lamazon/whispersync/communication/rmr/RmrResponseHandler;

.field private final mOnErrorInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mOnFinishInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mRequest:Lamazon/whispersync/communication/rmr/RmrRequest;

.field private mSequenceOfEndOfResponses:I


# direct methods
.method public constructor <init>(Lamazon/whispersync/communication/rmr/RmrResponseHandler;Lamazon/whispersync/communication/rmr/RmrRequest;Lamazon/whispersync/communication/connection/Connection;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->mHandler:Lamazon/whispersync/communication/rmr/RmrResponseHandler;

    .line 103
    iput-object p2, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->mRequest:Lamazon/whispersync/communication/rmr/RmrRequest;

    .line 104
    iput-object p3, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->mConnection:Lamazon/whispersync/communication/connection/Connection;

    const/4 p1, 0x0

    .line 105
    iput p1, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->mCountReceived:I

    const/4 p2, -0x1

    .line 106
    iput p2, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->mSequenceOfEndOfResponses:I

    .line 107
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->mOnFinishInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 108
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->mOnErrorInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public areAllResponsesReceived()Z
    .locals 2

    .line 115
    iget v0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->mCountReceived:I

    iget v1, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->mSequenceOfEndOfResponses:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onError(Lamazon/whispersync/communication/rmr/RmrResponseCleanedUpException;)V
    .locals 6

    .line 167
    iget-object v0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->mOnFinishInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "mRequest"

    const/4 v2, 0x2

    const-string v3, "HandlerEntry.onError"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->mOnErrorInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->mHandler:Lamazon/whispersync/communication/rmr/RmrResponseHandler;

    iget-object v1, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->mRequest:Lamazon/whispersync/communication/rmr/RmrRequest;

    invoke-interface {v0, v1, p1}, Lamazon/whispersync/communication/rmr/RmrResponseHandler;->onError(Lamazon/whispersync/communication/rmr/RmrRequest;Lamazon/whispersync/communication/rmr/RmrResponseException;)V

    goto :goto_0

    .line 172
    :cond_0
    invoke-static {}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->mRequest:Lamazon/whispersync/communication/rmr/RmrRequest;

    aput-object v1, v0, v4

    const-string/jumbo v1, "should not call onError multiple times"

    invoke-virtual {p1, v3, v1, v0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 177
    :cond_1
    invoke-static {}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->mRequest:Lamazon/whispersync/communication/rmr/RmrRequest;

    aput-object v1, v0, v4

    const-string/jumbo v1, "should not call onError after onFinish"

    invoke-virtual {p1, v3, v1, v0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onFinish()V
    .locals 6

    .line 148
    iget-object v0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->mOnErrorInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "mRequest"

    const/4 v2, 0x2

    const-string v3, "HandlerEntry.onFinish"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->mOnFinishInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->mHandler:Lamazon/whispersync/communication/rmr/RmrResponseHandler;

    iget-object v1, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->mRequest:Lamazon/whispersync/communication/rmr/RmrRequest;

    invoke-interface {v0, v1}, Lamazon/whispersync/communication/rmr/RmrResponseHandler;->onFinish(Lamazon/whispersync/communication/rmr/RmrRequest;)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-static {}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v5

    iget-object v1, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->mRequest:Lamazon/whispersync/communication/rmr/RmrRequest;

    aput-object v1, v2, v4

    const-string/jumbo v1, "should not call onFinish multiple times"

    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 158
    :cond_1
    invoke-static {}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v5

    iget-object v1, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->mRequest:Lamazon/whispersync/communication/rmr/RmrRequest;

    aput-object v1, v2, v4

    const-string v1, "don\'t invoke onFinish after onError"

    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onResponse(Lamazon/whispersync/communication/Message;)V
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->mOnFinishInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->mOnErrorInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->mHandler:Lamazon/whispersync/communication/rmr/RmrResponseHandler;

    iget-object v2, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->mRequest:Lamazon/whispersync/communication/rmr/RmrRequest;

    invoke-interface {v0, v2, p1}, Lamazon/whispersync/communication/rmr/RmrResponseHandler;->onResponse(Lamazon/whispersync/communication/rmr/RmrRequest;Lamazon/whispersync/communication/Message;)V

    .line 133
    iget p1, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->mCountReceived:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->mCountReceived:I

    goto :goto_0

    .line 136
    :cond_0
    invoke-static {}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object p1

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "mRequest"

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->mRequest:Lamazon/whispersync/communication/rmr/RmrRequest;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mOnFinishInvoked"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->mOnFinishInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mOnErrorInvoked"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->mOnErrorInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "HandlerEntry.onResponse"

    const-string v2, "don\'t invoke onResponse after onFinish/onError"

    invoke-virtual {p1, v1, v2, v0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public releaseConnection()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->mConnection:Lamazon/whispersync/communication/connection/Connection;

    invoke-interface {v0}, Lamazon/whispersync/communication/connection/Connection;->release()V

    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->mConnection:Lamazon/whispersync/communication/connection/Connection;

    return-void
.end method

.method public setSequenceOfEndOfResponse(I)V
    .locals 4

    .line 122
    iget v0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->mSequenceOfEndOfResponses:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-le v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Last response should not have been received"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/amazon/whispersync/dp/utils/FailFast;->expectFalse(Z[Ljava/lang/Object;)V

    .line 124
    iput p1, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->mSequenceOfEndOfResponses:I

    return-void
.end method
