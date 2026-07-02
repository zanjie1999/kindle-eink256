.class public Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;
.super Ljava/lang/Object;
.source "Outliers.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient distributionAfter:Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;

.field private transient distributionBefore:Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;

.field private values:Ljava/util/List;


# direct methods
.method public constructor <init>(DLcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;)V
    .locals 0

    .line 72
    invoke-direct {p0, p3, p4}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;-><init>(Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;)V

    .line 73
    iget-object p3, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->values:Ljava/util/List;

    new-instance p4, Ljava/lang/Double;

    invoke-direct {p4, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->values:Ljava/util/List;

    .line 55
    iput-object p1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->distributionBefore:Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;

    .line 56
    iput-object p2, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->distributionAfter:Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;)V
    .locals 6

    .line 90
    invoke-direct {p0, p2, p3}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;-><init>(Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;)V

    if-eqz p1, :cond_5

    .line 91
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_4

    :cond_0
    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 94
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_5

    .line 95
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 96
    instance-of v0, v0, Ljava/lang/Double;

    if-nez v0, :cond_1

    goto :goto_3

    .line 101
    :cond_1
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x0

    .line 104
    :goto_1
    iget-object v3, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->values:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 105
    iget-object v3, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->values:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    cmpl-double v5, v3, v0

    if-lez v5, :cond_2

    .line 107
    iget-object v3, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->values:Ljava/util/List;

    new-instance v4, Ljava/lang/Double;

    invoke-direct {v4, v0, v1}, Ljava/lang/Double;-><init>(D)V

    invoke-interface {v3, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 112
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->values:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 114
    iget-object v2, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->values:Ljava/util/List;

    new-instance v3, Ljava/lang/Double;

    invoke-direct {v3, v0, v1}, Ljava/lang/Double;-><init>(D)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_5
    :goto_4
    return-void
.end method


# virtual methods
.method public addOutlier(D)Z
    .locals 9

    .line 163
    invoke-virtual {p0, p1, p2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->doesSampleBelongHere(D)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->values:Ljava/util/List;

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v2

    :cond_1
    const/4 v0, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 176
    :goto_0
    iget-object v6, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->values:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 177
    iget-object v6, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->values:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v8, v6, p1

    if-lez v8, :cond_2

    .line 179
    iget-object v4, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->values:Ljava/util/List;

    new-instance v6, Ljava/lang/Double;

    invoke-direct {v6, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-interface {v4, v3, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    .line 183
    iget-object v8, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->distributionBefore:Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;

    if-eqz v8, :cond_3

    .line 188
    invoke-virtual {v8, v6, v7}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->addToDistribution(D)Z

    move-result v4

    if-eqz v4, :cond_3

    move v5, v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 197
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->values:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 198
    iget-object v3, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->values:Ljava/util/List;

    new-instance v4, Ljava/lang/Double;

    invoke-direct {v4, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eq v5, v0, :cond_6

    .line 204
    iget-object p1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->values:Ljava/util/List;

    add-int/2addr v5, v2

    invoke-interface {p1, v1, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 209
    :cond_6
    iget-object p1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->distributionAfter:Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;

    if-eqz p1, :cond_8

    .line 210
    iget-object p1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->values:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    const/4 p2, 0x1

    const/4 v1, -0x1

    :goto_2
    if-ltz p1, :cond_9

    if-eqz p2, :cond_9

    .line 211
    iget-object p2, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->values:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 214
    iget-object p2, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->distributionAfter:Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;

    invoke-virtual {p2, v3, v4}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->addToDistribution(D)Z

    move-result p2

    if-eqz p2, :cond_7

    move v1, p1

    :cond_7
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_8
    const/4 v1, -0x1

    :cond_9
    if-eq v1, v0, :cond_a

    .line 222
    iget-object p1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->values:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1, v1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_a
    return v2
.end method

.method doesSampleBelongHere(D)Z
    .locals 7

    .line 132
    sget-wide v0, Ljava/lang/Double;->MIN_VALUE:D

    .line 134
    iget-object v2, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->distributionBefore:Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;

    if-eqz v2, :cond_0

    .line 135
    invoke-virtual {v2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->getMean()D

    move-result-wide v0

    .line 137
    :cond_0
    iget-object v2, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->distributionAfter:Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;

    if-eqz v2, :cond_1

    .line 138
    invoke-virtual {v2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->getMean()D

    move-result-wide v2

    goto :goto_0

    :cond_1
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 141
    :goto_0
    iget-object v4, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->distributionBefore:Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;

    const/4 v5, 0x0

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->distributionAfter:Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;

    if-nez v4, :cond_2

    return v5

    .line 143
    :cond_2
    iget-object v4, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->distributionBefore:Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;

    const/4 v6, 0x1

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->distributionAfter:Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;

    if-nez v4, :cond_4

    cmpl-double v2, p1, v0

    if-lez v2, :cond_3

    const/4 v5, 0x1

    :cond_3
    return v5

    .line 145
    :cond_4
    iget-object v4, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->distributionBefore:Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->distributionAfter:Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;

    if-eqz v4, :cond_6

    cmpg-double v0, p1, v2

    if-gez v0, :cond_5

    const/4 v5, 0x1

    :cond_5
    return v5

    :cond_6
    cmpl-double v4, p1, v0

    if-lez v4, :cond_7

    cmpg-double v0, p1, v2

    if-gez v0, :cond_7

    const/4 v5, 0x1

    :cond_7
    return v5
.end method

.method public getDistributionAfter()Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->distributionAfter:Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;

    return-object v0
.end method

.method public getDistributionBefore()Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->distributionBefore:Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;

    return-object v0
.end method

.method public getValues()Ljava/util/List;
    .locals 2

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    iget-object v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->values:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method
