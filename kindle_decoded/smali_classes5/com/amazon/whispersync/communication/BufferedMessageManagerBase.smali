.class public abstract Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;
.super Ljava/lang/Object;
.source "BufferedMessageManagerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageInstanceTracker;,
        Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$ByteBufferChainMessageEntry;,
        Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageEntry;,
        Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageIdentityWithMessageId;,
        Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageIdentityKey;
    }
.end annotation


# static fields
.field protected static final DEFAULT_MESSAGE_TRACKING_TIMEOUT_IN_MILLIS:J = 0x1b7740L

.field public static final MAX_MESSAGE_BUFFER_SIZE:I = 0xa00000

.field protected static final NO_CHANNEL_SPECIFIED:I = -0x1

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;

.field private static sDeadMessageRemoverNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mDeadMessageRemover:Lcom/amazon/whispersync/communication/PeriodicTimeoutInstanceRemover;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/communication/PeriodicTimeoutInstanceRemover<",
            "Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageIdentityKey;",
            ">;"
        }
    .end annotation
.end field

.field protected mMessageFragmentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageIdentityKey;",
            "Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$ByteBufferChainMessageEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessageInstanceTracker:Lcom/amazon/whispersync/communication/InstanceTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/communication/InstanceTracker<",
            "Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageIdentityKey;",
            ">;"
        }
    .end annotation
.end field

.field protected final mMessageTrackingTimeoutInMillis:J

.field private final mThrownAwayMessages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageIdentityKey;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 275
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "TComm.BufferedMessageManagerBase"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    .line 301
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->sDeadMessageRemoverNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/32 v0, 0x1b7740

    .line 320
    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->mThrownAwayMessages:Ljava/util/Map;

    .line 333
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->mMessageFragmentMap:Ljava/util/Map;

    .line 335
    iput-wide p1, p0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->mMessageTrackingTimeoutInMillis:J

    .line 337
    new-instance p1, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageInstanceTracker;

    invoke-direct {p1, p0}, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageInstanceTracker;-><init>(Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;)V

    iput-object p1, p0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->mMessageInstanceTracker:Lcom/amazon/whispersync/communication/InstanceTracker;

    .line 338
    iget-wide v0, p0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->mMessageTrackingTimeoutInMillis:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->createDeadMessageRemover(Lcom/amazon/whispersync/communication/InstanceTracker;J)Lcom/amazon/whispersync/communication/PeriodicTimeoutInstanceRemover;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->mDeadMessageRemover:Lcom/amazon/whispersync/communication/PeriodicTimeoutInstanceRemover;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;)Ljava/util/Map;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->mThrownAwayMessages:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100()Lcom/amazon/whispersync/dp/logger/DPLogger;
    .locals 1

    .line 49
    sget-object v0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-object v0
.end method


# virtual methods
.method protected createDeadMessageRemover(Lcom/amazon/whispersync/communication/InstanceTracker;J)Lcom/amazon/whispersync/communication/PeriodicTimeoutInstanceRemover;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/communication/InstanceTracker<",
            "Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageIdentityKey;",
            ">;J)",
            "Lcom/amazon/whispersync/communication/PeriodicTimeoutInstanceRemover<",
            "Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageIdentityKey;",
            ">;"
        }
    .end annotation

    .line 475
    new-instance v0, Lcom/amazon/whispersync/communication/PeriodicTimeoutInstanceRemover;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/whispersync/communication/PeriodicTimeoutInstanceRemover;-><init>(Lcom/amazon/whispersync/communication/InstanceTracker;J)V

    return-object v0
.end method

.method protected createMessageIdentityKey(Lamazon/whispersync/communication/identity/EndpointIdentity;I)Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageIdentityKey;
    .locals 1

    .line 466
    new-instance v0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageIdentityWithMessageId;

    invoke-direct {v0, p1, p2}, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageIdentityWithMessageId;-><init>(Lamazon/whispersync/communication/identity/EndpointIdentity;I)V

    return-object v0
.end method

