.class public Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;
.super Ljava/lang/Object;
.source "AverageCalculator.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final transient MIN_SAMPLE_LIMIT:D = 0.0

.field private static final transient MIN_THRESHOLD_EXCEEDERS_BEFORE_DISTRIBUTION:I = 0x64

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private distributions:Ljava/util/List;

.field private outlierList:Ljava/util/List;

.field private runningSumInSampleSet:D

.field private runningThresholdExceedersSum:D

.field private sampleSet:Ljava/util/List;

.field private thresholdExceedersSet:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->sampleSet:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->thresholdExceedersSet:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 93
    iput-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->runningSumInSampleSet:D

    .line 97
    iput-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->runningThresholdExceedersSum:D

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->distributions:Ljava/util/List;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->outlierList:Ljava/util/List;

    return-void
.end method

.method private addInternalListsToAverageAndReset(ZZ)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 453
    :goto_0
    iget-object v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->sampleSet:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 454
    iget-object v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->sampleSet:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->addToAverage(D)D

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 459
    :goto_1
    iget-object p1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->thresholdExceedersSet:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 460
    iget-object p1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->thresholdExceedersSet:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->addToAverage(D)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 464
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->thresholdExceedersSet:Ljava/util/List;

    const-wide/16 p1, 0x0

    .line 465
    iput-wide p1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->runningThresholdExceedersSum:D

    .line 467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->sampleSet:Ljava/util/List;

    .line 468
    iput-wide p1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->runningSumInSampleSet:D

    return-void
.end method

