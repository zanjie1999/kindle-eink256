.class public final Lorg/threeten/bp/chrono/MinguoDate;
.super Lorg/threeten/bp/chrono/ChronoDateImpl;
.source "MinguoDate.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/threeten/bp/chrono/ChronoDateImpl<",
        "Lorg/threeten/bp/chrono/MinguoDate;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x120bd9be64a3de1eL


# instance fields
.field private final isoDate:Lorg/threeten/bp/LocalDate;


# direct methods
.method constructor <init>(Lorg/threeten/bp/LocalDate;)V
    .locals 1

    .line 177
    invoke-direct {p0}, Lorg/threeten/bp/chrono/ChronoDateImpl;-><init>()V

    const-string v0, "date"

    .line 178
    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 179
    iput-object p1, p0, Lorg/threeten/bp/chrono/MinguoDate;->isoDate:Lorg/threeten/bp/LocalDate;

    return-void
.end method

.method private getProlepticMonth()J
    .locals 4

    .line 242
    invoke-direct {p0}, Lorg/threeten/bp/chrono/MinguoDate;->getProlepticYear()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget-object v2, p0, Lorg/threeten/bp/chrono/MinguoDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v2}, Lorg/threeten/bp/LocalDate;->getMonthValue()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getProlepticYear()I
    .locals 1

    .line 246
    iget-object v0, p0, Lorg/threeten/bp/chrono/MinguoDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, -0x777

    return v0
.end method

.method static readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 375
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 376
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result p0

    .line 377
    sget-object v2, Lorg/threeten/bp/chrono/MinguoChronology;->INSTANCE:Lorg/threeten/bp/chrono/MinguoChronology;

    invoke-virtual {v2, v0, v1, p0}, Lorg/threeten/bp/chrono/MinguoChronology;->date(III)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p0

    return-object p0
.end method

