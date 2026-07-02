.class final Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;
.super Lorg/threeten/bp/chrono/ChronoLocalDateTime;
.source "ChronoLocalDateTimeImpl.java"

# interfaces
.implements Lorg/threeten/bp/temporal/Temporal;
.implements Lorg/threeten/bp/temporal/TemporalAdjuster;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/threeten/bp/chrono/ChronoLocalDate;",
        ">",
        "Lorg/threeten/bp/chrono/ChronoLocalDateTime<",
        "TD;>;",
        "Lorg/threeten/bp/temporal/Temporal;",
        "Lorg/threeten/bp/temporal/TemporalAdjuster;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final HOURS_PER_DAY:I = 0x18

.field private static final MICROS_PER_DAY:J = 0x141dd76000L

.field private static final MILLIS_PER_DAY:J = 0x5265c00L

.field private static final MINUTES_PER_DAY:I = 0x5a0

.field private static final MINUTES_PER_HOUR:I = 0x3c

.field private static final NANOS_PER_DAY:J = 0x4e94914f0000L

.field private static final NANOS_PER_HOUR:J = 0x34630b8a000L

.field private static final NANOS_PER_MINUTE:J = 0xdf8475800L

.field private static final NANOS_PER_SECOND:J = 0x3b9aca00L

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final serialVersionUID:J = 0x3f3a2d24660eebe2L


# instance fields
.field private final date:Lorg/threeten/bp/chrono/ChronoLocalDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private final time:Lorg/threeten/bp/LocalTime;


