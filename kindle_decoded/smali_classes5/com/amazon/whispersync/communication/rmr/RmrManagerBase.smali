.class public abstract Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;
.super Ljava/lang/Object;
.source "RmrManagerBase.java"

# interfaces
.implements Lcom/amazon/whispersync/communication/rmr/RmrMessageRouter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;,
        Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrMessageHandler;,
        Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;
    }
.end annotation


# static fields
.field private static final CLEANUP_WAIT_TIMEOUT_MS:I = 0x1388

.field private static final DEFAULT_CONNECTION_TIMEOUT_IN_MILLIS:I = 0xea60

.field private static final PERMITS:I = 0x14

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field private final mChannel:I

.field private final mCleanUpSemaphore:Ljava/util/concurrent/Semaphore;

.field private mCommunicationManager:Lamazon/whispersync/communication/CommunicationManager;

.field private final mHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mPolicy:Lamazon/whispersync/communication/connection/Policy;

.field private final mRmrMessageHandler:Lamazon/whispersync/communication/BufferedMessageHandler;

.field private final mRmrProtocolHandler:Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;

.field private final mShutdownCalled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "TComm.RmrManagerBase"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(ILamazon/whispersync/communication/CommunicationManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/rmr/RmrInitializationFailedException;
        }
    .end annotation

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 69
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->mHandlers:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->mShutdownCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->mCleanUpSemaphore:Ljava/util/concurrent/Semaphore;

    .line 285
    iput-object p2, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->mCommunicationManager:Lamazon/whispersync/communication/CommunicationManager;

    .line 286
    iput p1, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->mChannel:I

    .line 287
    invoke-virtual {p0}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->getRmrProtocolHandler()Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->mRmrProtocolHandler:Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;

    .line 288
    new-instance p1, Lamazon/whispersync/communication/BufferedMessageHandler;

    new-instance p2, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrMessageHandler;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrMessageHandler;-><init>(Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$1;)V

    invoke-direct {p1, p2}, Lamazon/whispersync/communication/BufferedMessageHandler;-><init>(Lamazon/whispersync/communication/MessageHandler;)V

    iput-object p1, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->mRmrMessageHandler:Lamazon/whispersync/communication/BufferedMessageHandler;

    .line 289
    invoke-virtual {p0}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->getPolicy()Lamazon/whispersync/communication/connection/Policy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->mPolicy:Lamazon/whispersync/communication/connection/Policy;

    .line 292
    :try_start_0
    iget-object p1, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->mCommunicationManager:Lamazon/whispersync/communication/CommunicationManager;

    iget p2, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->mChannel:I

    iget-object v0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->mRmrMessageHandler:Lamazon/whispersync/communication/BufferedMessageHandler;

    invoke-interface {p1, p2, v0}, Lamazon/whispersync/communication/CommunicationManager;->registerMessageHandler(ILamazon/whispersync/communication/MessageHandler;)V
    :try_end_0
    .catch Lamazon/whispersync/communication/RegistrationFailedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 294
    new-instance p2, Lamazon/whispersync/communication/rmr/RmrInitializationFailedException;

    const-string v0, "Failed to register message handler"

    invoke-direct {p2, v0, p1}, Lamazon/whispersync/communication/rmr/RmrInitializationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method static synthetic access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;
    .locals 1

    .line 65
    sget-object v0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;)Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->mRmrProtocolHandler:Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->mShutdownCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->mCleanUpSemaphore:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;ILamazon/whispersync/communication/rmr/RmrRequest;Lamazon/whispersync/communication/identity/EndpointIdentity;Lamazon/whispersync/communication/Message;Lamazon/whispersync/communication/rmr/RmrResponseHandler;Lcom/amazon/whispersync/client/metrics/MetricEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/ConnectionAcquisitionFailedException;,
            Lamazon/whispersync/communication/MissingCredentialsException;,
            Lamazon/whispersync/communication/connection/TransmissionFailedException;,
            Lamazon/whispersync/communication/connection/IllegalConnectionStateException;
        }
    .end annotation

    .line 65
    invoke-direct/range {p0 .. p6}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->startRequestInternal(ILamazon/whispersync/communication/rmr/RmrRequest;Lamazon/whispersync/communication/identity/EndpointIdentity;Lamazon/whispersync/communication/Message;Lamazon/whispersync/communication/rmr/RmrResponseHandler;Lcom/amazon/whispersync/client/metrics/MetricEvent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;ILamazon/whispersync/communication/rmr/RmrRequest;Lamazon/whispersync/communication/rmr/RmrResponseHandler;Lamazon/whispersync/communication/rmr/RmrResponseException;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->cancelRequestInternal(ILamazon/whispersync/communication/rmr/RmrRequest;Lamazon/whispersync/communication/rmr/RmrResponseHandler;Lamazon/whispersync/communication/rmr/RmrResponseException;)V

    return-void
.end method

.method private cancelRequestInternal(ILamazon/whispersync/communication/rmr/RmrRequest;Lamazon/whispersync/communication/rmr/RmrResponseHandler;Lamazon/whispersync/communication/rmr/RmrResponseException;)V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->mHandlers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;

    if-eqz p1, :cond_0

    .line 399
    invoke-virtual {p1}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->releaseConnection()V

    .line 400
    invoke-interface {p3, p2, p4}, Lamazon/whispersync/communication/rmr/RmrResponseHandler;->onError(Lamazon/whispersync/communication/rmr/RmrRequest;Lamazon/whispersync/communication/rmr/RmrResponseException;)V

    :cond_0
    return-void
.end method

.method private startRequestInternal(ILamazon/whispersync/communication/rmr/RmrRequest;Lamazon/whispersync/communication/identity/EndpointIdentity;Lamazon/whispersync/communication/Message;Lamazon/whispersync/communication/rmr/RmrResponseHandler;Lcom/amazon/whispersync/client/metrics/MetricEvent;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/ConnectionAcquisitionFailedException;,
            Lamazon/whispersync/communication/MissingCredentialsException;,
            Lamazon/whispersync/communication/connection/TransmissionFailedException;,
            Lamazon/whispersync/communication/connection/IllegalConnectionStateException;
        }
    .end annotation

    const-string v0, "TimeAcquireConnectedConnection"

    .line 357
    iget-object v1, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->mRmrProtocolHandler:Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, p4, p1, v2}, Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;->encodeRequest(Lamazon/whispersync/communication/Message;II)Lamazon/whispersync/communication/Message;

    move-result-object p4

    const/4 v1, 0x0

    .line 362
    :try_start_0
    invoke-interface {p6, v0}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->startTimer(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 364
    :try_start_1
    iget-object v3, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->mCommunicationManager:Lamazon/whispersync/communication/CommunicationManager;

    iget-object v4, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->mPolicy:Lamazon/whispersync/communication/connection/Policy;

    const v5, 0xea60

    invoke-interface {v3, p3, v4, v1, v5}, Lamazon/whispersync/communication/CommunicationManager;->acquireConnectedConnection(Lamazon/whispersync/communication/identity/EndpointIdentity;Lamazon/whispersync/communication/connection/Policy;Lamazon/whispersync/communication/connection/Connection$ConnectionListener;I)Lamazon/whispersync/communication/connection/Connection;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    :try_start_2
    invoke-interface {p6, v0}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->stopTimer(Ljava/lang/String;)V

    .line 369
    new-instance p3, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;

    invoke-direct {p3, p5, p2, v1}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;-><init>(Lamazon/whispersync/communication/rmr/RmrResponseHandler;Lamazon/whispersync/communication/rmr/RmrRequest;Lamazon/whispersync/communication/connection/Connection;)V

    .line 371
    iget-object v0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->mHandlers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    iget p3, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->mChannel:I

    invoke-interface {v1, p4, p3, p6}, Lamazon/whispersync/communication/connection/Connection;->sendMessage(Lamazon/whispersync/communication/Message;ILcom/amazon/whispersync/client/metrics/MetricEvent;)V

    .line 373
    invoke-interface {p5, p2}, Lamazon/whispersync/communication/rmr/RmrResponseHandler;->onStart(Lamazon/whispersync/communication/rmr/RmrRequest;)V

    return-void

    :catchall_0
    move-exception p2

    .line 367
    invoke-interface {p6, v0}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->stopTimer(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    .line 377
    iget-object p3, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->mHandlers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 382
    :try_start_3
    invoke-interface {v1}, Lamazon/whispersync/communication/connection/Connection;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 384
    sget-object p3, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p1, p4, v2

    const-string/jumbo p1, "startRequestInternal"

    const-string p5, "failed to release connection"

    invoke-virtual {p3, p1, p5, p4}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    :cond_0
    :goto_0
    throw p2
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    .line 475
    invoke-virtual {p0}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->shutdown()V

    return-void
.end method

.method public createRmrRequest(Lamazon/whispersync/communication/identity/EndpointIdentity;Lamazon/whispersync/communication/Message;Lamazon/whispersync/communication/rmr/RmrResponseHandler;Lcom/amazon/whispersync/client/metrics/MetricEvent;)Lamazon/whispersync/communication/rmr/RmrRequest;
    .locals 7

    .line 336
    iget-object v0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->mShutdownCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->mCleanUpSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 343
    :try_start_0
    new-instance v0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$RmrRequestImpl;-><init>(Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;Lamazon/whispersync/communication/identity/EndpointIdentity;Lamazon/whispersync/communication/Message;Lamazon/whispersync/communication/rmr/RmrResponseHandler;Lcom/amazon/whispersync/client/metrics/MetricEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    iget-object p1, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->mCleanUpSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-object v0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->mCleanUpSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->release()V

    throw p1

    .line 337
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "RmrManagerBase should not be used after cleanUp has been called"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract getConnectionPolicy()Lamazon/whispersync/communication/connection/ConnectionPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/connection/ConnectionPolicyException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract getPolicy()Lamazon/whispersync/communication/connection/Policy;
.end method

.method protected abstract getRmrProtocolHandler()Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;
.end method

.method public routeRmrMessage(Lamazon/whispersync/communication/identity/EndpointIdentity;Ljava/lang/String;ILamazon/whispersync/communication/Message;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/CommunicationBaseException;
        }
    .end annotation

    const-string v0, "RQS"

    .line 409
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "NRQ"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "RPY"

    .line 412
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "NRP"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LST"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "NLS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->mHandlers:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;

    goto :goto_1

    .line 411
    :cond_2
    :goto_0
    sget-object v0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "routeRmrMessage"

    const-string v4, "RMR Request is not supported and not expected here - something is wrong"

    invoke-virtual {v0, v3, v4, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    .line 421
    sget-object p2, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 p4, 0x4

    new-array p4, p4, [Ljava/lang/Object;

    const-string p5, "endpoint"

    aput-object p5, p4, v1

    const/4 p5, 0x1

    aput-object p1, p4, p5

    const/4 p1, 0x2

    const-string/jumbo p5, "requestId"

    aput-object p5, p4, p1

    const/4 p1, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p4, p1

    const-string/jumbo p1, "routeRmrMessage"

    const-string p3, "no entry in handler map for rmr response, perhaps request has timed out"

    invoke-virtual {p2, p1, p3, p4}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 429
    :cond_4
    monitor-enter v0

    :try_start_0
    const-string p1, "LST"

    .line 430
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "NLS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 434
    :cond_5
    invoke-virtual {v0, p4}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->onResponse(Lamazon/whispersync/communication/Message;)V

    goto :goto_3

    .line 432
    :cond_6
    :goto_2
    invoke-virtual {v0, p5}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->setSequenceOfEndOfResponse(I)V

    .line 437
    :goto_3
    invoke-virtual {v0}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->areAllResponsesReceived()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 438
    invoke-virtual {v0}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->onFinish()V

    .line 441
    iget-object p1, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->mHandlers:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;

    if-eqz p1, :cond_7

    .line 443
    invoke-virtual {p1}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->releaseConnection()V

    .line 446
    :cond_7
    monitor-exit v0

    :goto_4
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected setCommunicationManager(Lamazon/whispersync/communication/CommunicationManager;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->mCommunicationManager:Lamazon/whispersync/communication/CommunicationManager;

    return-void
.end method

.method public declared-synchronized shutdown()V
    .locals 8

    monitor-enter p0

    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->mShutdownCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 305
    :try_start_1
    iget-object v2, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->mCleanUpSemaphore:Ljava/util/concurrent/Semaphore;

    const/16 v3, 0x14

    const-wide/16 v4, 0x1388

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/concurrent/Semaphore;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 306
    sget-object v2, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v3, "cleanUp"

    const-string/jumbo v4, "timed out waiting for outstanding requests, proceeding"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 309
    :try_start_2
    sget-object v3, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v4, "cleanup"

    const-string v5, "interrupted waiting for outstanding requests, proceeding"

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v2, v6, v0

    invoke-virtual {v3, v4, v5, v6}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 313
    :cond_1
    :goto_0
    :try_start_3
    iget-object v2, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->mCommunicationManager:Lamazon/whispersync/communication/CommunicationManager;

    iget v3, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->mChannel:I

    invoke-interface {v2, v3}, Lamazon/whispersync/communication/CommunicationManager;->deregisterMessageHandler(I)V
    :try_end_3
    .catch Lamazon/whispersync/communication/RegistrationFailedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v2

    .line 315
    :try_start_4
    sget-object v3, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v4, "cleanUp"

    const-string v5, "error occurred during cleanup"

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v2, v6, v0

    invoke-virtual {v3, v4, v5, v6}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    :goto_1
    iget-object v2, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->mHandlers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 319
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 320
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 322
    :try_start_5
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;

    .line 323
    invoke-virtual {v3}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->releaseConnection()V

    .line 324
    new-instance v4, Lamazon/whispersync/communication/rmr/RmrResponseCleanedUpException;

    invoke-direct {v4}, Lamazon/whispersync/communication/rmr/RmrResponseCleanedUpException;-><init>()V

    invoke-virtual {v3, v4}, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase$HandlerEntry;->onError(Lamazon/whispersync/communication/rmr/RmrResponseCleanedUpException;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v3

    .line 326
    :try_start_6
    sget-object v4, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v5, "cleanUp"

    const-string v6, "a handler\'s onError threw an exception while cleaning up"

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v3, v7, v0

    invoke-virtual {v4, v5, v6, v7}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/amazon/whispersync/communication/rmr/RmrManagerBase;->mHandlers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 330
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
