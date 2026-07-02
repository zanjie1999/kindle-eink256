.class public final Lcom/amazon/messaging/odot/OdotClient;
.super Ljava/lang/Object;
.source "OdotClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/messaging/odot/OdotClient$Transport;,
        Lcom/amazon/messaging/odot/OdotClient$Callbacks;,
        Lcom/amazon/messaging/odot/OdotClient$Mode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final callbacks:Lcom/amazon/messaging/odot/OdotClient$Callbacks;

.field private final context:Landroid/content/Context;

.field private final odotClientDAO:Lcom/amazon/messaging/odot/dao/IOdotClientDAO;

.field private final processor:Lcom/amazon/messaging/odot/OdotMessageProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/amazon/messaging/odot/OdotClient;

    invoke-static {v0}, Lcom/amazon/messaging/odot/util/OdotMessageUtil;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/messaging/odot/OdotClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/messaging/odot/OdotClient$Mode;Lcom/amazon/messaging/odot/OdotClient$Callbacks;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 67
    iput-object p1, p0, Lcom/amazon/messaging/odot/OdotClient;->context:Landroid/content/Context;

    .line 68
    invoke-static {p1, p2}, Lcom/amazon/messaging/odot/dao/OdotClientDAO;->newInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/messaging/odot/dao/OdotClientDAO;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/messaging/odot/OdotClient;->odotClientDAO:Lcom/amazon/messaging/odot/dao/IOdotClientDAO;

    .line 69
    iput-object p4, p0, Lcom/amazon/messaging/odot/OdotClient;->callbacks:Lcom/amazon/messaging/odot/OdotClient$Callbacks;

    .line 70
    iget-object p2, p0, Lcom/amazon/messaging/odot/OdotClient;->context:Landroid/content/Context;

    invoke-static {p2, p1, p3, p4}, Lcom/amazon/messaging/odot/OdotMessageProcessor;->newInstance(Landroid/content/Context;Lcom/amazon/messaging/odot/dao/IOdotClientDAO;Lcom/amazon/messaging/odot/OdotClient$Mode;Lcom/amazon/messaging/odot/OdotClient$Callbacks;)Lcom/amazon/messaging/odot/OdotMessageProcessor;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/messaging/odot/OdotClient;->processor:Lcom/amazon/messaging/odot/OdotMessageProcessor;

    .line 71
    invoke-virtual {p1}, Lcom/amazon/messaging/odot/OdotMessageProcessor;->processOdotMessages()V

    .line 72
    iget-object p1, p0, Lcom/amazon/messaging/odot/OdotClient;->odotClientDAO:Lcom/amazon/messaging/odot/dao/IOdotClientDAO;

    invoke-static {p1}, Lcom/amazon/messaging/odot/OdotMessagePurger;->newInstance(Lcom/amazon/messaging/odot/dao/IOdotClientDAO;)Lcom/amazon/messaging/odot/OdotMessagePurger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/messaging/odot/OdotMessagePurger;->purgeOdotMessages()V

    return-void

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "callbacks is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "mode is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "context is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static newInstance(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/messaging/odot/OdotClient$Mode;Lcom/amazon/messaging/odot/OdotClient$Callbacks;)Lcom/amazon/messaging/odot/OdotClient;
    .locals 1

    .line 88
    new-instance v0, Lcom/amazon/messaging/odot/OdotClient;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/messaging/odot/OdotClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/messaging/odot/OdotClient$Mode;Lcom/amazon/messaging/odot/OdotClient$Callbacks;)V

    return-object v0
.end method