# direct methods
.method private constructor <init>(Lorg/threeten/bp/chrono/ChronoLocalDate;Lorg/threeten/bp/LocalTime;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lorg/threeten/bp/LocalTime;",
            ")V"
        }
    .end annotation

    .line 152
    invoke-direct {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;-><init>()V

    const-string v0, "date"

    .line 153
    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "time"

    .line 154
    invoke-static {p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 155
    iput-object p1, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    .line 156
    iput-object p2, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->time:Lorg/threeten/bp/LocalTime;

    return-void
.end method

.method static of(Lorg/threeten/bp/chrono/ChronoLocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Lorg/threeten/bp/chrono/ChronoLocalDate;",
            ">(TR;",
            "Lorg/threeten/bp/LocalTime;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<",
            "TR;>;"
        }
    .end annotation

    .line 143
    new-instance v0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    invoke-direct {v0, p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;-><init>(Lorg/threeten/bp/chrono/ChronoLocalDate;Lorg/threeten/bp/LocalTime;)V

    return-object v0
.end method

.method private plusDays(J)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<",
            "TD;>;"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v0, p1, p2, v1}, Lorg/threeten/bp/chrono/ChronoLocalDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object p1

    iget-object p2, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->time:Lorg/threeten/bp/LocalTime;

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->with(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method private plusHours(J)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<",
            "TD;>;"
        }
    .end annotation

    .line 278
    iget-object v1, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v9}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->plusWithOverflow(Lorg/threeten/bp/chrono/ChronoLocalDate;JJJJ)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method private plusMinutes(J)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<",
            "TD;>;"
        }
    .end annotation

    .line 282
    iget-object v1, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v9}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->plusWithOverflow(Lorg/threeten/bp/chrono/ChronoLocalDate;JJJJ)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method private plusNanos(J)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<",
            "TD;>;"
        }
    .end annotation

    .line 290
    iget-object v1, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v8, p1

    invoke-direct/range {v0 .. v9}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->plusWithOverflow(Lorg/threeten/bp/chrono/ChronoLocalDate;JJJJ)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method private plusWithOverflow(Lorg/threeten/bp/chrono/ChronoLocalDate;JJJJ)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;JJJJ)",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<",
            "TD;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    or-long v2, p2, p4

    or-long v2, v2, p6

    or-long v2, v2, p8

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 297
    iget-object v2, v0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->time:Lorg/threeten/bp/LocalTime;

    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->with(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    :cond_0
    const-wide v2, 0x4e94914f0000L

    .line 299
    div-long v4, p8, v2

    const-wide/32 v6, 0x15180

    div-long v8, p6, v6

    add-long/2addr v4, v8

    const-wide/16 v8, 0x5a0

    div-long v10, p4, v8

    add-long/2addr v4, v10

    const-wide/16 v10, 0x18

    div-long v12, p2, v10

    add-long/2addr v4, v12

    .line 303
    rem-long v12, p8, v2

    rem-long v6, p6, v6

    const-wide/32 v14, 0x3b9aca00

    mul-long v6, v6, v14

    add-long/2addr v12, v6

    rem-long v6, p4, v8

    const-wide v8, 0xdf8475800L

    mul-long v6, v6, v8

    add-long/2addr v12, v6

    rem-long v6, p2, v10

    const-wide v8, 0x34630b8a000L

    mul-long v6, v6, v8

    add-long/2addr v12, v6

    .line 307
    iget-object v6, v0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v6}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v6

    add-long/2addr v12, v6

    .line 309
    invoke-static {v12, v13, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorDiv(JJ)J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 310
    invoke-static {v12, v13, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorMod(JJ)J

    move-result-wide v2

    cmp-long v8, v2, v6

    if-nez v8, :cond_1

    .line 311
    iget-object v2, v0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->time:Lorg/threeten/bp/LocalTime;

    goto :goto_0

    :cond_1
    invoke-static {v2, v3}, Lorg/threeten/bp/LocalTime;->ofNanoOfDay(J)Lorg/threeten/bp/LocalTime;

    move-result-object v2

    .line 312
    :goto_0
    sget-object v3, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v1, v4, v5, v3}, Lorg/threeten/bp/chrono/ChronoLocalDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->with(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1
.end method

.method static readExternal(Ljava/io/ObjectInput;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectInput;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 361
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/ChronoLocalDate;

    .line 362
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/threeten/bp/LocalTime;

    .line 363
    invoke-virtual {v0, p0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->atTime(Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method private with(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/Temporal;",
            "Lorg/threeten/bp/LocalTime;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<",
            "TD;>;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->time:Lorg/threeten/bp/LocalTime;

    if-ne v0, p2, :cond_0

    return-object p0

    .line 172
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/Chronology;->ensureChronoLocalDate(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object p1

    .line 173
    new-instance v0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    invoke-direct {v0, p1, p2}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;-><init>(Lorg/threeten/bp/chrono/ChronoLocalDate;Lorg/threeten/bp/LocalTime;)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 352
    new-instance v0, Lorg/threeten/bp/chrono/Ser;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/chrono/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public atZone(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/ZoneId;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoZonedDateTime<",
            "TD;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 318
    invoke-static {p0, p1, v0}, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->ofBest(Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;Lorg/threeten/bp/ZoneId;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public get(Lorg/threeten/bp/temporal/TemporalField;)I
    .locals 3

    .line 214
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 215
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->isTimeBased()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalTime;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result p1

    :goto_0
    return p1

    .line 217
    :cond_1
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/TemporalField;)I

    move-result p1

    return p1
.end method

.method public getLong(Lorg/threeten/bp/temporal/TemporalField;)J
    .locals 2

    .line 222
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 223
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->isTimeBased()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalTime;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-interface {v0, p1}, Lorg/threeten/bp/temporal/TemporalAccessor;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 225
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z
    .locals 3

    .line 190
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 191
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->isDateBased()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->isTimeBased()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-eqz p1, :cond_3

    .line 193
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->isSupportedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .locals 0

    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method public plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/threeten/bp/temporal/TemporalUnit;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<",
            "TD;>;"
        }
    .end annotation

    .line 257
    instance-of v0, p3, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    .line 258
    move-object v0, p3

    check-cast v0, Lorg/threeten/bp/temporal/ChronoUnit;

    .line 259
    sget-object v1, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl$1;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 268
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/chrono/ChronoLocalDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object p1

    iget-object p2, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->time:Lorg/threeten/bp/LocalTime;

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->with(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-wide/16 v0, 0x100

    .line 266
    div-long v2, p1, v0

    invoke-direct {p0, v2, v3}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->plusDays(J)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object p3

    rem-long/2addr p1, v0

    const-wide/16 v0, 0xc

    mul-long p1, p1, v0

    invoke-direct {p3, p1, p2}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->plusHours(J)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1

    .line 265
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->plusHours(J)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1

    .line 264
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->plusMinutes(J)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1

    .line 263
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->plusSeconds(J)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1

    :pswitch_4
    const-wide/32 v0, 0x5265c00

    .line 262
    div-long v2, p1, v0

    invoke-direct {p0, v2, v3}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->plusDays(J)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object p3

    rem-long/2addr p1, v0

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    invoke-direct {p3, p1, p2}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->plusNanos(J)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1

    :pswitch_5
    const-wide v0, 0x141dd76000L

    .line 261
    div-long v2, p1, v0

    invoke-direct {p0, v2, v3}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->plusDays(J)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object p3

    rem-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    invoke-direct {p3, p1, p2}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->plusNanos(J)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1

    .line 260
    :pswitch_6
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->plusNanos(J)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1

    .line 270
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v0

    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/TemporalUnit;->addTo(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/Chronology;->ensureChronoLocalDateTime(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method plusSeconds(J)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<",
            "TD;>;"
        }
    .end annotation

    .line 286
    iget-object v1, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v9}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->plusWithOverflow(Lorg/threeten/bp/chrono/ChronoLocalDate;JJJJ)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method public range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 1

    .line 206
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 207
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->isTimeBased()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalTime;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    :goto_0
    return-object p1

    .line 209
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->rangeRefinedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1
.end method

.method public toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    return-object v0
.end method

.method public toLocalTime()Lorg/threeten/bp/LocalTime;
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->time:Lorg/threeten/bp/LocalTime;

    return-object v0
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .locals 0

    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/TemporalAdjuster;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<",
            "TD;>;"
        }
    .end annotation

    .line 231
    instance-of v0, p1, Lorg/threeten/bp/chrono/ChronoLocalDate;

    if-eqz v0, :cond_0

    .line 233
    check-cast p1, Lorg/threeten/bp/chrono/ChronoLocalDate;

    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->time:Lorg/threeten/bp/LocalTime;

    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->with(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1

    .line 234
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/LocalTime;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    check-cast p1, Lorg/threeten/bp/LocalTime;

    invoke-direct {p0, v0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->with(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1

    .line 236
    :cond_1
    instance-of v0, p1, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v0

    check-cast p1, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/Chronology;->ensureChronoLocalDateTime(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1

    .line 239
    :cond_2
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v0

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAdjuster;->adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/Chronology;->ensureChronoLocalDateTime(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/TemporalField;",
            "J)",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<",
            "TD;>;"
        }
    .end annotation

    .line 244
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 245
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->isTimeBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    iget-object v1, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v1, p1, p2, p3}, Lorg/threeten/bp/LocalTime;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->with(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1

    .line 248
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/chrono/ChronoLocalDate;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object p1

    iget-object p2, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->time:Lorg/threeten/bp/LocalTime;

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->with(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1

    .line 251
    :cond_1
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v0

    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/TemporalField;->adjustInto(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/Chronology;->ensureChronoLocalDateTime(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 357
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->time:Lorg/threeten/bp/LocalTime;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
