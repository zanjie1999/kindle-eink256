.class public Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHSchedule;
.super Ljava/lang/Object;
.source "SPHSchedule.java"


# static fields
.field private static final SUPPORTED_MAJOR_SPH_VERSION_NUM:I = 0x1

.field private static final SUPPORTED_MINOR_SPH_VERSION_NUM:I


# instance fields
.field private mIsRegular:Z

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMajorSPHVersionNum:I

.field private mMinorSPHVersionNum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHSchedule;->mItems:Ljava/util/List;

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHSchedule;->mIsRegular:Z

    .line 26
    iput v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHSchedule;->mMajorSPHVersionNum:I

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHSchedule;->mMinorSPHVersionNum:I

    return-void
.end method


# virtual methods
.method public addSPHItem(Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHSchedule;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getMajorSPHVersionNum()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHSchedule;->mMajorSPHVersionNum:I

    return v0
.end method

.method public getMinorSPHVersionNum()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHSchedule;->mMinorSPHVersionNum:I

    return v0
.end method

.method public getNextScheduledTime()I
    .locals 1

    .line 130
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHSchedule;->getNextScheduledTimeAsDate()Ljava/util/Date;

    move-result-object v0

    .line 132
    invoke-static {v0}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHHelpers;->dateToSecondsFromEpoch(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public getNextScheduledTime(I)I
    .locals 0

    .line 101
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHHelpers;->secondsFromEpochToDate(I)Ljava/util/Date;

    move-result-object p1

    .line 103
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHSchedule;->getNextScheduledTime(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    .line 105
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHHelpers;->dateToSecondsFromEpoch(Ljava/util/Date;)I

    move-result p1

    return p1
.end method

.method public getNextScheduledTime(Ljava/util/Date;)Ljava/util/Date;
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHSchedule;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;

    .line 113
    invoke-virtual {v2, p1}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;->getNextScheduledTime(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 119
    invoke-virtual {v2, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move-object v1, v2

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public getNextScheduledTimeAsDate()Ljava/util/Date;
    .locals 1

    .line 137
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHSchedule;->getNextScheduledTime(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getNumSPHItems()J
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHSchedule;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSPHItem(J)Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;
    .locals 3

    .line 90
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHSchedule;->getNumSPHItems()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "SPHSchedule: getSPHItem: index out of range."

    .line 92
    invoke-static {p2, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHSchedule;->mItems:Ljava/util/List;

    long-to-int p2, p1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;

    return-object p1
.end method

.method public isRegular()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHSchedule;->mIsRegular:Z

    return v0
.end method

.method public setIsRegular(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHSchedule;->mIsRegular:Z

    return-void
.end method

.method public setMajorSPHVersionNum(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 39
    :cond_0
    iput p1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHSchedule;->mMajorSPHVersionNum:I

    return v0
.end method

.method public setMinorSPHVersionNum(I)Z
    .locals 0

    if-lez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 53
    :cond_0
    iput p1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHSchedule;->mMinorSPHVersionNum:I

    const/4 p1, 0x1

    return p1
.end method
