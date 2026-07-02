.class public Lcom/amazon/sitb/android/SeriesInfo;
.super Ljava/lang/Object;
.source "SeriesInfo.java"

# interfaces
.implements Lcom/amazon/sitb/android/HasExpiration;


# instance fields
.field private maxAge:J

.field private nextBookAsin:Ljava/lang/String;

.field private nextBookAuthors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nextBookTitle:Ljava/lang/String;

.field private showAtPercentRead:I

.field private timeCached:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/amazon/sitb/android/SeriesInfo;->showAtPercentRead:I

    const/4 v1, 0x0

    .line 21
    iput-object v1, p0, Lcom/amazon/sitb/android/SeriesInfo;->nextBookAsin:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/amazon/sitb/android/SeriesInfo;->nextBookTitle:Ljava/lang/String;

    .line 23
    iput v0, p0, Lcom/amazon/sitb/android/SeriesInfo;->showAtPercentRead:I

    const-wide/16 v0, 0x0

    .line 24
    iput-wide v0, p0, Lcom/amazon/sitb/android/SeriesInfo;->timeCached:J

    .line 25
    iput-wide v0, p0, Lcom/amazon/sitb/android/SeriesInfo;->maxAge:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJJ)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/amazon/sitb/android/SeriesInfo;->showAtPercentRead:I

    .line 30
    iput-object p1, p0, Lcom/amazon/sitb/android/SeriesInfo;->nextBookAsin:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/amazon/sitb/android/SeriesInfo;->nextBookTitle:Ljava/lang/String;

    .line 32
    iput p3, p0, Lcom/amazon/sitb/android/SeriesInfo;->showAtPercentRead:I

    .line 33
    iput-wide p4, p0, Lcom/amazon/sitb/android/SeriesInfo;->timeCached:J

    .line 34
    iput-wide p6, p0, Lcom/amazon/sitb/android/SeriesInfo;->maxAge:J

    return-void
.end method


# virtual methods
.method public getAgeInMillis()J
    .locals 4

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/sitb/android/SeriesInfo;->timeCached:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getMaxAgeInMillis()J
    .locals 2

    .line 83
    iget-wide v0, p0, Lcom/amazon/sitb/android/SeriesInfo;->maxAge:J

    return-wide v0
.end method

.method public getNextBookAsin()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/sitb/android/SeriesInfo;->nextBookAsin:Ljava/lang/String;

    return-object v0
.end method

.method public getNextBookTitle()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/sitb/android/SeriesInfo;->nextBookTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getShowAtPercentRead()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/amazon/sitb/android/SeriesInfo;->showAtPercentRead:I

    return v0
.end method

.method public getTimeCached()J
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/amazon/sitb/android/SeriesInfo;->timeCached:J

    return-wide v0
.end method

.method public getTimeToExpiring()J
    .locals 2

    .line 58
    invoke-static {p0}, Lcom/amazon/sitb/android/SeriesAge;->getTimeToExpiringInMillis(Lcom/amazon/sitb/android/SeriesInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasNextBookAsin()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazon/sitb/android/SeriesInfo;->nextBookAsin:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/sitb/android/utils/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/amazon/sitb/android/SeriesInfo;->nextBookAsin:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/sitb/android/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/sitb/android/SeriesInfo;->nextBookTitle:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/sitb/android/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/amazon/sitb/android/SeriesInfo;->showAtPercentRead:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isUsable()Z
    .locals 2

    .line 39
    invoke-static {p0}, Lcom/amazon/sitb/android/SeriesAge;->getAge(Lcom/amazon/sitb/android/SeriesInfo;)Lcom/amazon/sitb/android/SeriesAge;

    move-result-object v0

    .line 40
    invoke-virtual {p0}, Lcom/amazon/sitb/android/SeriesInfo;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/amazon/sitb/android/SeriesAge;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldUpdate()Z
    .locals 1

    .line 52
    invoke-static {p0}, Lcom/amazon/sitb/android/SeriesAge;->getAge(Lcom/amazon/sitb/android/SeriesInfo;)Lcom/amazon/sitb/android/SeriesAge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/sitb/android/SeriesAge;->shouldUpdate()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 114
    iget-object v1, p0, Lcom/amazon/sitb/android/SeriesInfo;->nextBookAsin:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 116
    invoke-static {}, Lcom/amazon/sitb/android/utils/BuildUtils;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/sitb/android/SeriesInfo;->nextBookTitle:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "*** Hidden ***"

    :goto_0
    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    iget v2, p0, Lcom/amazon/sitb/android/SeriesInfo;->showAtPercentRead:I

    .line 117
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 118
    invoke-virtual {p0}, Lcom/amazon/sitb/android/SeriesInfo;->getAgeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 119
    invoke-virtual {p0}, Lcom/amazon/sitb/android/SeriesInfo;->getAgeInMillis()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 120
    invoke-static {p0}, Lcom/amazon/sitb/android/SeriesAge;->getAge(Lcom/amazon/sitb/android/SeriesInfo;)Lcom/amazon/sitb/android/SeriesAge;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 121
    invoke-virtual {p0}, Lcom/amazon/sitb/android/SeriesInfo;->getMaxAgeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 122
    invoke-virtual {p0}, Lcom/amazon/sitb/android/SeriesInfo;->getMaxAgeInMillis()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const-string/jumbo v1, "{SeriesInfo => [nextBookAsin:%s], [nextBookTitle:%s], [showAtPercentRead:%s], [age:%d (%.1f min, %s)], [maxAge:%d (%.1f min)]"

    .line 114
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