.method private addToDistributions(Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;)V
    .locals 6

    .line 405
    invoke-virtual {p1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->getMean()D

    move-result-wide v0

    const/4 v2, 0x0

    .line 407
    :goto_0
    iget-object v3, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->distributions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 408
    iget-object v3, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->distributions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;

    .line 409
    invoke-virtual {v3}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->getMean()D

    move-result-wide v3

    cmpl-double v5, v3, v0

    if-lez v5, :cond_0

    .line 411
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->distributions:Ljava/util/List;

    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 417
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->distributions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v2, v0, :cond_2

    .line 419
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->distributions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private addToOutliers([DLcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;)V
    .locals 10

    if-eqz p1, :cond_4

    .line 487
    array-length v0, p1

    if-eqz v0, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    .line 490
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 491
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 492
    invoke-virtual {p2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->getMean()D

    move-result-wide v2

    const/4 v4, 0x0

    .line 493
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_2

    .line 494
    aget-wide v5, p1, v4

    sub-double/2addr v5, v2

    const-wide/16 v7, 0x0

    cmpl-double v9, v5, v7

    if-lez v9, :cond_1

    .line 495
    new-instance v5, Ljava/lang/Double;

    aget-wide v6, p1, v4

    invoke-direct {v5, v6, v7}, Ljava/lang/Double;-><init>(D)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 497
    :cond_1
    new-instance v5, Ljava/lang/Double;

    aget-wide v6, p1, v4

    invoke-direct {v5, v6, v7}, Ljava/lang/Double;-><init>(D)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 501
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 502
    iget-object p1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->outlierList:Ljava/util/List;

    new-instance v2, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;

    invoke-direct {v2, v1, p3, p2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;-><init>(Ljava/util/List;Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 506
    iget-object p1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->outlierList:Ljava/util/List;

    new-instance p3, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;

    invoke-direct {p3, v0, p2, p4}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;-><init>(Ljava/util/List;Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    return-void
.end method

.method private addToSampleSet(D)V
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->sampleSet:Ljava/util/List;

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    iget-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->runningSumInSampleSet:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->runningSumInSampleSet:D

    return-void
.end method

.method private addToThresholdExceeders(D)V
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->thresholdExceedersSet:Ljava/util/List;

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    iget-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->runningThresholdExceedersSum:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->runningThresholdExceedersSum:D

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 636
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 637
    iget-object p1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->outlierList:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 638
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Overridden read object : outlier list size :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->outlierList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 639
    iget-object p1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->outlierList:Ljava/util/List;

    .line 640
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->outlierList:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 642
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 643
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;

    if-nez v2, :cond_0

    goto :goto_2

    .line 648
    :cond_0
    invoke-virtual {v2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->getValues()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 653
    :cond_1
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Overridden read object : outlier list values :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 655
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 656
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->addToAverage(D)D

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 632
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public addToAverage(D)D
    .locals 13

    .line 162
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->sampleSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xf

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->distributions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    const-wide v0, 0x408c200000000000L    # 900.0

    cmpg-double v5, p1, v0

    if-gtz v5, :cond_0

    const-wide/16 v0, 0x0

    cmpl-double v5, p1, v0

    if-ltz v5, :cond_0

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->addToSampleSet(D)V

    goto :goto_0

    .line 170
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->addToThresholdExceeders(D)V

    .line 177
    iget-object p1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->thresholdExceedersSet:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0x64

    if-lt p1, p2, :cond_1

    .line 178
    new-instance p1, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;

    invoke-direct {p1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;-><init>()V

    .line 179
    iget-object p2, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->thresholdExceedersSet:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->buildDistribution(Ljava/util/List;)[D

    move-result-object p2

    .line 180
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->distributions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-direct {p0, p2, p1, v4, v4}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->addToOutliers([DLcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;)V

    .line 184
    invoke-direct {p0, v3, v2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->addInternalListsToAverageAndReset(ZZ)V

    .line 187
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->getAverage()D

    move-result-wide p1

    return-wide p1

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->distributions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-wide/16 v5, 0xa

    if-nez v0, :cond_4

    .line 191
    new-instance v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;

    invoke-direct {v0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;-><init>()V

    .line 194
    iget-object v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->sampleSet:Ljava/util/List;

    new-instance v7, Ljava/lang/Double;

    invoke-direct {v7, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->sampleSet:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->buildDistribution(Ljava/util/List;)[D

    move-result-object v1

    .line 197
    invoke-virtual {v0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->getNumSamples()J

    move-result-wide v7

    cmp-long v9, v7, v5

    if-gez v9, :cond_3

    .line 203
    invoke-direct {p0, p1, p2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->addToSampleSet(D)V

    goto :goto_1

    .line 205
    :cond_3
    iget-object p1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->distributions:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-direct {p0, v1, v0, v4, v4}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->addToOutliers([DLcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;)V

    .line 209
    invoke-direct {p0, v2, v3}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->addInternalListsToAverageAndReset(ZZ)V

    .line 211
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->getAverage()D

    move-result-wide p1

    return-wide p1

    :cond_4
    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v0, -0x1

    const/4 v3, 0x0

    const/4 v9, -0x1

    .line 218
    :goto_2
    iget-object v10, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->distributions:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_6

    .line 219
    iget-object v10, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->distributions:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;

    .line 220
    invoke-virtual {v10, p1, p2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->getZFor(D)D

    move-result-wide v10

    cmpg-double v12, v10, v7

    if-gez v12, :cond_5

    move v9, v3

    move-wide v7, v10

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    if-ne v9, v0, :cond_7

    .line 231
    invoke-virtual {p0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->getAverage()D

    move-result-wide p1

    return-wide p1

    .line 234
    :cond_7
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->distributions:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;

    .line 235
    invoke-virtual {v0, p1, p2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->addToDistribution(D)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 238
    invoke-virtual {p0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->getAverage()D

    move-result-wide p1

    return-wide p1

    :cond_8
    const/4 v0, 0x0

    .line 244
    :goto_3
    iget-object v3, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->distributions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_b

    if-ne v0, v9, :cond_9

    goto :goto_4

    .line 248
    :cond_9
    iget-object v3, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->distributions:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;

    .line 249
    invoke-virtual {v3, p1, p2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->addToDistribution(D)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 250
    invoke-virtual {p0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->getAverage()D

    move-result-wide p1

    return-wide p1

    :cond_a
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    const/4 v0, 0x0

    .line 256
    :goto_5
    iget-object v3, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->outlierList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_e

    .line 257
    iget-object v3, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->outlierList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;

    .line 258
    invoke-virtual {v3, p1, p2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->addOutlier(D)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 260
    invoke-virtual {v3}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->getValues()Ljava/util/List;

    move-result-object p1

    .line 261
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v1, :cond_c

    .line 265
    new-instance p2, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;

    invoke-direct {p2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;-><init>()V

    .line 266
    invoke-virtual {p2, p1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->buildDistribution(Ljava/util/List;)[D

    move-result-object p1

    .line 268
    invoke-virtual {p2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->getNumSamples()J

    move-result-wide v1

    cmp-long v4, v1, v5

    if-ltz v4, :cond_c

    .line 269
    invoke-direct {p0, p2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->addToDistributions(Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;)V

    .line 271
    iget-object v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->outlierList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 273
    invoke-virtual {v3}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->getDistributionBefore()Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;

    move-result-object v0

    invoke-virtual {v3}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;->getDistributionAfter()Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->addToOutliers([DLcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;)V

    .line 277
    :cond_c
    invoke-virtual {p0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->getAverage()D

    move-result-wide p1

    return-wide p1

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_e
    move-object v0, v4

    .line 285
    :goto_6
    iget-object v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->distributions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_11

    .line 286
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->distributions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;

    .line 287
    invoke-virtual {v0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->getMean()D

    move-result-wide v5

    cmpg-double v1, p1, v5

    if-gez v1, :cond_10

    if-lez v2, :cond_f

    .line 292
    iget-object v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->distributions:Ljava/util/List;

    add-int/lit8 v3, v2, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;

    goto :goto_7

    :cond_f
    move-object v1, v4

    .line 294
    :goto_7
    iget-object v3, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->outlierList:Ljava/util/List;

    new-instance v5, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;

    invoke-direct {v5, p1, p2, v1, v0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;-><init>(DLcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 300
    :cond_11
    :goto_8
    iget-object v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->distributions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v2, v1, :cond_12

    .line 301
    iget-object v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->outlierList:Ljava/util/List;

    new-instance v2, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;

    invoke-direct {v2, p1, p2, v0, v4}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/Outliers;-><init>(DLcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_12
    invoke-virtual {p0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->getAverage()D

    move-result-wide p1

    return-wide p1
.end method

.method public getAverage()D
    .locals 28

    move-object/from16 v0, p0

    .line 312
    iget-object v1, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->distributions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-nez v1, :cond_5

    .line 317
    iget-object v1, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->sampleSet:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x3

    if-lt v1, v5, :cond_0

    .line 319
    iget-wide v1, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->runningSumInSampleSet:D

    .line 320
    iget-object v5, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->sampleSet:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_0

    .line 321
    :cond_0
    iget-object v1, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->sampleSet:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->sampleSet:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v5, :cond_1

    .line 324
    iget-wide v1, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->runningSumInSampleSet:D

    .line 325
    iget-object v5, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->sampleSet:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 326
    iget-object v6, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->thresholdExceedersSet:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 327
    iget-wide v6, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->runningThresholdExceedersSum:D

    add-double/2addr v1, v6

    .line 328
    iget-object v6, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->thresholdExceedersSet:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_0

    .line 330
    :cond_1
    iget-object v1, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->thresholdExceedersSet:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 333
    iget-wide v1, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->runningThresholdExceedersSum:D

    .line 334
    iget-object v5, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->thresholdExceedersSet:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_0

    :cond_2
    move-wide v1, v3

    const/4 v5, 0x0

    :cond_3
    :goto_0
    if-lez v5, :cond_4

    int-to-double v3, v5

    div-double/2addr v1, v3

    return-wide v1

    :cond_4
    return-wide v3

    .line 342
    :cond_5
    iget-object v1, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->distributions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_6

    .line 345
    iget-object v1, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->distributions:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;

    invoke-virtual {v1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->getMean()D

    move-result-wide v1

    return-wide v1

    :cond_6
    const-wide/high16 v5, -0x8000000000000000L

    move-wide v7, v5

    const/4 v1, 0x0

    .line 352
    :goto_1
    iget-object v9, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->distributions:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const-wide v10, 0x408c200000000000L    # 900.0

    if-ge v1, v9, :cond_9

    .line 353
    iget-object v9, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->distributions:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;

    .line 354
    invoke-virtual {v9}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->getNumSamples()J

    move-result-wide v12

    .line 356
    invoke-virtual {v9}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->getMean()D

    move-result-wide v14

    cmpg-double v9, v14, v10

    if-gtz v9, :cond_7

    cmp-long v9, v12, v5

    if-lez v9, :cond_7

    move-wide v5, v12

    goto :goto_2

    :cond_7
    cmp-long v9, v12, v7

    if-lez v9, :cond_8

    move-wide v7, v12

    :cond_8
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    move-wide/from16 v18, v3

    move-wide/from16 v20, v18

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    .line 367
    :goto_3
    iget-object v1, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->distributions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-wide/16 v22, 0x3

    if-ge v2, v1, :cond_d

    .line 368
    iget-object v1, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->distributions:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;

    .line 369
    invoke-virtual {v1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->getMean()D

    move-result-wide v24

    .line 370
    invoke-virtual {v1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/NormalDistribution;->getNumSamples()J

    move-result-wide v12

    cmpg-double v1, v24, v3

    if-gez v1, :cond_a

    goto :goto_4

    :cond_a
    cmpl-double v1, v24, v10

    if-lez v1, :cond_b

    mul-long v26, v12, v22

    cmp-long v1, v26, v7

    if-ltz v1, :cond_b

    long-to-double v10, v12

    mul-double v10, v10, v24

    add-double v18, v18, v10

    add-long v16, v16, v12

    goto :goto_4

    :cond_b
    mul-long v22, v22, v12

    cmp-long v1, v22, v5

    if-ltz v1, :cond_c

    long-to-double v9, v12

    mul-double v9, v9, v24

    add-double v20, v20, v9

    add-long/2addr v14, v12

    :cond_c
    :goto_4
    add-int/lit8 v2, v2, 0x1

    const-wide v10, 0x408c200000000000L    # 900.0

    goto :goto_3

    :cond_d
    mul-long v22, v22, v14

    cmp-long v1, v22, v16

    if-gez v1, :cond_e

    move-wide/from16 v14, v16

    goto :goto_5

    :cond_e
    move-wide/from16 v18, v20

    :goto_5
    const-wide/16 v1, 0x0

    cmp-long v5, v14, v1

    if-eqz v5, :cond_f

    long-to-double v1, v14

    div-double v18, v18, v1

    return-wide v18

    :cond_f
    return-wide v3
.end method
