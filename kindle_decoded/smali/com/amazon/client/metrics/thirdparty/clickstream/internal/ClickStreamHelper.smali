.class public Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamHelper;
.super Ljava/lang/Object;
.source "ClickStreamHelper.java"


# direct methods
.method public static addDatapoint(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/client/metrics/thirdparty/DataPoint;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 78
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/DataPoint;

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/DataPointType;->CK:Lcom/amazon/client/metrics/thirdparty/DataPointType;

    const/4 v2, 0x1

    invoke-direct {v0, p1, p2, v2, v1}, Lcom/amazon/client/metrics/thirdparty/DataPoint;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/amazon/client/metrics/thirdparty/DataPointType;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static addDatapointsToList(Ljava/util/List;Lcom/amazon/client/metrics/thirdparty/clickstream/ClickStreamInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/client/metrics/thirdparty/DataPoint;",
            ">;",
            "Lcom/amazon/client/metrics/thirdparty/clickstream/ClickStreamInfo;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 106
    :cond_0
    invoke-interface {p1}, Lcom/amazon/client/metrics/thirdparty/clickstream/ClickStreamInfo;->getDataPoints()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/client/metrics/thirdparty/DataPoint;

    .line 107
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static generateRequestId()Ljava/lang/String;
    .locals 4

    .line 90
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 91
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 92
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Random;->setSeed(J)V

    .line 93
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x14

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v2, v1, 0x14

    .line 94
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
