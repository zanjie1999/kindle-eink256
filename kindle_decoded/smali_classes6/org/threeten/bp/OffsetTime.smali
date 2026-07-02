.class public final Lorg/threeten/bp/OffsetTime;
.super Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;
.source "OffsetTime.java"

# interfaces
.implements Lorg/threeten/bp/temporal/Temporal;
.implements Lorg/threeten/bp/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;",
        "Lorg/threeten/bp/temporal/Temporal;",
        "Lorg/threeten/bp/temporal/TemporalAdjuster;",
        "Ljava/lang/Comparable<",
        "Lorg/threeten/bp/OffsetTime;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x64d0affdfec1386cL


# instance fields
.field private final offset:Lorg/threeten/bp/ZoneOffset;

.field private final time:Lorg/threeten/bp/LocalTime;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 92
    sget-object v0, Lorg/threeten/bp/LocalTime;->MIN:Lorg/threeten/bp/LocalTime;

    sget-object v1, Lorg/threeten/bp/ZoneOffset;->MAX:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/LocalTime;->atOffset(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    .line 100
    sget-object v0, Lorg/threeten/bp/LocalTime;->MAX:Lorg/threeten/bp/LocalTime;

    sget-object v1, Lorg/threeten/bp/ZoneOffset;->MIN:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/LocalTime;->atOffset(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    .line 104
    new-instance v0, Lorg/threeten/bp/OffsetTime$1;

    invoke-direct {v0}, Lorg/threeten/bp/OffsetTime$1;-><init>()V

    return-void
.end method

.method private constructor <init>(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)V
    .locals 1

    .line 309
    invoke-direct {p0}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;-><init>()V

    const-string v0, "time"

    .line 310
    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lorg/threeten/bp/LocalTime;

    iput-object p1, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    const-string p1, "offset"

    .line 311
    invoke-static {p2, p1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lorg/threeten/bp/ZoneOffset;

    iput-object p2, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    return-void
.end method

.method public static from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/OffsetTime;
    .locals 3

    .line 259
    instance-of v0, p0, Lorg/threeten/bp/OffsetTime;

    if-eqz v0, :cond_0

    .line 260
    check-cast p0, Lorg/threeten/bp/OffsetTime;

    return-object p0

    .line 263
    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/threeten/bp/LocalTime;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    .line 264
    invoke-static {p0}, Lorg/threeten/bp/ZoneOffset;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    .line 265
    new-instance v2, Lorg/threeten/bp/OffsetTime;

    invoke-direct {v2, v0, v1}, Lorg/threeten/bp/OffsetTime;-><init>(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)V
    :try_end_0
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 267
    :catch_0
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to obtain OffsetTime from TemporalAccessor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static of(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;
    .locals 1

    .line 186
    new-instance v0, Lorg/threeten/bp/OffsetTime;

    invoke-direct {v0, p0, p1}, Lorg/threeten/bp/OffsetTime;-><init>(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)V

    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/OffsetTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1311
    invoke-static {p0}, Lorg/threeten/bp/LocalTime;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    .line 1312
    invoke-static {p0}, Lorg/threeten/bp/ZoneOffset;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/ZoneOffset;

    move-result-object p0

    .line 1313
    invoke-static {v0, p0}, Lorg/threeten/bp/OffsetTime;->of(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object p0

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1302
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private toEpochNano()J
    .locals 6

    .line 1127
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    .line 1128
    iget-object v2, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v2}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x3b9aca00

    mul-long v2, v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;
    .locals 1

    .line 321
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, p2}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 324
    :cond_0
    new-instance v0, Lorg/threeten/bp/OffsetTime;

    invoke-direct {v0, p1, p2}, Lorg/threeten/bp/OffsetTime;-><init>(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1293
    new-instance v0, Lorg/threeten/bp/Ser;

    const/16 v1, 0x42

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;
    .locals 3

    .line 1023
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    .line 1024
    invoke-virtual {v1}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    .line 1025
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetTime;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 81
    check-cast p1, Lorg/threeten/bp/OffsetTime;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/OffsetTime;->compareTo(Lorg/threeten/bp/OffsetTime;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/threeten/bp/OffsetTime;)I
    .locals 4

    .line 1162
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    iget-object v1, p1, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1163
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    iget-object p1, p1, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalTime;->compareTo(Lorg/threeten/bp/LocalTime;)I

    move-result p1

    return p1

    .line 1165
    :cond_0
    invoke-direct {p0}, Lorg/threeten/bp/OffsetTime;->toEpochNano()J

    move-result-wide v0

    invoke-direct {p1}, Lorg/threeten/bp/OffsetTime;->toEpochNano()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->compareLongs(JJ)I

    move-result v0

    if-nez v0, :cond_1

    .line 1167
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    iget-object p1, p1, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalTime;->compareTo(Lorg/threeten/bp/LocalTime;)I

    move-result v0

    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1237
    :cond_0
    instance-of v1, p1, Lorg/threeten/bp/OffsetTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1238
    check-cast p1, Lorg/threeten/bp/OffsetTime;

    .line 1239
    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    iget-object v3, p1, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v1, v3}, Lorg/threeten/bp/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    iget-object p1, p1, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v1, p1}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public get(Lorg/threeten/bp/temporal/TemporalField;)I
    .locals 0

    .line 440
    invoke-super {p0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result p1

    return p1
.end method

.method public getLong(Lorg/threeten/bp/temporal/TemporalField;)J
    .locals 2

    .line 467
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 468
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    .line 469
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetTime;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 471
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalTime;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0

    .line 473
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOffset()Lorg/threeten/bp/ZoneOffset;
    .locals 1

    .line 485
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1251
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalTime;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z
    .locals 3

    .line 367
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 368
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->isTimeBased()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-eqz p1, :cond_3

    .line 370
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->isSupportedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetTime;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 897
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/OffsetTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lorg/threeten/bp/OffsetTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/OffsetTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    .line 81
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/OffsetTime;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetTime;
    .locals 1

    .line 789
    instance-of v0, p3, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/LocalTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    iget-object p2, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    return-object p1

    .line 792
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/TemporalUnit;->addTo(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/OffsetTime;

    return-object p1
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    .line 81
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/OffsetTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 983
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->precision()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 984
    sget-object p1, Lorg/threeten/bp/temporal/ChronoUnit;->NANOS:Lorg/threeten/bp/temporal/ChronoUnit;

    return-object p1

    .line 985
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->offset()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_5

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zone()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 987
    :cond_1
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localTime()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 988
    iget-object p1, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    return-object p1

    .line 989
    :cond_2
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->chronology()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_4

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localDate()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_4

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zoneId()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_3

    goto :goto_0

    .line 992
    :cond_3
    invoke-super {p0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1

    .line 986
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetTime;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object p1

    return-object p1
.end method

.method public range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 1

    .line 405
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 406
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    .line 407
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 409
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalTime;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 411
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->rangeRefinedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v1}, Lorg/threeten/bp/LocalTime;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/OffsetTime;
    .locals 1

    .line 605
    instance-of v0, p1, Lorg/threeten/bp/LocalTime;

    if-eqz v0, :cond_0

    .line 606
    check-cast p1, Lorg/threeten/bp/LocalTime;

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    return-object p1

    .line 607
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/ZoneOffset;

    if-eqz v0, :cond_1

    .line 608
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    check-cast p1, Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, v0, p1}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    return-object p1

    .line 609
    :cond_1
    instance-of v0, p1, Lorg/threeten/bp/OffsetTime;

    if-eqz v0, :cond_2

    .line 610
    check-cast p1, Lorg/threeten/bp/OffsetTime;

    return-object p1

    .line 612
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAdjuster;->adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/OffsetTime;

    return-object p1
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/OffsetTime;
    .locals 1

    .line 651
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 652
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    .line 653
    check-cast p1, Lorg/threeten/bp/temporal/ChronoField;

    .line 654
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {p1, p2, p3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result p1

    invoke-static {p1}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    return-object p1

    .line 656
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/LocalTime;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    iget-object p2, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    return-object p1

    .line 658
    :cond_1
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/TemporalField;->adjustInto(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/OffsetTime;

    return-object p1
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    .line 81
    invoke-virtual {p0, p1}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    .line 81
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1306
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalTime;->writeExternal(Ljava/io/DataOutput;)V

    .line 1307
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/ZoneOffset;->writeExternal(Ljava/io/DataOutput;)V

    return-void
.end method
