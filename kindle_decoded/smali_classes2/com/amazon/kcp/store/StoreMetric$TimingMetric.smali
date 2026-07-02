.class Lcom/amazon/kcp/store/StoreMetric$TimingMetric;
.super Lcom/amazon/kcp/store/StoreMetric$Metric;
.source "StoreMetric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/StoreMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimingMetric"
.end annotation


# instance fields
.field private final time:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/store/StoreMetric$Metric;-><init>(Lorg/json/JSONObject;Lcom/amazon/kcp/store/StoreMetric$1;)V

    const-string v0, "timing"

    .line 87
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/store/StoreMetric$TimingMetric;->time:I

    return-void
.end method


# virtual methods
.method public getMetricsData()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 93
    iget v1, p0, Lcom/amazon/kcp/store/StoreMetric$TimingMetric;->time:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Timer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