.method protected abstract handleCompletedMessage(Lamazon/whispersync/communication/identity/EndpointIdentity;Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageEntry;)V
.end method

.method protected handleMessageFragment(Lamazon/whispersync/communication/identity/EndpointIdentity;ILamazon/whispersync/communication/Message;Z)V
    .locals 6

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 365
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->handleMessageFragment(Lamazon/whispersync/communication/identity/EndpointIdentity;ILamazon/whispersync/communication/Message;ZI)V

    return-void
.end method

.method protected handleMessageFragment(Lamazon/whispersync/communication/identity/EndpointIdentity;ILamazon/whispersync/communication/Message;ZI)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p5

    .line 381
    invoke-virtual {v0, v1, v3}, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->verifyOnMessageFragmentParams(Lamazon/whispersync/communication/identity/EndpointIdentity;Lamazon/whispersync/communication/Message;)V

    .line 383
    sget-object v5, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "identity"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v9, 0x1

    aput-object v1, v6, v9

    const-string v10, "messageId"

    const/4 v11, 0x2

    aput-object v10, v6, v11

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x3

    aput-object v12, v6, v13

    const-string v12, "message"

    const/4 v14, 0x4

    aput-object v12, v6, v14

    const/4 v12, 0x5

    aput-object v3, v6, v12

    const-string v15, "moreToCome"

    const/4 v12, 0x6

    aput-object v15, v6, v12

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const/16 v17, 0x7

    aput-object v16, v6, v17

    const-string v12, "handleMessageFragment"

    const-string v13, "beginning execution"

    invoke-virtual {v5, v12, v13, v6}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    iget-object v5, v0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->mDeadMessageRemover:Lcom/amazon/whispersync/communication/PeriodicTimeoutInstanceRemover;

    invoke-virtual {v5}, Lcom/amazon/whispersync/communication/PeriodicTimeoutInstanceRemover;->cleanIfTimesUp()V

    .line 389
    invoke-virtual/range {p0 .. p2}, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->createMessageIdentityKey(Lamazon/whispersync/communication/identity/EndpointIdentity;I)Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageIdentityKey;

    move-result-object v5

    .line 390
    iget-object v6, v0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->mMessageFragmentMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$ByteBufferChainMessageEntry;

    .line 395
    iget-object v13, v0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->mThrownAwayMessages:Ljava/util/Map;

    invoke-interface {v13, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    if-nez p4, :cond_0

    .line 397
    sget-object v3, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v4, v14, [Ljava/lang/Object;

    aput-object v7, v4, v8

    aput-object v1, v4, v9

    aput-object v10, v4, v11

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v4, v2

    const-string v1, "last fragment of a thrown away message."

    invoke-virtual {v3, v12, v1, v4}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    iget-object v1, v0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->mThrownAwayMessages:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 401
    :cond_0
    sget-object v3, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v4, v14, [Ljava/lang/Object;

    aput-object v7, v4, v8

    aput-object v1, v4, v9

    aput-object v10, v4, v11

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v4, v2

    const-string v1, "non-last fragment of a thrown away message."

    invoke-virtual {v3, v12, v1, v4}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    iget-object v1, v0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->mThrownAwayMessages:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v13, "receivedMessageFragments"

    if-nez p4, :cond_3

    if-eqz v6, :cond_2

    .line 414
    sget-object v4, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v15, 0x6

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v7, v15, v8

    aput-object v1, v15, v9

    aput-object v10, v15, v11

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x3

    aput-object v2, v15, v7

    aput-object v13, v15, v14

    const/4 v2, 0x5

    aput-object v6, v15, v2

    const-string v2, "last fragment of a buffered message."

    invoke-virtual {v4, v12, v2, v15}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    iget-object v2, v0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->mMessageFragmentMap:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    invoke-virtual {v6, v3}, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$ByteBufferChainMessageEntry;->appendFragment(Lamazon/whispersync/communication/Message;)V

    .line 419
    invoke-virtual {v0, v1, v6}, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->handleCompletedMessage(Lamazon/whispersync/communication/identity/EndpointIdentity;Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageEntry;)V

    goto/16 :goto_3

    .line 421
    :cond_2
    sget-object v5, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v6, v8, [Ljava/lang/Object;

    const-string v7, "last and first fragment of a message, possibly bug"

    invoke-virtual {v5, v12, v7, v6}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 423
    new-instance v5, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageEntry;

    invoke-direct {v5, v3, v2, v4}, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageEntry;-><init>(Lamazon/whispersync/communication/Message;II)V

    invoke-virtual {v0, v1, v5}, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->handleCompletedMessage(Lamazon/whispersync/communication/identity/EndpointIdentity;Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageEntry;)V

    goto/16 :goto_3

    .line 428
    :cond_3
    invoke-interface/range {p3 .. p3}, Lamazon/whispersync/communication/Message;->getPayloadSize()I

    move-result v18

    if-lez v18, :cond_4

    const/16 v18, 0x1

    goto :goto_1

    :cond_4
    const/16 v18, 0x0

    :goto_1
    invoke-static/range {v18 .. v18}, Lcom/amazon/whispersync/dp/utils/FailFast;->expectTrue(Z)V

    if-nez v6, :cond_5

    .line 429
    invoke-interface/range {p3 .. p3}, Lamazon/whispersync/communication/Message;->getPayloadSize()I

    move-result v18

    goto :goto_2

    :cond_5
    invoke-virtual {v6}, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageEntry;->getMessage()Lamazon/whispersync/communication/Message;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lamazon/whispersync/communication/Message;->getPayloadSize()I

    move-result v18

    invoke-interface/range {p3 .. p3}, Lamazon/whispersync/communication/Message;->getPayloadSize()I

    move-result v19

    add-int v18, v18, v19

    :goto_2
    move/from16 v14, v18

    const/high16 v9, 0xa00000

    if-le v14, v9, :cond_7

    .line 433
    sget-object v1, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v13, v2, v8

    const/4 v3, 0x1

    aput-object v6, v2, v3

    const-string v3, "can\'t buffer a too large message, throw it away."

    invoke-virtual {v1, v12, v3, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v6, :cond_6

    .line 437
    iget-object v1, v0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->mMessageFragmentMap:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    :cond_6
    iget-object v1, v0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->mThrownAwayMessages:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    if-nez v6, :cond_8

    .line 443
    sget-object v6, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v8

    const/4 v7, 0x1

    aput-object v1, v9, v7

    aput-object v10, v9, v11

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v7, 0x3

    aput-object v1, v9, v7

    const/4 v1, 0x4

    aput-object v15, v9, v1

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v7, 0x5

    aput-object v1, v9, v7

    const-string v1, "new fragmented message."

    invoke-virtual {v6, v12, v1, v9}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    new-instance v1, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$ByteBufferChainMessageEntry;

    new-instance v6, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;

    invoke-direct {v6, v3}, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;-><init>(Lamazon/whispersync/communication/Message;)V

    invoke-direct {v1, v6, v2, v4}, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$ByteBufferChainMessageEntry;-><init>(Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;II)V

    .line 447
    iget-object v2, v0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->mMessageFragmentMap:Ljava/util/Map;

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v1, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v2, v11, [Ljava/lang/Object;

    const-string v3, "mMessageFragmentMap.size"

    aput-object v3, v2, v8

    iget-object v3, v0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->mMessageFragmentMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "added message entry to message fragment map"

    invoke-virtual {v1, v12, v3, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    const/4 v4, 0x1

    .line 451
    sget-object v1, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v13, v2, v8

    aput-object v6, v2, v4

    const-string v4, "append to buffered fragments."

    invoke-virtual {v1, v12, v4, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    invoke-virtual {v6, v3}, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$ByteBufferChainMessageEntry;->appendFragment(Lamazon/whispersync/communication/Message;)V

    :goto_3
    return-void
.end method

.method protected verifyOnMessageFragmentParams(Lamazon/whispersync/communication/identity/EndpointIdentity;Lamazon/whispersync/communication/Message;)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    return-void

    .line 488
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Message cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 485
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "EndpointIdentity cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
