.class public Lcom/amazon/client/metrics/common/batch/creator/PriorityChannelPair;
.super Ljava/lang/Object;
.source "PriorityChannelPair.java"


# instance fields
.field private final mChannel:Lcom/amazon/client/metrics/common/Channel;

.field private final mPriority:Lcom/amazon/client/metrics/common/Priority;


# direct methods
.method public constructor <init>(Lcom/amazon/client/metrics/common/Priority;Lcom/amazon/client/metrics/common/Channel;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 38
    iput-object p1, p0, Lcom/amazon/client/metrics/common/batch/creator/PriorityChannelPair;->mPriority:Lcom/amazon/client/metrics/common/Priority;

    .line 39
    iput-object p2, p0, Lcom/amazon/client/metrics/common/batch/creator/PriorityChannelPair;->mChannel:Lcom/amazon/client/metrics/common/Channel;

    return-void

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Channel may not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Priority may not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getChannel()Lcom/amazon/client/metrics/common/Channel;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/client/metrics/common/batch/creator/PriorityChannelPair;->mChannel:Lcom/amazon/client/metrics/common/Channel;

    return-object v0
.end method

.method public getPriority()Lcom/amazon/client/metrics/common/Priority;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/client/metrics/common/batch/creator/PriorityChannelPair;->mPriority:Lcom/amazon/client/metrics/common/Priority;

    return-object v0
.end method
