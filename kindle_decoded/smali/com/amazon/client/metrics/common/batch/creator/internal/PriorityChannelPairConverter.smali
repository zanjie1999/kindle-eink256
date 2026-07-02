.class public Lcom/amazon/client/metrics/common/batch/creator/internal/PriorityChannelPairConverter;
.super Ljava/lang/Object;
.source "PriorityChannelPairConverter.java"


# direct methods
.method public static convertCommonToThirdParty(Lcom/amazon/client/metrics/common/batch/creator/PriorityChannelPair;)Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "convertCommonToThird"

    const-string v0, "Returning null for null Common PriorityChannelPair input"

    .line 54
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/client/metrics/common/batch/creator/PriorityChannelPair;->getPriority()Lcom/amazon/client/metrics/common/Priority;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lcom/amazon/client/metrics/common/batch/creator/PriorityChannelPair;->getChannel()Lcom/amazon/client/metrics/common/Channel;

    move-result-object p0

    .line 63
    new-instance v1, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;

    .line 64
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/client/metrics/thirdparty/Priority;->valueOf(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/Priority;

    move-result-object v0

    .line 65
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/client/metrics/thirdparty/Channel;->valueOf(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/Channel;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;-><init>(Lcom/amazon/client/metrics/thirdparty/Priority;Lcom/amazon/client/metrics/thirdparty/Channel;)V

    return-object v1
.end method
