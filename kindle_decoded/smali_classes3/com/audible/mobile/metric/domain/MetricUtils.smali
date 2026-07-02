.class public final Lcom/audible/mobile/metric/domain/MetricUtils;
.super Ljava/lang/Object;
.source "MetricUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;
    }
.end annotation


# direct methods
.method public static getConnectedNetworkType(Landroid/content/Context;)Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;
    .locals 1

    .line 30
    invoke-static {p0}, Lcom/audible/mobile/util/NetworkUtils;->getNetworkInfoType(Landroid/content/Context;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 33
    sget-object p0, Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;->NONE:Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;

    return-object p0

    .line 34
    :cond_0
    sget-object v0, Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;->OTHER:Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-lt p0, v0, :cond_1

    .line 35
    sget-object p0, Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;->OTHER:Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;

    return-object p0

    .line 37
    :cond_1
    invoke-static {}, Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;->values()[Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method
