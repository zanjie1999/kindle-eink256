.class public final Lorg/threeten/bp/LocalDate;
.super Lorg/threeten/bp/chrono/ChronoLocalDate;
.source "LocalDate.java"

# interfaces
.implements Lorg/threeten/bp/temporal/Temporal;
.implements Lorg/threeten/bp/temporal/TemporalAdjuster;
.implements Ljava/io/Serializable;


# static fields
.field private static final DAYS_PER_CYCLE:I = 0x23ab1

.field public static final MAX:Lorg/threeten/bp/LocalDate;

.field public static final MIN:Lorg/threeten/bp/LocalDate;

.field private static final serialVersionUID:J = 0x28d617b1d8f33f1eL


# instance fields
.field private final day:S

.field private final month:S

.field private final year:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    const v1, -0x3b9ac9ff

    .line 108
    invoke-static {v1, v0, v0}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/LocalDate;->MIN:Lorg/threeten/bp/LocalDate;

    const v0, 0x3b9ac9ff

    const/16 v1, 0xc

    const/16 v2, 0x1f

    .line 113
    invoke-static {v0, v1, v2}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/LocalDate;->MAX:Lorg/threeten/bp/LocalDate;

    .line 117
    new-instance v0, Lorg/threeten/bp/LocalDate$1;

    invoke-direct {v0}, Lorg/threeten/bp/LocalDate$1;-><init>()V

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    .line 421
    invoke-direct {p0}, Lorg/threeten/bp/chrono/ChronoLocalDate;-><init>()V

    .line 422
    iput p1, p0, Lorg/threeten/bp/LocalDate;->year:I

    int-to-short p1, p2

    .line 423
    iput-short p1, p0, Lorg/threeten/bp/LocalDate;->month:S

    int-to-short p1, p3

    .line 424
    iput-short p1, p0, Lorg/threeten/bp/LocalDate;->day:S

    return-void
.end method

.method private static create(ILorg/threeten/bp/Month;I)Lorg/threeten/bp/LocalDate;
    .locals 3

    const/16 v0, 0x1c

    if-le p2, v0, :cond_1

    .line 381
    sget-object v0, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/threeten/bp/Month;->length(Z)I

    move-result v0

    if-le p2, v0, :cond_1

    const/16 v0, 0x1d

    if-ne p2, v0, :cond_0

    .line 383
    new-instance p1, Lorg/threeten/bp/DateTimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid date \'February 29\' as \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\' is not a leap year"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 385
    :cond_0
    new-instance p0, Lorg/threeten/bp/DateTimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid date \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 388
    :cond_1
    new-instance v0, Lorg/threeten/bp/LocalDate;

    invoke-virtual {p1}, Lorg/threeten/bp/Month;->getValue()I

    move-result p1

    invoke-direct {v0, p0, p1, p2}, Lorg/threeten/bp/LocalDate;-><init>(III)V

    return-object v0
.end method

.method public static from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalDate;
    .locals 3

    .line 332
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localDate()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/threeten/bp/temporal/TemporalAccessor;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/LocalDate;

    if-eqz v0, :cond_0

    return-object v0

    .line 334
    :cond_0
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to obtain LocalDate from TemporalAccessor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
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

