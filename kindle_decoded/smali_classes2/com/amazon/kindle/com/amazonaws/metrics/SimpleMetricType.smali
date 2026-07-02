.class public abstract Lcom/amazon/kindle/com/amazonaws/metrics/SimpleMetricType;
.super Ljava/lang/Object;
.source "SimpleMetricType.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 32
    instance-of v0, p1, Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 34
    :cond_0
    check-cast p1, Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;

    .line 35
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/metrics/SimpleMetricType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/metrics/SimpleMetricType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/metrics/SimpleMetricType;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
