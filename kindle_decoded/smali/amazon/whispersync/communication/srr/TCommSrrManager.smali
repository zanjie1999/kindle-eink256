.class public Lamazon/whispersync/communication/srr/TCommSrrManager;
.super Ljava/lang/Object;
.source "TCommSrrManager.java"

# interfaces
.implements Lamazon/whispersync/communication/srr/SrrManager;
.implements Lamazon/whispersync/communication/srr/SingleRequestResponseManager;


# static fields
.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field private mCommunicationManager:Lamazon/whispersync/communication/CommunicationManager;

.field private final mPolicy:Lamazon/whispersync/communication/connection/Policy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "TComm.SrrManager"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lamazon/whispersync/communication/srr/TCommSrrManager;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Lamazon/whispersync/communication/CommunicationManager;Lamazon/whispersync/communication/connection/Policy;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 85
    iput-object p1, p0, Lamazon/whispersync/communication/srr/TCommSrrManager;->mCommunicationManager:Lamazon/whispersync/communication/CommunicationManager;

    .line 86
    iput-object p2, p0, Lamazon/whispersync/communication/srr/TCommSrrManager;->mPolicy:Lamazon/whispersync/communication/connection/Policy;

    return-void

    .line 83
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Policy cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CommunicationManager cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getTimeoutFromSrrRequest(Lamazon/whispersync/communication/srr/SrrRequest;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/ConnectionAcquisitionFailedException;
        }
    .end annotation

    .line 280
    invoke-virtual {p1}, Lamazon/whispersync/communication/srr/SrrRequest;->getTimeout()I

    move-result v0

    if-ltz v0, :cond_4

    .line 284
    invoke-virtual {p1}, Lamazon/whispersync/communication/srr/SrrRequest;->getEndpointIdentity()Lamazon/whispersync/communication/identity/EndpointIdentity;

    move-result-object p1

    .line 285
    instance-of v1, p1, Lamazon/whispersync/communication/identity/ServiceIdentity;

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    .line 290
    iget-object v0, p0, Lamazon/whispersync/communication/srr/TCommSrrManager;->mCommunicationManager:Lamazon/whispersync/communication/CommunicationManager;

    invoke-interface {v0}, Lamazon/whispersync/communication/CommunicationManager;->getIdentityResolver()Lamazon/whispersync/communication/identity/IdentityResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 294
    check-cast p1, Lamazon/whispersync/communication/identity/ServiceIdentity;

    invoke-interface {v0, p1}, Lamazon/whispersync/communication/identity/IdentityResolver;->resolveServiceEndpoint(Lamazon/whispersync/communication/identity/ServiceIdentity;)Lamazon/whispersync/communication/identity/IRServiceEndpoint;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 298
    invoke-interface {p1}, Lamazon/whispersync/communication/identity/IRServiceEndpoint;->getTimeout()I

    move-result p1

    return p1

    .line 296
    :cond_0
    new-instance p1, Lamazon/whispersync/communication/ConnectionAcquisitionFailedException;

    const-string v0, "Could not find desired endpoint in Identity Resolver"

    invoke-direct {p1, v0}, Lamazon/whispersync/communication/ConnectionAcquisitionFailedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 292
    :cond_1
    new-instance p1, Lamazon/whispersync/communication/ConnectionAcquisitionFailedException;

    const-string v0, "Could not contact Identity Resolver"

    invoke-direct {p1, v0}, Lamazon/whispersync/communication/ConnectionAcquisitionFailedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v0

    .line 286
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can only make SRR requests to service endpoints."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 282
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Timeout must not be negative!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private overrideConnectionPolicy(Lamazon/whispersync/communication/srr/SrrRequest;)Lamazon/whispersync/communication/connection/Policy;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Lamazon/whispersync/communication/connection/ConnectionPolicyException;
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lamazon/whispersync/communication/srr/TCommSrrManager;->mPolicy:Lamazon/whispersync/communication/connection/Policy;

    .line 249
    invoke-virtual {v0}, Lamazon/whispersync/communication/connection/Policy;->getCompressionOption()Lamazon/whispersync/communication/connection/CompressionOption;

    move-result-object v1

    invoke-virtual {p1}, Lamazon/whispersync/communication/srr/SrrRequest;->getCompressionOption()Lamazon/whispersync/communication/connection/CompressionOption;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lamazon/whispersync/communication/connection/Policy;->isWiFiNecessary()Z

    move-result v1

    invoke-virtual {p1}, Lamazon/whispersync/communication/srr/SrrRequest;->isWiFiNecessary()Z

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lamazon/whispersync/communication/srr/SrrRequest;->getRequestContext()Lamazon/whispersync/communication/authentication/RequestContext;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 252
    :cond_0
    invoke-virtual {v0}, Lamazon/whispersync/communication/connection/Policy;->isAnonymousCredentialsAllowed()Z

    move-result v1

    .line 255
    invoke-virtual {p1}, Lamazon/whispersync/communication/srr/SrrRequest;->getRequestContext()Lamazon/whispersync/communication/authentication/RequestContext;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 256
    invoke-virtual {p1}, Lamazon/whispersync/communication/srr/SrrRequest;->getRequestContext()Lamazon/whispersync/communication/authentication/RequestContext;

    move-result-object v1

    invoke-virtual {p0, v1}, Lamazon/whispersync/communication/srr/TCommSrrManager;->isAnonymousCredentialsAllowed(Lamazon/whispersync/communication/authentication/RequestContext;)Z

    move-result v1

    .line 259
    :cond_1
    new-instance v2, Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-direct {v2}, Lamazon/whispersync/communication/connection/Policy$Builder;-><init>()V

    invoke-virtual {p1}, Lamazon/whispersync/communication/srr/SrrRequest;->getCompressionOption()Lamazon/whispersync/communication/connection/CompressionOption;

    move-result-object v3

    invoke-virtual {v2, v3}, Lamazon/whispersync/communication/connection/Policy$Builder;->setCompressionOption(Lamazon/whispersync/communication/connection/CompressionOption;)Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-virtual {v0}, Lamazon/whispersync/communication/connection/Policy;->getPriority()Lamazon/whispersync/communication/connection/Priority;

    move-result-object v3

    invoke-virtual {v2, v3}, Lamazon/whispersync/communication/connection/Policy$Builder;->setPriority(Lamazon/whispersync/communication/connection/Priority;)Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-virtual {v0}, Lamazon/whispersync/communication/connection/Policy;->isLowLatencyNecessary()Z

    move-result v3

    invoke-virtual {v2, v3}, Lamazon/whispersync/communication/connection/Policy$Builder;->setIsLowLatencyNecessary(Z)Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-virtual {v0}, Lamazon/whispersync/communication/connection/Policy;->isRequestResponseOnly()Z

    move-result v3

    invoke-virtual {v2, v3}, Lamazon/whispersync/communication/connection/Policy$Builder;->setIsRequestResponseOnly(Z)Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-virtual {v0}, Lamazon/whispersync/communication/connection/Policy;->isClearText()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lamazon/whispersync/communication/srr/SrrRequest;->isClearTextAllowed()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Lamazon/whispersync/communication/connection/Policy$Builder;->setIsClearText(Z)Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-virtual {p1}, Lamazon/whispersync/communication/srr/SrrRequest;->isWiFiNecessary()Z

    move-result p1

    invoke-virtual {v2, p1}, Lamazon/whispersync/communication/connection/Policy$Builder;->setIsWiFiNecessary(Z)Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-virtual {v2, v1}, Lamazon/whispersync/communication/connection/Policy$Builder;->setIsAnonymousCredentialsAllowed(Z)Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-virtual {v2}, Lamazon/whispersync/communication/connection/Policy$Builder;->build()Lamazon/whispersync/communication/connection/Policy;

    move-result-object v0

    :cond_3
    return-object v0
