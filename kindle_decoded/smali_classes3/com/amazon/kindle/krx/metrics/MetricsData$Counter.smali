.class public Lcom/amazon/kindle/krx/metrics/MetricsData$Counter;
.super Ljava/lang/Object;
.source "MetricsData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/metrics/MetricsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Counter"
.end annotation


# instance fields
.field count:I

.field freeText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/amazon/kindle/krx/metrics/MetricsData$Counter;->count:I

    return v0
.end method

.method public getFreeText()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazon/kindle/krx/metrics/MetricsData$Counter;->freeText:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 107
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->omitNullValues()Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget v1, p0, Lcom/amazon/kindle/krx/metrics/MetricsData$Counter;->count:I

    const-string v2, "count"

    .line 109
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/kindle/krx/metrics/MetricsData$Counter;->freeText:Ljava/lang/String;

    const-string v2, "freeText"

    .line 110
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 111
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
