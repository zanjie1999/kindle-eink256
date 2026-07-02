.class public Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponse;
.super Ljava/lang/Object;
.source "PostMessagesResponse.java"


# instance fields
.field private final mMessageResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryAfter:Ljava/lang/String;

.field private mStatusCode:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponse;->mMessageResponses:Ljava/util/List;

    const-wide/16 v0, 0xc8

    .line 19
    iput-wide v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponse;->mStatusCode:J

    return-void
.end method


# virtual methods
.method public addMessageResponse(Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponse;->mMessageResponses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getMessageResponse(J)Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;
    .locals 3

    .line 29
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponse;->getNumMessageResponses()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "GetDevicesWithMessagingResponse: getMessageResponse: index out of range."

    .line 31
    invoke-static {p2, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponse;->mMessageResponses:Ljava/util/List;

    long-to-int p2, p1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;

    return-object p1
.end method

.method public getNumMessageResponses()J
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponse;->mMessageResponses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getRetryAfter()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponse;->mRetryAfter:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponse;->mStatusCode:J

    return-wide v0
.end method

.method public setRetryAfter(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponse;->mRetryAfter:Ljava/lang/String;

    return-void
.end method

.method public setStatusCode(J)V
    .locals 0

    .line 53
    iput-wide p1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponse;->mStatusCode:J

    return-void
.end method
