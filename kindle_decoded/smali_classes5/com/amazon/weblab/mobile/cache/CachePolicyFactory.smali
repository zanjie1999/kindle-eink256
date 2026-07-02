.class public Lcom/amazon/weblab/mobile/cache/CachePolicyFactory;
.super Ljava/lang/Object;
.source "CachePolicyFactory.java"


# direct methods
.method public static createCachePolicy(Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;Lcom/amazon/weblab/mobile/settings/Interval;)Lcom/amazon/weblab/mobile/cache/ICachePolicy;
    .locals 2

    .line 22
    sget-object v0, Lcom/amazon/weblab/mobile/cache/CachePolicyFactory$1;->$SwitchMap$com$amazon$weblab$mobile$settings$MobileWeblabCachePolicyType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-ne v0, p1, :cond_0

    .line 28
    new-instance p0, Lcom/amazon/weblab/mobile/cache/AutoPolicy;

    invoke-direct {p0}, Lcom/amazon/weblab/mobile/cache/AutoPolicy;-><init>()V

    return-object p0

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not supported"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_1
    new-instance p0, Lcom/amazon/weblab/mobile/cache/OnFirstPolicy;

    invoke-direct {p0, p1}, Lcom/amazon/weblab/mobile/cache/OnFirstPolicy;-><init>(Lcom/amazon/weblab/mobile/settings/Interval;)V

    return-object p0

    .line 24
    :cond_2
    new-instance p0, Lcom/amazon/weblab/mobile/cache/DisabledPolicy;

    invoke-direct {p0}, Lcom/amazon/weblab/mobile/cache/DisabledPolicy;-><init>()V

    return-object p0
.end method