.method private get0(Lorg/threeten/bp/temporal/TemporalField;)I
    .locals 3

    .line 579
    sget-object v0, Lorg/threeten/bp/LocalDate$2;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "Field too large for an int: "

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 594
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

    .line 592
    :pswitch_0
    iget p1, p0, Lorg/threeten/bp/LocalDate;->year:I

    if-lt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 591
    :pswitch_1
    iget p1, p0, Lorg/threeten/bp/LocalDate;->year:I

    return p1

    .line 589
    :pswitch_2
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 588
    :pswitch_3
    iget-short p1, p0, Lorg/threeten/bp/LocalDate;->month:S

    return p1

    .line 587
    :pswitch_4
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getDayOfYear()I

    move-result p1

    sub-int/2addr p1, v2

    div-int/lit8 p1, p1, 0x7

    add-int/2addr p1, v2

    return p1

    .line 585
    :pswitch_5
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 582
    :pswitch_6
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getDayOfYear()I

    move-result p1

    sub-int/2addr p1, v2

    rem-int/lit8 p1, p1, 0x7

    add-int/2addr p1, v2

    return p1

    .line 581
    :pswitch_7
    iget-short p1, p0, Lorg/threeten/bp/LocalDate;->day:S

    sub-int/2addr p1, v2

    rem-int/lit8 p1, p1, 0x7

    add-int/2addr p1, v2

    return p1

    .line 580
    :pswitch_8
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getDayOfWeek()Lorg/threeten/bp/DayOfWeek;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/DayOfWeek;->getValue()I

    move-result p1

    return p1

    .line 590
    :pswitch_9
    iget p1, p0, Lorg/threeten/bp/LocalDate;->year:I

    if-lt p1, v2, :cond_1

    goto :goto_1

    :cond_1
    rsub-int/lit8 p1, p1, 0x1

    :goto_1
    return p1

    .line 586
    :pswitch_a
    iget-short p1, p0, Lorg/threeten/bp/LocalDate;->day:S

    sub-int/2addr p1, v2

    div-int/lit8 p1, p1, 0x7

    add-int/2addr p1, v2

    return p1

    .line 584
    :pswitch_b
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getDayOfYear()I

    move-result p1

    return p1

    .line 583
    :pswitch_c
    iget-short p1, p0, Lorg/threeten/bp/LocalDate;->day:S

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getProlepticMonth()J
    .locals 4

    .line 598
    iget v0, p0, Lorg/threeten/bp/LocalDate;->year:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget-short v2, p0, Lorg/threeten/bp/LocalDate;->month:S

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static of(III)Lorg/threeten/bp/LocalDate;
    .locals 3

    .line 236
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 237
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 238
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 239
    invoke-static {p1}, Lorg/threeten/bp/Month;->of(I)Lorg/threeten/bp/Month;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->create(ILorg/threeten/bp/Month;I)Lorg/threeten/bp/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static of(ILorg/threeten/bp/Month;I)Lorg/threeten/bp/LocalDate;
    .locals 3

    .line 217
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    const-string v0, "month"

    .line 218
    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 220
    invoke-static {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->create(ILorg/threeten/bp/Month;I)Lorg/threeten/bp/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static ofEpochDay(J)Lorg/threeten/bp/LocalDate;
    .locals 22

    move-wide/from16 v0, p0

    .line 282
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v2, v0, v1}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    const-wide/32 v2, 0xafaa8

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    const-wide/32 v4, 0x23ab1

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x190

    cmp-long v10, v0, v6

    if-gez v10, :cond_0

    add-long v10, v0, v2

    .line 289
    div-long/2addr v10, v4

    sub-long/2addr v10, v2

    mul-long v12, v10, v8

    neg-long v10, v10

    mul-long v10, v10, v4

    add-long/2addr v0, v10

    goto :goto_0

    :cond_0
    move-wide v12, v6

    :goto_0
    mul-long v10, v0, v8

    const-wide/16 v14, 0x24f

    add-long/2addr v10, v14

    .line 293
    div-long/2addr v10, v4

    const-wide/16 v4, 0x16d

    mul-long v14, v10, v4

    const-wide/16 v16, 0x4

    .line 294
    div-long v18, v10, v16

    add-long v14, v14, v18

    const-wide/16 v18, 0x64

    div-long v20, v10, v18

    sub-long v14, v14, v20

    div-long v20, v10, v8

    add-long v14, v14, v20

    sub-long v14, v0, v14

    cmp-long v20, v14, v6

    if-gez v20, :cond_1

    sub-long/2addr v10, v2

    mul-long v4, v4, v10

    .line 298
    div-long v2, v10, v16

    add-long/2addr v4, v2

    div-long v2, v10, v18

    sub-long/2addr v4, v2

    div-long v2, v10, v8

    add-long/2addr v4, v2

    sub-long v14, v0, v4

    :cond_1
    add-long/2addr v10, v12

    long-to-int v0, v14

    mul-int/lit8 v1, v0, 0x5

    add-int/lit8 v1, v1, 0x2

    .line 304
    div-int/lit16 v1, v1, 0x99

    add-int/lit8 v2, v1, 0x2

    .line 305
    rem-int/lit8 v2, v2, 0xc

    add-int/lit8 v2, v2, 0x1

    mul-int/lit16 v3, v1, 0x132

    add-int/lit8 v3, v3, 0x5

    .line 306
    div-int/lit8 v3, v3, 0xa

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    .line 307
    div-int/lit8 v1, v1, 0xa

    int-to-long v3, v1

    add-long/2addr v10, v3

    .line 310
    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v1, v10, v11}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v1

    .line 311
    new-instance v3, Lorg/threeten/bp/LocalDate;

    invoke-direct {v3, v1, v2, v0}, Lorg/threeten/bp/LocalDate;-><init>(III)V

    return-object v3
