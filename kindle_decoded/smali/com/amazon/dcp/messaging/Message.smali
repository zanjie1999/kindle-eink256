.class public Lcom/amazon/dcp/messaging/Message;
.super Ljava/lang/Object;
.source "Message.java"


# instance fields
.field private final mAccountId:Ljava/lang/String;

.field private final mId:Ljava/lang/String;

.field private final mPayload:[B

.field private final mTopic:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    .line 30
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    .line 40
    iput-object p1, p0, Lcom/amazon/dcp/messaging/Message;->mId:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/amazon/dcp/messaging/Message;->mTopic:Ljava/lang/String;

    .line 42
    array-length p1, p3

    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/dcp/messaging/Message;->mPayload:[B

    .line 43
    iput-object p4, p0, Lcom/amazon/dcp/messaging/Message;->mAccountId:Ljava/lang/String;

    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Payload cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Topic cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Id cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static constructMessageFromIntent(Landroid/content/Intent;)Lcom/amazon/dcp/messaging/Message;
    .locals 4

    .line 75
    invoke-static {p0}, Lcom/amazon/dcp/messaging/Message;->getIdFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {p0}, Lcom/amazon/dcp/messaging/Message;->getPayloadFromIntent(Landroid/content/Intent;)[B

    move-result-object v1

    .line 77
    invoke-static {p0}, Lcom/amazon/dcp/messaging/Message;->getTopicFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-static {p0}, Lcom/amazon/dcp/messaging/Message;->getAccountIdFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    new-instance v3, Lcom/amazon/dcp/messaging/Message;

    invoke-direct {v3, v0, v2, v1, p0}, Lcom/amazon/dcp/messaging/Message;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    return-object v3

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getAccountIdFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.amazon.dcp.messaging.ACCOUNT_ID"

    .line 95
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getIdFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.amazon.dcp.messaging.MESSAGE_ID"

    .line 90
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPayloadFromIntent(Landroid/content/Intent;)[B
    .locals 1

    const-string v0, "com.amazon.dcp.messaging.MESSAGE_PAYLOAD"

    .line 112
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static getTopicFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .line 100
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "com.amazon.dcp.messaging.topic."

    .line 102
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f

    .line 107
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/dcp/messaging/Message;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getPayload()[B
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/amazon/dcp/messaging/Message;->mPayload:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/dcp/messaging/Message;->mTopic:Ljava/lang/String;

    return-object v0
.end method
