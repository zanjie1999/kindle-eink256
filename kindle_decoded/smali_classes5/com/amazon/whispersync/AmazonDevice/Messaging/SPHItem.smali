.class public Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;
.super Ljava/lang/Object;
.source "SPHItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;
    }
.end annotation


# static fields
.field private static final MINUTE_PER_HOUR:J

.field private static final SECS_PER_MINUTE:J


# instance fields
.field private final mDays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mWeekDays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 26
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;->MINUTE_PER_HOUR:J

    .line 27
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;->SECS_PER_MINUTE:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;->mDays:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;->mWeekDays:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;->mTimes:Ljava/util/List;

    return-void
.end method

.method private getNextItemTime(Ljava/util/Date;IJ)Ljava/util/Date;
    .locals 1

    .line 153
    invoke-direct {p0, p1, p3, p4}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;->setStartTime(Ljava/util/Date;J)Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;

    move-result-object p3

    if-gez p2, :cond_1

    add-int/lit8 p4, p2, 0x20

    .line 161
    iget v0, p3, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;->day:I

    if-ge p4, v0, :cond_0

    .line 163
    iget p4, p3, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;->month:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p3, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;->month:I

    .line 166
    :cond_0
    iget p4, p3, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;->month:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p3, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;->month:I

    add-int/lit8 p2, p2, 0x1

    .line 170
    iput p2, p3, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;->day:I

    goto :goto_0

    .line 174
    :cond_1
    iput p2, p3, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;->day:I

    .line 177
    :goto_0
    invoke-direct {p0, p3}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;->toTime(Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;)Ljava/util/Date;

    move-result-object p2

    .line 179
    invoke-virtual {p2, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 181
    iget p1, p3, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;->month:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p3, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;->month:I

    .line 183
    invoke-direct {p0, p3}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;->toTime(Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;)Ljava/util/Date;

    move-result-object p2

    :cond_2
    return-object p2
.end method

.method private getNextItemTime(Ljava/util/Date;Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;J)Ljava/util/Date;
    .locals 2

    .line 191
    invoke-direct {p0, p1, p3, p4}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;->setStartTime(Ljava/util/Date;J)Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;

    move-result-object p3

    .line 194
    sget-object p4, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;->All:Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

    if-eq p4, p2, :cond_0

    .line 196
    iget p4, p3, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;->day:I

    invoke-virtual {p2}, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;->getDayOfWeek()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p3, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;->dayOfWeek:I

    sub-int/2addr v0, v1

    add-int/2addr p4, v0

    iput p4, p3, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;->day:I

    .line 199
    :cond_0
    invoke-direct {p0, p3}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;->toTime(Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;)Ljava/util/Date;

    move-result-object p4

    .line 201
    invoke-virtual {p4, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 203
    sget-object p1, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;->All:Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

    if-ne p1, p2, :cond_1

    .line 205
    iget p1, p3, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;->day:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p3, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;->day:I

    goto :goto_0

    .line 209
    :cond_1
    iget p1, p3, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;->day:I

    add-int/lit8 p1, p1, 0x7

    iput p1, p3, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;->day:I

    .line 212
    :goto_0
    invoke-direct {p0, p3}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;->toTime(Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;)Ljava/util/Date;

    move-result-object p4

    :cond_2
    return-object p4
.end method

.method private setStartTime(Ljava/util/Date;J)Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;
    .locals 7

    .line 220
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;-><init>(Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$1;)V

    const-string v1, "GMT"

    .line 222
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 223
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x1

    .line 225
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;->year:I

    const/4 p1, 0x2

    .line 226
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;->month:I

    const/4 p1, 0x5

    .line 227
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;->day:I

    const/4 p1, 0x7

    .line 229
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;->dayOfWeek:I

    .line 231
    sget-wide v1, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;->SECS_PER_MINUTE:J

    rem-long v3, p2, v1

    long-to-int p1, v3

    .line 232
    div-long v3, p2, v1

    sget-wide v5, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;->MINUTE_PER_HOUR:J

    rem-long/2addr v3, v5

    long-to-int v4, v3

    mul-long v1, v1, v5

    .line 233
    div-long/2addr p2, v1

    long-to-int p3, p2

    .line 235
    iput p3, v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;->hour:I

    .line 236
    iput v4, v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;->minute:I

    .line 237
    iput p1, v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;->second:I

    return-object v0
.end method

.method private toTime(Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;)Ljava/util/Date;
    .locals 3

    const-string v0, "GMT"

    .line 244
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 246
    iget v1, p1, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;->year:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 247
    iget v1, p1, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;->month:I

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 248
    iget v1, p1, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;->day:I

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 250
    iget v1, p1, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;->hour:I

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 251
    iget v1, p1, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;->minute:I

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 252
    iget p1, p1, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;->second:I

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    const/4 v1, 0x0

    .line 253
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    .line 255
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addDayOfMonth(I)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;->mDays:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDayOfWeek(Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;->mWeekDays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTime(J)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;->mTimes:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDayOfMonth(J)I
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;->mDays:Ljava/util/List;

    long-to-int p2, p1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getDayOfWeek(J)Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;->mWeekDays:Ljava/util/List;

    long-to-int p2, p1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

    return-object p1
.end method

.method public getNextScheduledTime(I)I
    .locals 0

    .line 102
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHHelpers;->secondsFromEpochToDate(I)Ljava/util/Date;

    move-result-object p1

    .line 104
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;->getNextScheduledTime(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    .line 106
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHHelpers;->dateToSecondsFromEpoch(Ljava/util/Date;)I

    move-result p1

    return p1
.end method

.method public getNextScheduledTime(Ljava/util/Date;)Ljava/util/Date;
    .locals 6

    .line 114
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;->mDays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 116
    iget-object v3, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;->mTimes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 118
    invoke-direct {p0, p1, v2, v4, v5}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;->getNextItemTime(Ljava/util/Date;IJ)Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 124
    invoke-virtual {v4, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_3
    move-object v1, v4

    goto :goto_0

    .line 131
    :cond_4
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;->mWeekDays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

    .line 133
    iget-object v3, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;->mTimes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 135
    invoke-direct {p0, p1, v2, v4, v5}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;->getNextItemTime(Ljava/util/Date;Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;J)Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_7

    goto :goto_1

    :cond_7
    if-eqz v1, :cond_8

    .line 141
    invoke-virtual {v4, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_8
    move-object v1, v4

    goto :goto_1

    :cond_9
    return-object v1
.end method

.method public getNumDaysOfMonth()J
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;->mDays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getNumDaysOfWeek()J
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;->mWeekDays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getNumTimes()J
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;->mTimes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getTime(J)J
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;->mTimes:Ljava/util/List;

    long-to-int p2, p1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public isValidSchedule()Z
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;->mDays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;->mWeekDays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;->mTimes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