.end method

.method public static ofYearDay(II)Lorg/threeten/bp/LocalDate;
    .locals 5

    .line 255
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 256
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v3, p1

    invoke-virtual {v0, v3, v4}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 257
    sget-object v0, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    const/16 v1, 0x16e

    if-ne p1, v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    new-instance p1, Lorg/threeten/bp/DateTimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid date \'DayOfYear 366\' as \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\' is not a leap year"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    add-int/lit8 v1, p1, -0x1

    .line 261
    div-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lorg/threeten/bp/Month;->of(I)Lorg/threeten/bp/Month;

    move-result-object v1

    .line 262
    invoke-virtual {v1, v0}, Lorg/threeten/bp/Month;->firstDayOfYear(Z)I

    move-result v2

    invoke-virtual {v1, v0}, Lorg/threeten/bp/Month;->length(Z)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_2

    const-wide/16 v2, 0x1

    .line 264
    invoke-virtual {v1, v2, v3}, Lorg/threeten/bp/Month;->plus(J)Lorg/threeten/bp/Month;

    move-result-object v1

    .line 266
    :cond_2
    invoke-virtual {v1, v0}, Lorg/threeten/bp/Month;->firstDayOfYear(Z)I

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    .line 267
    invoke-static {p0, v1, p1}, Lorg/threeten/bp/LocalDate;->create(ILorg/threeten/bp/Month;I)Lorg/threeten/bp/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method static readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/LocalDate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1883
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 1884
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 1885
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result p0

    .line 1886
    invoke-static {v0, v1, p0}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

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

    .line 1873
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static resolvePreviousValid(III)Lorg/threeten/bp/LocalDate;
    .locals 3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x1e

    .line 408
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1

    .line 402
    :cond_1
    sget-object v0, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1d

    goto :goto_0

    :cond_2
    const/16 v0, 0x1c

    :goto_0
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 411
    :goto_1
    invoke-static {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1864
    new-instance v0, Lorg/threeten/bp/Ser;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    .line 1369
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDate;->adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public atTime(Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;
    .locals 0

    .line 1508
    invoke-static {p0, p1}, Lorg/threeten/bp/LocalDateTime;->of(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic atTime(Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->atTime(Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 100
    check-cast p1, Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->compareTo(Lorg/threeten/bp/chrono/ChronoLocalDate;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/threeten/bp/chrono/ChronoLocalDate;)I
    .locals 1

    .line 1672
    instance-of v0, p1, Lorg/threeten/bp/LocalDate;

    if-eqz v0, :cond_0

    .line 1673
    check-cast p1, Lorg/threeten/bp/LocalDate;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->compareTo0(Lorg/threeten/bp/LocalDate;)I

    move-result p1

    return p1

    .line 1675
    :cond_0
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDate;->compareTo(Lorg/threeten/bp/chrono/ChronoLocalDate;)I

    move-result p1

    return p1
.end method

.method compareTo0(Lorg/threeten/bp/LocalDate;)I
    .locals 2

    .line 1679
    iget v0, p0, Lorg/threeten/bp/LocalDate;->year:I

    iget v1, p1, Lorg/threeten/bp/LocalDate;->year:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 1681
    iget-short v0, p0, Lorg/threeten/bp/LocalDate;->month:S

    iget-short v1, p1, Lorg/threeten/bp/LocalDate;->month:S

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 1683
    iget-short v0, p0, Lorg/threeten/bp/LocalDate;->day:S

    iget-short p1, p1, Lorg/threeten/bp/LocalDate;->day:S

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1794
    :cond_0
    instance-of v1, p1, Lorg/threeten/bp/LocalDate;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1795
    check-cast p1, Lorg/threeten/bp/LocalDate;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->compareTo0(Lorg/threeten/bp/LocalDate;)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public get(Lorg/threeten/bp/temporal/TemporalField;)I
    .locals 1

    .line 536
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 537
    invoke-direct {p0, p1}, Lorg/threeten/bp/LocalDate;->get0(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result p1

    return p1

    .line 539
    :cond_0
    invoke-super {p0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getChronology()Lorg/threeten/bp/chrono/Chronology;
    .locals 1

    .line 100
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getChronology()Lorg/threeten/bp/chrono/IsoChronology;

    move-result-object v0

    return-object v0
.end method

.method public getChronology()Lorg/threeten/bp/chrono/IsoChronology;
    .locals 1

    .line 614
    sget-object v0, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    return-object v0
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 691
    iget-short v0, p0, Lorg/threeten/bp/LocalDate;->day:S

    return v0
.end method

.method public getDayOfWeek()Lorg/threeten/bp/DayOfWeek;
    .locals 4

    .line 719
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->toEpochDay()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorMod(JI)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 720
    invoke-static {v0}, Lorg/threeten/bp/DayOfWeek;->of(I)Lorg/threeten/bp/DayOfWeek;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfYear()I
    .locals 2

    .line 702
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getMonth()Lorg/threeten/bp/Month;

    move-result-object v0

    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->isLeapYear()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/Month;->firstDayOfYear(Z)I

    move-result v0

    iget-short v1, p0, Lorg/threeten/bp/LocalDate;->day:S

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getEra()Lorg/threeten/bp/chrono/Era;
    .locals 1

    .line 637
    invoke-super {p0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getEra()Lorg/threeten/bp/chrono/Era;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Lorg/threeten/bp/temporal/TemporalField;)J
    .locals 2

    .line 566
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_2

    .line 567
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    .line 568
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->toEpochDay()J

    move-result-wide v0

    return-wide v0

    .line 570
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->PROLEPTIC_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_1

    .line 571
    invoke-direct {p0}, Lorg/threeten/bp/LocalDate;->getProlepticMonth()J

    move-result-wide v0

    return-wide v0

    .line 573
    :cond_1
    invoke-direct {p0, p1}, Lorg/threeten/bp/LocalDate;->get0(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 575
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()Lorg/threeten/bp/Month;
    .locals 1

    .line 680
    iget-short v0, p0, Lorg/threeten/bp/LocalDate;->month:S

    invoke-static {v0}, Lorg/threeten/bp/Month;->of(I)Lorg/threeten/bp/Month;

    move-result-object v0

    return-object v0
.end method

.method public getMonthValue()I
    .locals 1

    .line 665
    iget-short v0, p0, Lorg/threeten/bp/LocalDate;->month:S

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 651
    iget v0, p0, Lorg/threeten/bp/LocalDate;->year:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1807
    iget v0, p0, Lorg/threeten/bp/LocalDate;->year:I

    .line 1808
    iget-short v1, p0, Lorg/threeten/bp/LocalDate;->month:S

    .line 1809
    iget-short v2, p0, Lorg/threeten/bp/LocalDate;->day:S

    and-int/lit16 v3, v0, -0x800

    shl-int/lit8 v0, v0, 0xb

    shl-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    xor-int/2addr v0, v3

    return v0
.end method

.method public isBefore(Lorg/threeten/bp/chrono/ChronoLocalDate;)Z
    .locals 1

    .line 1741
    instance-of v0, p1, Lorg/threeten/bp/LocalDate;

    if-eqz v0, :cond_1

    .line 1742
    check-cast p1, Lorg/threeten/bp/LocalDate;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->compareTo0(Lorg/threeten/bp/LocalDate;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 1744
    :cond_1
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDate;->isBefore(Lorg/threeten/bp/chrono/ChronoLocalDate;)Z

    move-result p1

    return p1
.end method

.method public isLeapYear()Z
    .locals 3

    .line 744
    sget-object v0, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    iget v1, p0, Lorg/threeten/bp/LocalDate;->year:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    return v0
.end method

.method public isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z
    .locals 0

    .line 466
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDate;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result p1

    return p1
.end method

.method public lengthOfMonth()I
    .locals 2

    .line 757
    iget-short v0, p0, Lorg/threeten/bp/LocalDate;->month:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/16 v0, 0x1f

    return v0

    :cond_0
    const/16 v0, 0x1e

    return v0

    .line 759
    :cond_1
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->isLeapYear()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1d

    goto :goto_0

    :cond_2
    const/16 v0, 0x1c

    :goto_0
    return v0
.end method

.method public lengthOfYear()I
    .locals 1

    .line 779
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->isLeapYear()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    goto :goto_0

    :cond_0
    const/16 v0, 0x16d

    :goto_0
    return v0
.end method

.method public minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalDate;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1225
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/LocalDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lorg/threeten/bp/LocalDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/LocalDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 0

    .line 100
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/LocalDate;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    .line 100
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/LocalDate;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public minusDays(J)Lorg/threeten/bp/LocalDate;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1312
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusDays(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/threeten/bp/LocalDate;->plusDays(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusDays(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minusYears(J)Lorg/threeten/bp/LocalDate;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1250
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusYears(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/threeten/bp/LocalDate;->plusYears(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusYears(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalDate;
    .locals 2

    .line 1067
    instance-of v0, p3, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    .line 1068
    move-object v0, p3

    check-cast v0, Lorg/threeten/bp/temporal/ChronoUnit;

    .line 1069
    sget-object v1, Lorg/threeten/bp/LocalDate$2;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1079
    new-instance p1, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported unit: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1077
    :pswitch_0
    sget-object p3, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, p3}, Lorg/threeten/bp/LocalDate;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p3, p1, p2}, Lorg/threeten/bp/LocalDate;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    :pswitch_1
    const/16 p3, 0x3e8

    .line 1076
    invoke-static {p1, p2, p3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusYears(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    :pswitch_2
    const/16 p3, 0x64

    .line 1075
    invoke-static {p1, p2, p3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusYears(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    :pswitch_3
    const/16 p3, 0xa

    .line 1074
    invoke-static {p1, p2, p3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusYears(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    .line 1073
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusYears(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    .line 1072
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusMonths(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    .line 1071
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusWeeks(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    .line 1070
    :pswitch_7
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusDays(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    .line 1081
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/TemporalUnit;->addTo(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/LocalDate;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 0

    .line 100
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/LocalDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    .line 100
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/LocalDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public plusDays(J)Lorg/threeten/bp/LocalDate;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    .line 1182
    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide p1

    .line 1183
    invoke-static {p1, p2}, Lorg/threeten/bp/LocalDate;->ofEpochDay(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public plusMonths(J)Lorg/threeten/bp/LocalDate;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    .line 1137
    :cond_0
    iget v0, p0, Lorg/threeten/bp/LocalDate;->year:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget-short v4, p0, Lorg/threeten/bp/LocalDate;->month:S

    add-int/lit8 v4, v4, -0x1

    int-to-long v4, v4

    add-long/2addr v0, v4

    add-long/2addr v0, p1

    .line 1139
    sget-object p1, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorDiv(JJ)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result p1

    const/16 p2, 0xc

    .line 1140
    invoke-static {v0, v1, p2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorMod(JI)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    .line 1141
    iget-short v0, p0, Lorg/threeten/bp/LocalDate;->day:S

    invoke-static {p1, p2, v0}, Lorg/threeten/bp/LocalDate;->resolvePreviousValid(III)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public plusWeeks(J)Lorg/threeten/bp/LocalDate;
    .locals 1

    const/4 v0, 0x7

    .line 1160
    invoke-static {p1, p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusDays(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public plusYears(J)Lorg/threeten/bp/LocalDate;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    .line 1109
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    iget v1, p0, Lorg/threeten/bp/LocalDate;->year:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result p1

    .line 1110
    iget-short p2, p0, Lorg/threeten/bp/LocalDate;->month:S

    iget-short v0, p0, Lorg/threeten/bp/LocalDate;->day:S

    invoke-static {p1, p2, v0}, Lorg/threeten/bp/LocalDate;->resolvePreviousValid(III)Lorg/threeten/bp/LocalDate;

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

    .line 1337
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localDate()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1340
    :cond_0
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDate;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 4

    .line 493
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_7

    .line 494
    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    .line 495
    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->isDateBased()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 496
    sget-object v1, Lorg/threeten/bp/LocalDate$2;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 503
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 501
    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result p1

    if-gtz p1, :cond_1

    const-wide/32 v0, 0x3b9aca00

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0x3b9ac9ff

    :goto_0
    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 499
    :cond_2
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getMonth()Lorg/threeten/bp/Month;

    move-result-object p1

    sget-object v0, Lorg/threeten/bp/Month;->FEBRUARY:Lorg/threeten/bp/Month;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->isLeapYear()Z

    move-result p1

    if-nez p1, :cond_3

    const-wide/16 v0, 0x4

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x5

    :goto_1
    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 498
    :cond_4
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->lengthOfYear()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 497
    :cond_5
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->lengthOfMonth()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 505
    :cond_6
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

    .line 507
    :cond_7
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->rangeRefinedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1
.end method

.method public toEpochDay()J
    .locals 12

    .line 1635
    iget v0, p0, Lorg/threeten/bp/LocalDate;->year:I

    int-to-long v0, v0

    .line 1636
    iget-short v2, p0, Lorg/threeten/bp/LocalDate;->month:S

    int-to-long v2, v2

    const-wide/16 v4, 0x16d

    mul-long v4, v4, v0

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    cmp-long v8, v0, v6

    if-ltz v8, :cond_0

    const-wide/16 v6, 0x3

    add-long/2addr v6, v0

    const-wide/16 v8, 0x4

    .line 1640
    div-long/2addr v6, v8

    const-wide/16 v8, 0x63

    add-long/2addr v8, v0

    const-wide/16 v10, 0x64

    div-long/2addr v8, v10

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x18f

    add-long/2addr v0, v8

    const-wide/16 v8, 0x190

    div-long/2addr v0, v8

    add-long/2addr v6, v0

    add-long/2addr v4, v6

    goto :goto_0

    :cond_0
    const-wide/16 v6, -0x4

    .line 1642
    div-long v6, v0, v6

    const-wide/16 v8, -0x64

    div-long v8, v0, v8

    sub-long/2addr v6, v8

    const-wide/16 v8, -0x190

    div-long/2addr v0, v8

    add-long/2addr v6, v0

    sub-long/2addr v4, v6

    :goto_0
    const-wide/16 v0, 0x16f

    mul-long v0, v0, v2

    const-wide/16 v6, 0x16a

    sub-long/2addr v0, v6

    const-wide/16 v6, 0xc

    .line 1644
    div-long/2addr v0, v6

    add-long/2addr v4, v0

    .line 1645
    iget-short v0, p0, Lorg/threeten/bp/LocalDate;->day:S

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    add-long/2addr v4, v0

    const-wide/16 v0, 0x2

    cmp-long v6, v2, v0

    if-lez v6, :cond_1

    const-wide/16 v0, 0x1

    sub-long/2addr v4, v0

    .line 1648
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->isLeapYear()Z

    move-result v2

    if-nez v2, :cond_1

    sub-long/2addr v4, v0

    :cond_1
    const-wide/32 v0, 0xafaa8

    sub-long/2addr v4, v0

    return-wide v4
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1823
    iget v0, p0, Lorg/threeten/bp/LocalDate;->year:I

    .line 1824
    iget-short v1, p0, Lorg/threeten/bp/LocalDate;->month:S

    .line 1825
    iget-short v2, p0, Lorg/threeten/bp/LocalDate;->day:S

    .line 1826
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1827
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v6, 0x3e8

    if-ge v3, v6, :cond_1

    if-gez v0, :cond_0

    add-int/lit16 v0, v0, -0x2710

    .line 1830
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    add-int/lit16 v0, v0, 0x2710

    .line 1832
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v3, 0x270f

    if-le v0, v3, :cond_2

    const/16 v3, 0x2b

    .line 1836
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1838
    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    const-string v0, "-0"

    const-string v3, "-"

    if-ge v1, v5, :cond_3

    move-object v6, v0

    goto :goto_1

    :cond_3
    move-object v6, v3

    .line 1840
    :goto_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1841
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-ge v2, v5, :cond_4

    goto :goto_2

    :cond_4
    move-object v0, v3

    .line 1842
    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1843
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1844
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/LocalDate;
    .locals 1

    .line 821
    instance-of v0, p1, Lorg/threeten/bp/LocalDate;

    if-eqz v0, :cond_0

    .line 822
    check-cast p1, Lorg/threeten/bp/LocalDate;

    return-object p1

    .line 824
    :cond_0
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAdjuster;->adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/LocalDate;

    return-object p1
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/LocalDate;
    .locals 4

    .line 932
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_2

    .line 933
    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    .line 934
    invoke-virtual {v0, p2, p3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 935
    sget-object v1, Lorg/threeten/bp/LocalDate$2;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 950
    new-instance p2, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported field: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 948
    :pswitch_0
    sget-object p1, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v2

    cmp-long p1, v2, p2

    if-nez p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/threeten/bp/LocalDate;->year:I

    sub-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lorg/threeten/bp/LocalDate;->withYear(I)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_1
    long-to-int p1, p2

    .line 947
    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->withYear(I)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    .line 945
    :pswitch_2
    sget-object p1, Lorg/threeten/bp/temporal/ChronoField;->PROLEPTIC_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/LocalDate;->plusMonths(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    :pswitch_3
    long-to-int p1, p2

    .line 944
    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->withMonth(I)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    .line 943
    :pswitch_4
    sget-object p1, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/LocalDate;->plusWeeks(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    .line 941
    :pswitch_5
    invoke-static {p2, p3}, Lorg/threeten/bp/LocalDate;->ofEpochDay(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    .line 938
    :pswitch_6
    sget-object p1, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/LocalDate;->plusDays(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    .line 937
    :pswitch_7
    sget-object p1, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/LocalDate;->plusDays(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    .line 936
    :pswitch_8
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getDayOfWeek()Lorg/threeten/bp/DayOfWeek;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/DayOfWeek;->getValue()I

    move-result p1

    int-to-long v0, p1

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/LocalDate;->plusDays(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    .line 946
    :pswitch_9
    iget p1, p0, Lorg/threeten/bp/LocalDate;->year:I

    if-lt p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x1

    sub-long p2, v0, p2

    :goto_1
    long-to-int p1, p2

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->withYear(I)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    .line 942
    :pswitch_a
    sget-object p1, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/LocalDate;->plusWeeks(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    :pswitch_b
    long-to-int p1, p2

    .line 940
    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->withDayOfYear(I)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    :pswitch_c
    long-to-int p1, p2

    .line 939
    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->withDayOfMonth(I)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    .line 952
    :cond_2
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/TemporalField;->adjustInto(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/LocalDate;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 0

    .line 100
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/LocalDate;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    .line 100
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/LocalDate;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public withDayOfMonth(I)Lorg/threeten/bp/LocalDate;
    .locals 2

    .line 1004
    iget-short v0, p0, Lorg/threeten/bp/LocalDate;->day:S

    if-ne v0, p1, :cond_0

    return-object p0

    .line 1007
    :cond_0
    iget v0, p0, Lorg/threeten/bp/LocalDate;->year:I

    iget-short v1, p0, Lorg/threeten/bp/LocalDate;->month:S

    invoke-static {v0, v1, p1}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public withDayOfYear(I)Lorg/threeten/bp/LocalDate;
    .locals 1

    .line 1022
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getDayOfYear()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-object p0

    .line 1025
    :cond_0
    iget v0, p0, Lorg/threeten/bp/LocalDate;->year:I

    invoke-static {v0, p1}, Lorg/threeten/bp/LocalDate;->ofYearDay(II)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public withMonth(I)Lorg/threeten/bp/LocalDate;
    .locals 3

    .line 985
    iget-short v0, p0, Lorg/threeten/bp/LocalDate;->month:S

    if-ne v0, p1, :cond_0

    return-object p0

    .line 988
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 989
    iget v0, p0, Lorg/threeten/bp/LocalDate;->year:I

    iget-short v1, p0, Lorg/threeten/bp/LocalDate;->day:S

    invoke-static {v0, p1, v1}, Lorg/threeten/bp/LocalDate;->resolvePreviousValid(III)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public withYear(I)Lorg/threeten/bp/LocalDate;
    .locals 3

    .line 967
    iget v0, p0, Lorg/threeten/bp/LocalDate;->year:I

    if-ne v0, p1, :cond_0

    return-object p0

    .line 970
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 971
    iget-short v0, p0, Lorg/threeten/bp/LocalDate;->month:S

    iget-short v1, p0, Lorg/threeten/bp/LocalDate;->day:S

    invoke-static {p1, v0, v1}, Lorg/threeten/bp/LocalDate;->resolvePreviousValid(III)Lorg/threeten/bp/LocalDate;

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

    .line 1877
    iget v0, p0, Lorg/threeten/bp/LocalDate;->year:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1878
    iget-short v0, p0, Lorg/threeten/bp/LocalDate;->month:S

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1879
    iget-short v0, p0, Lorg/threeten/bp/LocalDate;->day:S

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method