.end method


# virtual methods
.method protected isAnonymousCredentialsAllowed(Lamazon/whispersync/communication/authentication/RequestContext;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public makeRequestAsync(Lamazon/whispersync/communication/srr/SrrRequest;Lamazon/whispersync/communication/ResponseHandler;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/RequestFailedException;,
            Lamazon/whispersync/communication/MissingCredentialsException;
        }
    .end annotation

    move-object/from16 v0, p2

    const-string v1, "Connection cannot be established."

    const-string v2, "TimeAcquireConnection"

    const-string v3, "exception"

    const-string v4, "currentThread.getId"

    const-string/jumbo v5, "makeRequestAsync"

    .line 168
    invoke-virtual/range {p1 .. p1}, Lamazon/whispersync/communication/srr/SrrRequest;->getRequest()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v6

    .line 170
    invoke-virtual/range {p1 .. p1}, Lamazon/whispersync/communication/srr/SrrRequest;->getEndpointIdentity()Lamazon/whispersync/communication/identity/EndpointIdentity;

    move-result-object v7

    .line 172
    invoke-virtual/range {p1 .. p1}, Lamazon/whispersync/communication/srr/SrrRequest;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object v8

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x2

    .line 176
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lamazon/whispersync/communication/srr/TCommSrrManager;->getTimeoutFromSrrRequest(Lamazon/whispersync/communication/srr/SrrRequest;)I

    move-result v13
    :try_end_0
    .catch Lamazon/whispersync/communication/ConnectionAcquisitionFailedException; {:try_start_0 .. :try_end_0} :catch_8

    if-ltz v13, :cond_2

    if-eqz v0, :cond_1

    .line 191
    :try_start_1
    sget-object v14, Lamazon/whispersync/communication/srr/TCommSrrManager;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v15, "acquire connection"

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v4, v9, v11

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->getId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v9, v10

    invoke-virtual {v14, v5, v15, v9}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    new-instance v9, Lamazon/whispersync/communication/srr/SrrConnectionListener;

    invoke-direct {v9, v6, v0, v13, v8}, Lamazon/whispersync/communication/srr/SrrConnectionListener;-><init>(Lorg/apache/http/client/methods/HttpRequestBase;Lamazon/whispersync/communication/ResponseHandler;ILcom/amazon/whispersync/client/metrics/MetricEvent;)V

    .line 195
    invoke-direct/range {p0 .. p1}, Lamazon/whispersync/communication/srr/TCommSrrManager;->overrideConnectionPolicy(Lamazon/whispersync/communication/srr/SrrRequest;)Lamazon/whispersync/communication/connection/Policy;

    move-result-object v0

    .line 197
    invoke-interface {v8, v2}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->startTimer(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lamazon/whispersync/communication/ConnectionAcquisitionFailedException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lamazon/whispersync/communication/connection/ConnectionPolicyException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4

    move-object/from16 v6, p0

    .line 200
    :try_start_2
    iget-object v13, v6, Lamazon/whispersync/communication/srr/TCommSrrManager;->mCommunicationManager:Lamazon/whispersync/communication/CommunicationManager;

    invoke-interface {v13, v7, v0, v9}, Lamazon/whispersync/communication/CommunicationManager;->acquireConnection(Lamazon/whispersync/communication/identity/EndpointIdentity;Lamazon/whispersync/communication/connection/Policy;Lamazon/whispersync/communication/connection/Connection$ConnectionListener;)Lamazon/whispersync/communication/connection/Connection;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    :try_start_3
    invoke-interface {v8, v2}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->stopTimer(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 208
    invoke-interface {v0}, Lamazon/whispersync/communication/connection/Connection;->getConnectionState()I

    move-result v2

    if-ne v2, v12, :cond_0

    .line 211
    invoke-interface {v9, v0}, Lamazon/whispersync/communication/connection/Connection$ConnectionListener;->onOpened(Lamazon/whispersync/communication/connection/Connection;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 203
    invoke-interface {v8, v2}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->stopTimer(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lamazon/whispersync/communication/ConnectionAcquisitionFailedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lamazon/whispersync/communication/connection/ConnectionPolicyException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object/from16 v6, p0

    .line 224
    :goto_0
    sget-object v1, Lamazon/whispersync/communication/srr/TCommSrrManager;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v11

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v10

    aput-object v0, v2, v12

    invoke-virtual {v1, v5, v3, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    new-instance v1, Lamazon/whispersync/communication/RequestFailedException;

    invoke-direct {v1, v0}, Lamazon/whispersync/communication/RequestFailedException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :catch_5
    move-exception v0

    move-object/from16 v6, p0

    .line 221
    :goto_1
    sget-object v1, Lamazon/whispersync/communication/srr/TCommSrrManager;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v11

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v10

    aput-object v0, v2, v12

    invoke-virtual {v1, v5, v3, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    new-instance v1, Lamazon/whispersync/communication/RequestFailedException;

    invoke-direct {v1, v0}, Lamazon/whispersync/communication/RequestFailedException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :catch_6
    move-exception v0

    move-object/from16 v6, p0

    .line 218
    :goto_2
    sget-object v2, Lamazon/whispersync/communication/srr/TCommSrrManager;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v11

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v10

    aput-object v0, v7, v12

    invoke-virtual {v2, v5, v3, v7}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    new-instance v2, Lamazon/whispersync/communication/RequestFailedException;

    invoke-direct {v2, v1, v0}, Lamazon/whispersync/communication/RequestFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_7
    move-exception v0

    move-object/from16 v6, p0

    .line 215
    :goto_3
    sget-object v1, Lamazon/whispersync/communication/srr/TCommSrrManager;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v11

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v10

    aput-object v0, v2, v12

    const-string/jumbo v3, "user exception"

    invoke-virtual {v1, v5, v3, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    throw v0

    :cond_1
    move-object/from16 v6, p0

    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ResponseHandler cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object/from16 v6, p0

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout value should be nonnegative integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_8
    move-exception v0

    move-object/from16 v6, p0

    move-object v2, v0

    .line 178
    sget-object v0, Lamazon/whispersync/communication/srr/TCommSrrManager;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v11

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v10

    aput-object v2, v7, v12

    invoke-virtual {v0, v5, v3, v7}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    new-instance v0, Lamazon/whispersync/communication/RequestFailedException;

    invoke-direct {v0, v1, v2}, Lamazon/whispersync/communication/RequestFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public makeRequestSync(Lamazon/whispersync/communication/srr/SrrRequest;)Lorg/apache/http/HttpResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/TimeoutException;,
            Lamazon/whispersync/communication/RequestFailedException;,
            Lamazon/whispersync/communication/MissingCredentialsException;
        }
    .end annotation

    const-string v0, "exception"

    const-string v1, "currentThread.getId"

    const-string/jumbo v2, "makeRequestSync"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    .line 130
    :try_start_0
    invoke-direct {p0, p1}, Lamazon/whispersync/communication/srr/TCommSrrManager;->getTimeoutFromSrrRequest(Lamazon/whispersync/communication/srr/SrrRequest;)I

    move-result v7

    .line 132
    new-instance v8, Lcom/amazon/whispersync/communication/BlockingResponseHandler;

    invoke-direct {v8, v7}, Lcom/amazon/whispersync/communication/BlockingResponseHandler;-><init>(I)V

    .line 134
    invoke-virtual {p0, p1, v8}, Lamazon/whispersync/communication/srr/TCommSrrManager;->makeRequestAsync(Lamazon/whispersync/communication/srr/SrrRequest;Lamazon/whispersync/communication/ResponseHandler;)V

    .line 136
    invoke-virtual {v8}, Lcom/amazon/whispersync/communication/BlockingResponseHandler;->waitForResponse()Lcom/amazon/whispersync/communication/utils/HttpResponseWithDataPoints;

    move-result-object v7

    .line 138
    invoke-virtual {p1}, Lamazon/whispersync/communication/srr/SrrRequest;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object p1

    invoke-virtual {v7}, Lcom/amazon/whispersync/communication/utils/HttpResponseWithDataPoints;->getDataPoints()Ljava/util/List;

    move-result-object v8

    invoke-interface {p1, v8}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->addDataPoints(Ljava/util/List;)V

    .line 140
    invoke-virtual {v7}, Lcom/amazon/whispersync/communication/utils/HttpResponseWithDataPoints;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lamazon/whispersync/communication/ConnectionAcquisitionFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/amazon/whispersync/client/metrics/MetricsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 152
    sget-object v7, Lamazon/whispersync/communication/srr/TCommSrrManager;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v4

    aput-object p1, v6, v3

    invoke-virtual {v7, v2, v0, v6}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    new-instance v0, Lamazon/whispersync/communication/RequestFailedException;

    const-string v1, "DataPoints corrupted when making http request."

    invoke-direct {v0, v1, p1}, Lamazon/whispersync/communication/RequestFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    .line 149
    sget-object v7, Lamazon/whispersync/communication/srr/TCommSrrManager;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v4

    aput-object p1, v6, v3

    invoke-virtual {v7, v2, v0, v6}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    new-instance v0, Lamazon/whispersync/communication/RequestFailedException;

    const-string v1, "InterruptedException when making http request."

    invoke-direct {v0, v1, p1}, Lamazon/whispersync/communication/RequestFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_2
    move-exception p1

    .line 146
    sget-object v7, Lamazon/whispersync/communication/srr/TCommSrrManager;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v4

    aput-object p1, v6, v3

    invoke-virtual {v7, v2, v0, v6}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    new-instance v0, Lamazon/whispersync/communication/RequestFailedException;

    const-string v1, "Connection cannot be established."

    invoke-direct {v0, v1, p1}, Lamazon/whispersync/communication/RequestFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_3
    move-exception p1

    .line 143
    sget-object v0, Lamazon/whispersync/communication/srr/TCommSrrManager;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v4

    aput-object p1, v6, v3

    const-string/jumbo v1, "user Exception"

    invoke-virtual {v0, v2, v1, v6}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    throw p1
.end method
