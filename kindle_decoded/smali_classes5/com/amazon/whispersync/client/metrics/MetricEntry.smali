.class public Lcom/amazon/whispersync/client/metrics/MetricEntry;
.super Ljava/lang/Object;
.source "MetricEntry.java"


# instance fields
.field private final mDatapoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/DataPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final mProgram:Ljava/lang/String;

.field private final mSource:Ljava/lang/String;

.field private final mTimestamp:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/DataPoint;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_2

    .line 30
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p4, :cond_1

    .line 34
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p5, :cond_0

    .line 42
    iput-wide p1, p0, Lcom/amazon/whispersync/client/metrics/MetricEntry;->mTimestamp:J

    .line 43
    iput-object p3, p0, Lcom/amazon/whispersync/client/metrics/MetricEntry;->mProgram:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/amazon/whispersync/client/metrics/MetricEntry;->mSource:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lcom/amazon/whispersync/client/metrics/MetricEntry;->mDatapoints:Ljava/util/List;

    return-void

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "data points cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "source cannot be empty or null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "program cannot be empty or null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 83
    :cond_1
    const-class v2, Lcom/amazon/whispersync/client/metrics/MetricEntry;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 86
    :cond_2
    check-cast p1, Lcom/amazon/whispersync/client/metrics/MetricEntry;

    .line 87
    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/MetricEntry;->mDatapoints:Ljava/util/List;

    iget-object v3, p1, Lcom/amazon/whispersync/client/metrics/MetricEntry;->mDatapoints:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 91
    :cond_3
    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/MetricEntry;->mProgram:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whispersync/client/metrics/MetricEntry;->mProgram:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 95
    :cond_4
    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/MetricEntry;->mSource:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whispersync/client/metrics/MetricEntry;->mSource:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 99
    :cond_5
    iget-wide v2, p0, Lcom/amazon/whispersync/client/metrics/MetricEntry;->mTimestamp:J

    iget-wide v4, p1, Lcom/amazon/whispersync/client/metrics/MetricEntry;->mTimestamp:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public getDatapoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/DataPoint;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/MetricEntry;->mDatapoints:Ljava/util/List;

    return-object v0
.end method

.method public getProgram()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/MetricEntry;->mProgram:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/MetricEntry;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/amazon/whispersync/client/metrics/MetricEntry;->mTimestamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    .line 68
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/MetricEntry;->mDatapoints:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 69
    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/MetricEntry;->mProgram:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 70
    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/MetricEntry;->mSource:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 71
    iget-wide v1, p0, Lcom/amazon/whispersync/client/metrics/MetricEntry;->mTimestamp:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    iget-wide v1, p0, Lcom/amazon/whispersync/client/metrics/MetricEntry;->mTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/MetricEntry;->mProgram:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/MetricEntry;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 115
    :goto_0
    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/MetricEntry;->mDatapoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/MetricEntry;->mDatapoints:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/client/metrics/DataPoint;

    invoke-virtual {v2}, Lcom/amazon/whispersync/client/metrics/DataPoint;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