.method private with(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/chrono/MinguoDate;
    .locals 1

    .line 322
    iget-object v0, p0, Lorg/threeten/bp/chrono/MinguoDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {p1, v0}, Lorg/threeten/bp/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/threeten/bp/chrono/MinguoDate;

    invoke-direct {v0, p1}, Lorg/threeten/bp/chrono/MinguoDate;-><init>(Lorg/threeten/bp/LocalDate;)V

    :goto_0
    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 362
    new-instance v0, Lorg/threeten/bp/chrono/Ser;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/chrono/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final atTime(Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/LocalTime;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime<",
            "Lorg/threeten/bp/chrono/MinguoDate;",
            ">;"
        }
    .end annotation

    .line 328
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/ChronoDateImpl;->atTime(Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 348
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/chrono/MinguoDate;

    if-eqz v0, :cond_1

    .line 349
    check-cast p1, Lorg/threeten/bp/chrono/MinguoDate;

    .line 350
    iget-object v0, p0, Lorg/threeten/bp/chrono/MinguoDate;->isoDate:Lorg/threeten/bp/LocalDate;

    iget-object p1, p1, Lorg/threeten/bp/chrono/MinguoDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getChronology()Lorg/threeten/bp/chrono/Chronology;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/MinguoDate;->getChronology()Lorg/threeten/bp/chrono/MinguoChronology;

    move-result-object v0

    return-object v0
.end method

.method public getChronology()Lorg/threeten/bp/chrono/MinguoChronology;
    .locals 1

    .line 185
    sget-object v0, Lorg/threeten/bp/chrono/MinguoChronology;->INSTANCE:Lorg/threeten/bp/chrono/MinguoChronology;

    return-object v0
.end method

.method public bridge synthetic getEra()Lorg/threeten/bp/chrono/Era;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/MinguoDate;->getEra()Lorg/threeten/bp/chrono/MinguoEra;

    move-result-object v0

    return-object v0
.end method

.method public getEra()Lorg/threeten/bp/chrono/MinguoEra;
    .locals 1

    .line 190
    invoke-super {p0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getEra()Lorg/threeten/bp/chrono/Era;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/MinguoEra;

    return-object v0
.end method

.method public getLong(Lorg/threeten/bp/temporal/TemporalField;)J
    .locals 3

    .line 223
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_6

    .line 224
    sget-object v0, Lorg/threeten/bp/chrono/MinguoDate$1;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 236
    iget-object v0, p0, Lorg/threeten/bp/chrono/MinguoDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDate;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0

    .line 234
    :cond_0
    invoke-direct {p0}, Lorg/threeten/bp/chrono/MinguoDate;->getProlepticYear()I

    move-result p1

    if-lt p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    int-to-long v0, v2

    return-wide v0

    .line 232
    :cond_2
    invoke-direct {p0}, Lorg/threeten/bp/chrono/MinguoDate;->getProlepticYear()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 226
    :cond_3
    invoke-direct {p0}, Lorg/threeten/bp/chrono/MinguoDate;->getProlepticMonth()J

    move-result-wide v0

    return-wide v0

    .line 228
    :cond_4
    invoke-direct {p0}, Lorg/threeten/bp/chrono/MinguoDate;->getProlepticYear()I

    move-result p1

    if-lt p1, v2, :cond_5

    goto :goto_1

    :cond_5
    rsub-int/lit8 p1, p1, 0x1

    :goto_1
    int-to-long v0, p1

    return-wide v0

    .line 238
    :cond_6
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 357
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/MinguoDate;->getChronology()Lorg/threeten/bp/chrono/MinguoChronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/MinguoChronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/threeten/bp/chrono/MinguoDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v1}, Lorg/threeten/bp/LocalDate;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 0

    .line 71
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/MinguoDate;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/MinguoDate;
    .locals 0

    .line 302
    invoke-super {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ChronoLocalDate;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/chrono/MinguoDate;

    return-object p1
.end method

.method public bridge synthetic minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    .line 71
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/MinguoDate;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoDateImpl;
    .locals 0

    .line 71
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/MinguoDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 0

    .line 71
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/MinguoDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/MinguoDate;
    .locals 0

    .line 292
    invoke-super {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ChronoDateImpl;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoDateImpl;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/chrono/MinguoDate;

    return-object p1
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    .line 71
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/MinguoDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic plusDays(J)Lorg/threeten/bp/chrono/ChronoDateImpl;
    .locals 0

    .line 71
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/MinguoDate;->plusDays(J)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method plusDays(J)Lorg/threeten/bp/chrono/MinguoDate;
    .locals 1

    .line 318
    iget-object v0, p0, Lorg/threeten/bp/chrono/MinguoDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusDays(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/chrono/MinguoDate;->with(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic plusMonths(J)Lorg/threeten/bp/chrono/ChronoDateImpl;
    .locals 0

    .line 71
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/MinguoDate;->plusMonths(J)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method plusMonths(J)Lorg/threeten/bp/chrono/MinguoDate;
    .locals 1

    .line 313
    iget-object v0, p0, Lorg/threeten/bp/chrono/MinguoDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusMonths(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/chrono/MinguoDate;->with(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic plusYears(J)Lorg/threeten/bp/chrono/ChronoDateImpl;
    .locals 0

    .line 71
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/MinguoDate;->plusYears(J)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method plusYears(J)Lorg/threeten/bp/chrono/MinguoDate;
    .locals 1

    .line 308
    iget-object v0, p0, Lorg/threeten/bp/chrono/MinguoDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusYears(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/chrono/MinguoDate;->with(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 7

    .line 200
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_4

    .line 201
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDate;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    .line 203
    sget-object v1, Lorg/threeten/bp/chrono/MinguoDate$1;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 p1, 0x4

    if-eq v1, p1, :cond_0

    .line 214
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/MinguoDate;->getChronology()Lorg/threeten/bp/chrono/MinguoChronology;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/threeten/bp/chrono/MinguoChronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 209
    :cond_0
    sget-object p1, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p1}, Lorg/threeten/bp/temporal/ChronoField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    .line 210
    invoke-direct {p0}, Lorg/threeten/bp/chrono/MinguoDate;->getProlepticYear()I

    move-result v0

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x777

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Lorg/threeten/bp/temporal/ValueRange;->getMinimum()J

    move-result-wide v5

    neg-long v5, v5

    add-long/2addr v5, v1

    add-long/2addr v5, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/threeten/bp/temporal/ValueRange;->getMaximum()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 211
    :goto_0
    invoke-static {v1, v2, v5, v6}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 207
    :cond_2
    iget-object v0, p0, Lorg/threeten/bp/chrono/MinguoDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDate;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 216
    :cond_3
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_4
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->rangeRefinedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1
.end method

.method public toEpochDay()J
    .locals 2

    .line 339
    iget-object v0, p0, Lorg/threeten/bp/chrono/MinguoDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDate;->toEpochDay()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/MinguoDate;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 0

    .line 71
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/MinguoDate;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/MinguoDate;
    .locals 0

    .line 252
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDate;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/chrono/MinguoDate;

    return-object p1
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/MinguoDate;
    .locals 6

    .line 257
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_7

    .line 258
    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    .line 259
    invoke-virtual {p0, v0}, Lorg/threeten/bp/chrono/MinguoDate;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v1

    cmp-long v3, v1, p2

    if-nez v3, :cond_0

    return-object p0

    .line 262
    :cond_0
    sget-object v1, Lorg/threeten/bp/chrono/MinguoDate$1;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x4

    if-eq v1, v4, :cond_2

    const/4 v5, 0x5

    if-eq v1, v5, :cond_1

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_2

    goto :goto_0

    .line 264
    :cond_1
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/MinguoDate;->getChronology()Lorg/threeten/bp/chrono/MinguoChronology;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/threeten/bp/chrono/MinguoChronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    invoke-virtual {p1, p2, p3, v0}, Lorg/threeten/bp/temporal/ValueRange;->checkValidValue(JLorg/threeten/bp/temporal/TemporalField;)J

    .line 265
    invoke-direct {p0}, Lorg/threeten/bp/chrono/MinguoDate;->getProlepticMonth()J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/chrono/MinguoDate;->plusMonths(J)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    return-object p1

    .line 269
    :cond_2
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/MinguoDate;->getChronology()Lorg/threeten/bp/chrono/MinguoChronology;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/threeten/bp/chrono/MinguoChronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v1

    invoke-virtual {v1, p2, p3, v0}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/TemporalField;)I

    move-result v1

    .line 270
    sget-object v5, Lorg/threeten/bp/chrono/MinguoDate$1;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v5, v0

    const/4 v5, 0x1

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    .line 280
    :goto_0
    iget-object v0, p0, Lorg/threeten/bp/chrono/MinguoDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/LocalDate;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/chrono/MinguoDate;->with(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    return-object p1

    .line 276
    :cond_3
    iget-object p1, p0, Lorg/threeten/bp/chrono/MinguoDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-direct {p0}, Lorg/threeten/bp/chrono/MinguoDate;->getProlepticYear()I

    move-result p2

    sub-int/2addr v5, p2

    add-int/lit16 v5, v5, 0x777

    invoke-virtual {p1, v5}, Lorg/threeten/bp/LocalDate;->withYear(I)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/chrono/MinguoDate;->with(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    return-object p1

    .line 274
    :cond_4
    iget-object p1, p0, Lorg/threeten/bp/chrono/MinguoDate;->isoDate:Lorg/threeten/bp/LocalDate;

    add-int/lit16 v1, v1, 0x777

    invoke-virtual {p1, v1}, Lorg/threeten/bp/LocalDate;->withYear(I)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/chrono/MinguoDate;->with(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    return-object p1

    .line 272
    :cond_5
    iget-object p1, p0, Lorg/threeten/bp/chrono/MinguoDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-direct {p0}, Lorg/threeten/bp/chrono/MinguoDate;->getProlepticYear()I

    move-result p2

    if-lt p2, v5, :cond_6

    add-int/lit16 v1, v1, 0x777

    goto :goto_1

    :cond_6
    sub-int/2addr v5, v1

    add-int/lit16 v1, v5, 0x777

    :goto_1
    invoke-virtual {p1, v1}, Lorg/threeten/bp/LocalDate;->withYear(I)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/chrono/MinguoDate;->with(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    return-object p1

    .line 282
    :cond_7
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/TemporalField;->adjustInto(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/chrono/MinguoDate;

    return-object p1
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/MinguoDate;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    .line 71
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/MinguoDate;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/MinguoDate;

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

    .line 367
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, v0}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 368
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, v0}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 369
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, v0}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method