# virtual methods
.method public enqueue(Ljava/lang/String;[BLjava/lang/String;Lcom/amazon/messaging/odot/OdotClient$Transport;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/messaging/odot/OdotClientException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v9, "Error generating message signature"

    if-eqz p1, :cond_8

    if-eqz v0, :cond_7

    if-eqz p3, :cond_6

    if-eqz p4, :cond_5

    .line 117
    array-length v2, v0

    const/16 v3, 0x1800

    if-gt v2, v3, :cond_4

    .line 121
    iget-object v2, v1, Lcom/amazon/messaging/odot/OdotClient;->callbacks:Lcom/amazon/messaging/odot/OdotClient$Callbacks;

    invoke-interface {v2}, Lcom/amazon/messaging/odot/OdotClient$Callbacks;->getAccount()Ljava/lang/String;

    move-result-object v8

    .line 122
    invoke-static {v8}, Lcom/amazon/messaging/odot/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 126
    invoke-static {}, Lcom/amazon/messaging/odot/util/OdotMessageUtil;->generateId()Ljava/lang/String;

    move-result-object v13

    .line 127
    sget-object v10, Lcom/amazon/messaging/odot/dto/OdotMessageStatus;->NOT_PROCESSED:Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 132
    :try_start_0
    invoke-static/range {p1 .. p2}, Lcom/amazon/messaging/odot/util/OdotMessageUtil;->generateCRC32(Ljava/lang/String;[B)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 137
    iget-object v2, v1, Lcom/amazon/messaging/odot/OdotClient;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/amazon/messaging/odot/OdotMessageSigner;->getInstance(Landroid/content/Context;)Lcom/amazon/messaging/odot/IOdotMessageSigner;

    move-result-object v6

    move-object v2, v6

    move-object v3, v13

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object v0, v6

    move-wide v6, v14

    .line 140
    :try_start_1
    invoke-interface/range {v2 .. v8}, Lcom/amazon/messaging/odot/IOdotMessageSigner;->generateMessageSignatureViaMAP(Ljava/lang/String;Ljava/lang/String;[BJLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    invoke-interface {v0, v2}, Lcom/amazon/messaging/odot/IOdotMessageSigner;->getSignatureFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_2

    .line 151
    invoke-interface {v0, v2}, Lcom/amazon/messaging/odot/IOdotMessageSigner;->getAdpTokenFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 153
    new-instance v9, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 154
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    move-object v2, v9

    move-object v3, v13

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object v6, v10

    move-object v14, v9

    move-object/from16 v9, v16

    move-object v10, v0

    move-object/from16 v11, p3

    invoke-direct/range {v2 .. v12}, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;-><init>(Ljava/lang/String;[BLjava/lang/String;Lcom/amazon/messaging/odot/dto/OdotMessageStatus;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, v1, Lcom/amazon/messaging/odot/OdotClient;->odotClientDAO:Lcom/amazon/messaging/odot/dao/IOdotClientDAO;

    invoke-interface {v0, v14}, Lcom/amazon/messaging/odot/dao/IOdotClientDAO;->insertOdotMessage(Lcom/amazon/messaging/odot/dto/IOdotMessage;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, v1, Lcom/amazon/messaging/odot/OdotClient;->processor:Lcom/amazon/messaging/odot/OdotMessageProcessor;

    invoke-virtual {v0}, Lcom/amazon/messaging/odot/OdotMessageProcessor;->notifyMessageAdded()V

    const/4 v0, 0x3

    .line 161
    invoke-static {v0}, Lcom/amazon/messaging/odot/util/Log;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    sget-object v0, Lcom/amazon/messaging/odot/OdotClient;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v13, v2, v3

    const-string v3, "Inserted message with ID [%s]"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/messaging/odot/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 156
    :cond_1
    new-instance v0, Lcom/amazon/messaging/odot/OdotClientException;

    const-string v2, "Error inserting message"

    invoke-direct {v0, v2}, Lcom/amazon/messaging/odot/OdotClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_2
    sget-object v0, Lcom/amazon/messaging/odot/OdotClient;->TAG:Ljava/lang/String;

    const-string v2, "Message signer generated null signature"

    invoke-static {v0, v2}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v0, Lcom/amazon/messaging/odot/OdotClientException;

    invoke-direct {v0, v9}, Lcom/amazon/messaging/odot/OdotClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 142
    sget-object v0, Lcom/amazon/messaging/odot/OdotClient;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    new-instance v0, Lcom/amazon/messaging/odot/OdotClientException;

    invoke-direct {v0, v9, v2}, Lcom/amazon/messaging/odot/OdotClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v0

    .line 134
    new-instance v2, Lcom/amazon/messaging/odot/OdotClientException;

    const-string v3, "Error generating CRC for message"

    invoke-direct {v2, v3, v0}, Lcom/amazon/messaging/odot/OdotClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 123
    :cond_3
    new-instance v0, Lcom/amazon/messaging/odot/OdotClientException;

    const-string v2, "account is null or empty"

    invoke-direct {v0, v2}, Lcom/amazon/messaging/odot/OdotClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "payload exceeds MAX_PAYLOAD_SIZE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p2

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "transport is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "requester is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "payload is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "topic is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public purge()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/amazon/messaging/odot/OdotClient;->odotClientDAO:Lcom/amazon/messaging/odot/dao/IOdotClientDAO;

    invoke-interface {v0}, Lcom/amazon/messaging/odot/dao/IOdotClientDAO;->deleteAllOdotMessages()Z

    return-void
.end method
