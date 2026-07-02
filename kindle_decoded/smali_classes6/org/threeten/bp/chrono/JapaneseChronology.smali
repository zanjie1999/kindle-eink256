.class public final Lorg/threeten/bp/chrono/JapaneseChronology;
.super Lorg/threeten/bp/chrono/Chronology;
.source "JapaneseChronology.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ERA_FULL_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ERA_NARROW_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ERA_SHORT_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FALLBACK_LANGUAGE:Ljava/lang/String; = "en"

.field public static final INSTANCE:Lorg/threeten/bp/chrono/JapaneseChronology;

.field static final LOCALE:Ljava/util/Locale;

.field private static final TARGET_LANGUAGE:Ljava/lang/String; = "ja"

.field private static final serialVersionUID:J = 0x6623c4799cb0ddcL


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 104
    new-instance v0, Ljava/util/Locale;

    const-string v1, "JP"

    const-string v2, "ja"

    invoke-direct {v0, v2, v1, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/threeten/bp/chrono/JapaneseChronology;->LOCALE:Ljava/util/Locale;

    .line 109
    new-instance v0, Lorg/threeten/bp/chrono/JapaneseChronology;

    invoke-direct {v0}, Lorg/threeten/bp/chrono/JapaneseChronology;-><init>()V

    sput-object v0, Lorg/threeten/bp/chrono/JapaneseChronology;->INSTANCE:Lorg/threeten/bp/chrono/JapaneseChronology;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/threeten/bp/chrono/JapaneseChronology;->ERA_NARROW_NAMES:Ljava/util/Map;

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/threeten/bp/chrono/JapaneseChronology;->ERA_SHORT_NAMES:Ljava/util/Map;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/threeten/bp/chrono/JapaneseChronology;->ERA_FULL_NAMES:Ljava/util/Map;

    .line 142
    sget-object v0, Lorg/threeten/bp/chrono/JapaneseChronology;->ERA_NARROW_NAMES:Ljava/util/Map;

    const-string v3, "Unknown"

    const-string v4, "K"

    const-string v5, "M"

    const-string v6, "T"

    const-string v7, "S"

    const-string v8, "H"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v1

    const-string v3, "en"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lorg/threeten/bp/chrono/JapaneseChronology;->ERA_NARROW_NAMES:Ljava/util/Map;

    const-string v4, "Unknown"

    const-string v5, "K"

    const-string v6, "M"

    const-string v7, "T"

    const-string v8, "S"

    const-string v9, "H"

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lorg/threeten/bp/chrono/JapaneseChronology;->ERA_SHORT_NAMES:Ljava/util/Map;

    const-string v4, "Unknown"

    const-string v5, "K"

    const-string v6, "M"

    const-string v7, "T"

    const-string v8, "S"

    const-string v9, "H"

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lorg/threeten/bp/chrono/JapaneseChronology;->ERA_SHORT_NAMES:Ljava/util/Map;

    const-string v4, "Unknown"

    const-string v5, "\u6176"

    const-string v6, "\u660e"

    const-string v7, "\u5927"

    const-string v8, "\u662d"

    const-string v9, "\u5e73"

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lorg/threeten/bp/chrono/JapaneseChronology;->ERA_FULL_NAMES:Ljava/util/Map;

    const-string v4, "Unknown"

    const-string v5, "Keio"

    const-string v6, "Meiji"

    const-string v7, "Taisho"

    const-string v8, "Showa"

    const-string v9, "Heisei"

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lorg/threeten/bp/chrono/JapaneseChronology;->ERA_FULL_NAMES:Ljava/util/Map;

    const-string v3, "Unknown"

    const-string v4, "\u6176\u5fdc"

    const-string v5, "\u660e\u6cbb"

    const-string v6, "\u5927\u6b63"

    const-string v7, "\u662d\u548c"

    const-string v8, "\u5e73\u6210"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Lorg/threeten/bp/chrono/Chronology;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 164
    sget-object v0, Lorg/threeten/bp/chrono/JapaneseChronology;->INSTANCE:Lorg/threeten/bp/chrono/JapaneseChronology;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic date(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 0

    .line 101
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public date(III)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 1

    .line 210
    new-instance v0, Lorg/threeten/bp/chrono/JapaneseDate;

    invoke-static {p1, p2, p3}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/threeten/bp/chrono/JapaneseDate;-><init>(Lorg/threeten/bp/LocalDate;)V

    return-object v0
.end method

.method public date(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 1

    .line 270
    instance-of v0, p1, Lorg/threeten/bp/chrono/JapaneseDate;

    if-eqz v0, :cond_0

    .line 271
    check-cast p1, Lorg/threeten/bp/chrono/JapaneseDate;

    return-object p1

    .line 273
    :cond_0
    new-instance v0, Lorg/threeten/bp/chrono/JapaneseDate;

    invoke-static {p1}, Lorg/threeten/bp/LocalDate;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/threeten/bp/chrono/JapaneseDate;-><init>(Lorg/threeten/bp/LocalDate;)V

    return-object v0
.end method

.method public bridge synthetic eraOf(I)Lorg/threeten/bp/chrono/Era;
    .locals 0

    .line 101
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/JapaneseChronology;->eraOf(I)Lorg/threeten/bp/chrono/JapaneseEra;

    move-result-object p1

    return-object p1
.end method

.method public eraOf(I)Lorg/threeten/bp/chrono/JapaneseEra;
    .locals 0

    .line 352
    invoke-static {p1}, Lorg/threeten/bp/chrono/JapaneseEra;->of(I)Lorg/threeten/bp/chrono/JapaneseEra;

    move-result-object p1

    return-object p1
.end method

.method public getCalendarType()Ljava/lang/String;
    .locals 1

    const-string v0, "japanese"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "Japanese"

    return-object v0
.end method

.method public localDateTime(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/TemporalAccessor;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime<",
            "Lorg/threeten/bp/chrono/JapaneseDate;",
            ">;"
        }
    .end annotation

    .line 279
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/Chronology;->localDateTime(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public prolepticYear(Lorg/threeten/bp/chrono/Era;I)I
    .locals 5

    .line 329
    instance-of v0, p1, Lorg/threeten/bp/chrono/JapaneseEra;

    if-eqz v0, :cond_0

    .line 332
    check-cast p1, Lorg/threeten/bp/chrono/JapaneseEra;

    .line 333
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/JapaneseEra;->startDate()Lorg/threeten/bp/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x1

    .line 334
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/JapaneseEra;->endDate()Lorg/threeten/bp/LocalDate;

    move-result-object v3

    invoke-virtual {v3}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v3

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/JapaneseEra;->startDate()Lorg/threeten/bp/LocalDate;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result p1

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    int-to-long v1, p2

    .line 335
    sget-object p2, Lorg/threeten/bp/temporal/ChronoField;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p1, v1, v2, p2}, Lorg/threeten/bp/temporal/ValueRange;->checkValidValue(JLorg/threeten/bp/temporal/TemporalField;)J

    return v0

    .line 330
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    const-string p2, "Era must be JapaneseEra"

    invoke-direct {p1, p2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 11

    .line 363
    sget-object v0, Lorg/threeten/bp/chrono/JapaneseChronology$1;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 384
    sget-object v0, Lorg/threeten/bp/chrono/JapaneseChronology;->LOCALE:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 385
    sget-object v1, Lorg/threeten/bp/chrono/JapaneseChronology$1;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_1

    .line 417
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unimplementable field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :pswitch_0
    invoke-virtual {p1}, Lorg/threeten/bp/temporal/ChronoField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 408
    :pswitch_1
    invoke-static {}, Lorg/threeten/bp/chrono/JapaneseEra;->values()[Lorg/threeten/bp/chrono/JapaneseEra;

    move-result-object p1

    const/16 v0, 0x16e

    .line 410
    :goto_0
    array-length v1, p1

    if-ge v2, v1, :cond_0

    .line 411
    aget-object v1, p1, v2

    invoke-virtual {v1}, Lorg/threeten/bp/chrono/JapaneseEra;->startDate()Lorg/threeten/bp/LocalDate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/LocalDate;->lengthOfYear()I

    move-result v1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lorg/threeten/bp/chrono/JapaneseEra;->startDate()Lorg/threeten/bp/LocalDate;

    move-result-object v3

    invoke-virtual {v3}, Lorg/threeten/bp/LocalDate;->getDayOfYear()I

    move-result v3

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x1

    int-to-long v5, v0

    const-wide/16 v7, 0x16e

    .line 413
    invoke-static/range {v3 .. v8}, Lorg/threeten/bp/temporal/ValueRange;->of(JJJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    :pswitch_2
    const/4 p1, 0x2

    .line 405
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v2, v1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->getGreatestMinimum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v4, v1

    .line 406
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->getLeastMaximum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v6, v1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    int-to-long v8, p1

    .line 405
    invoke-static/range {v2 .. v9}, Lorg/threeten/bp/temporal/ValueRange;->of(JJJJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 395
    :pswitch_3
    invoke-static {}, Lorg/threeten/bp/chrono/JapaneseEra;->values()[Lorg/threeten/bp/chrono/JapaneseEra;

    move-result-object p1

    .line 396
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/JapaneseEra;->endDate()Lorg/threeten/bp/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v0

    .line 397
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lorg/threeten/bp/chrono/JapaneseEra;->startDate()Lorg/threeten/bp/LocalDate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    const v1, 0x7fffffff

    .line 399
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 400
    aget-object v3, p1, v2

    invoke-virtual {v3}, Lorg/threeten/bp/chrono/JapaneseEra;->endDate()Lorg/threeten/bp/LocalDate;

    move-result-object v3

    invoke-virtual {v3}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v3

    aget-object v4, p1, v2

    invoke-virtual {v4}, Lorg/threeten/bp/chrono/JapaneseEra;->startDate()Lorg/threeten/bp/LocalDate;

    move-result-object v4

    invoke-virtual {v4}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x6

    int-to-long v7, v1

    int-to-long v9, v0

    .line 402
    invoke-static/range {v3 .. v10}, Lorg/threeten/bp/temporal/ValueRange;->of(JJJJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 391
    :pswitch_4
    invoke-static {}, Lorg/threeten/bp/chrono/JapaneseEra;->values()[Lorg/threeten/bp/chrono/JapaneseEra;

    move-result-object p1

    .line 392
    sget-object v0, Lorg/threeten/bp/chrono/JapaneseDate;->MIN_DATE:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v0

    int-to-long v0, v0

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/JapaneseEra;->endDate()Lorg/threeten/bp/LocalDate;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 387
    :pswitch_5
    invoke-static {}, Lorg/threeten/bp/chrono/JapaneseEra;->values()[Lorg/threeten/bp/chrono/JapaneseEra;

    move-result-object p1

    .line 388
    aget-object v0, p1, v2

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/JapaneseEra;->getValue()I

    move-result v0

    int-to-long v0, v0

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/JapaneseEra;->getValue()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public zonedDateTime(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/Instant;",
            "Lorg/threeten/bp/ZoneId;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoZonedDateTime<",
            "Lorg/threeten/bp/chrono/JapaneseDate;",
            ">;"
        }
    .end annotation

    .line 291
    invoke-super {p0, p1, p2}, Lorg/threeten/bp/chrono/Chronology;->zonedDateTime(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method
