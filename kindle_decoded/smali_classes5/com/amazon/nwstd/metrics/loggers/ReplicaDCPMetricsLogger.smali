.class public Lcom/amazon/nwstd/metrics/loggers/ReplicaDCPMetricsLogger;
.super Lcom/amazon/nwstd/metrics/loggers/DCPMetricsLogger;
.source "ReplicaDCPMetricsLogger.java"


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/amazon/nwstd/metrics/loggers/DCPMetricsLogger;-><init>(Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    return-void
.end method


# virtual methods
.method public reportEvent(Lcom/amazon/nwstd/metrics/MetricsTags;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/nwstd/metrics/MetricsTags;",
            "Ljava/util/Map<",
            "Lcom/amazon/nwstd/metrics/MetricsAttributes;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 21
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/ReplicaDCPMetricsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsTags:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 51
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown tag is reported in ReplicaDCPMetricsLogger: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    goto :goto_0

    .line 26
    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/amazon/nwstd/metrics/loggers/DCPMetricsLogger;->reportEvent(Lcom/amazon/nwstd/metrics/MetricsTags;Ljava/util/Map;)V

    :cond_0
    :goto_0
    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
