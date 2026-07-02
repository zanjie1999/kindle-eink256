.class public Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;
.super Ljava/lang/Object;
.source "PriorityChannelPair.java"


# instance fields
.field final mChannel:Lcom/amazon/client/metrics/thirdparty/Channel;

.field final mPriority:Lcom/amazon/client/metrics/thirdparty/Priority;


# direct methods
.method public constructor <init>(Lcom/amazon/client/metrics/thirdparty/Priority;Lcom/amazon/client/metrics/thirdparty/Channel;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;->mPriority:Lcom/amazon/client/metrics/thirdparty/Priority;

    .line 12
    iput-object p2, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;->mChannel:Lcom/amazon/client/metrics/thirdparty/Channel;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 49
    :cond_1
    const-class v2, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 52
    :cond_2
    check-cast p1, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;

    .line 53
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;->mChannel:Lcom/amazon/client/metrics/thirdparty/Channel;

    iget-object v3, p1, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;->mChannel:Lcom/amazon/client/metrics/thirdparty/Channel;

    if-eq v2, v3, :cond_3

    return v1

    .line 56
    :cond_3
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;->mPriority:Lcom/amazon/client/metrics/thirdparty/Priority;

    iget-object p1, p1, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;->mPriority:Lcom/amazon/client/metrics/thirdparty/Priority;

    if-eq v2, p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getChannel()Lcom/amazon/client/metrics/thirdparty/Channel;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;->mChannel:Lcom/amazon/client/metrics/thirdparty/Channel;

    return-object v0
.end method

.method public getPriority()Lcom/amazon/client/metrics/thirdparty/Priority;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;->mPriority:Lcom/amazon/client/metrics/thirdparty/Priority;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;->mChannel:Lcom/amazon/client/metrics/thirdparty/Channel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 33
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;->mPriority:Lcom/amazon/client/metrics/thirdparty/Priority;

    if-nez v2, :cond_1

    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method
