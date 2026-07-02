.class public final Lorg/threeten/bp/chrono/HijrahDate;
.super Lorg/threeten/bp/chrono/ChronoDateImpl;
.source "HijrahDate.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/threeten/bp/chrono/ChronoDateImpl<",
        "Lorg/threeten/bp/chrono/HijrahDate;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ADJUSTED_CYCLES:[Ljava/lang/Long;

.field private static final ADJUSTED_CYCLE_YEARS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ADJUSTED_LEAST_MAX_VALUES:[Ljava/lang/Integer;

.field private static final ADJUSTED_MAX_VALUES:[Ljava/lang/Integer;

.field private static final ADJUSTED_MIN_VALUES:[Ljava/lang/Integer;

.field private static final ADJUSTED_MONTH_DAYS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ADJUSTED_MONTH_LENGTHS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final CYCLEYEAR_START_DATE:[I

.field private static final DEFAULT_CONFIG_FILENAME:Ljava/lang/String; = "hijrah_deviation.cfg"

.field private static final DEFAULT_CONFIG_PATH:Ljava/lang/String;

.field private static final DEFAULT_CYCLE_YEARS:[Ljava/lang/Integer;

.field private static final DEFAULT_LEAP_MONTH_DAYS:[Ljava/lang/Integer;

.field private static final DEFAULT_LEAP_MONTH_LENGTHS:[Ljava/lang/Integer;

.field private static final DEFAULT_MONTH_DAYS:[Ljava/lang/Integer;

.field private static final DEFAULT_MONTH_LENGTHS:[Ljava/lang/Integer;

.field private static final FILE_SEP:C

.field private static final HIJRAH_JAN_1_1_GREGORIAN_DAY:I = -0x78274

.field private static final LEAP_MONTH_LENGTH:[I

.field private static final LEAP_NUM_DAYS:[I

.field private static final LEAST_MAX_VALUES:[I

.field private static final MAX_ADJUSTED_CYCLE:I = 0x14e

.field private static final MAX_VALUES:[I

.field private static final MIN_VALUES:[I

.field private static final MONTH_LENGTH:[I

.field private static final NUM_DAYS:[I

.field private static final PATH_SEP:Ljava/lang/String;

.field private static final POSITION_DAY_OF_MONTH:I = 0x5

.field private static final POSITION_DAY_OF_YEAR:I = 0x6

.field private static final serialVersionUID:J = -0x4846033461a5e4e4L


# instance fields
.field private final transient dayOfMonth:I

.field private final transient dayOfWeek:Lorg/threeten/bp/DayOfWeek;

.field private final transient dayOfYear:I

.field private final transient era:Lorg/threeten/bp/chrono/HijrahEra;

.field private final gregorianEpochDay:J

.field private final transient isLeapYear:Z

.field private final transient monthOfYear:I

.field private final transient yearOfEra:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xc

    new-array v1, v0, [I

    .line 136
    fill-array-data v1, :array_0

    sput-object v1, Lorg/threeten/bp/chrono/HijrahDate;->NUM_DAYS:[I

    new-array v1, v0, [I

    .line 141
    fill-array-data v1, :array_1

    sput-object v1, Lorg/threeten/bp/chrono/HijrahDate;->LEAP_NUM_DAYS:[I

    new-array v1, v0, [I

    .line 146
    fill-array-data v1, :array_2

    sput-object v1, Lorg/threeten/bp/chrono/HijrahDate;->MONTH_LENGTH:[I

    new-array v0, v0, [I

    .line 151
    fill-array-data v0, :array_3

    sput-object v0, Lorg/threeten/bp/chrono/HijrahDate;->LEAP_MONTH_LENGTH:[I

    const/4 v0, 0x7

    new-array v1, v0, [I

    .line 168
    fill-array-data v1, :array_4

    sput-object v1, Lorg/threeten/bp/chrono/HijrahDate;->MIN_VALUES:[I

    new-array v1, v0, [I

    .line 182
    fill-array-data v1, :array_5

    sput-object v1, Lorg/threeten/bp/chrono/HijrahDate;->LEAST_MAX_VALUES:[I

    new-array v0, v0, [I

    .line 196
    fill-array-data v0, :array_6

    sput-object v0, Lorg/threeten/bp/chrono/HijrahDate;->MAX_VALUES:[I

    const/16 v0, 0x1e

    new-array v0, v0, [I

    .line 220
    fill-array-data v0, :array_7

    sput-object v0, Lorg/threeten/bp/chrono/HijrahDate;->CYCLEYEAR_START_DATE:[I

    .line 257
    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lorg/threeten/bp/chrono/HijrahDate;->FILE_SEP:C

    .line 261
    sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    sput-object v0, Lorg/threeten/bp/chrono/HijrahDate;->PATH_SEP:Ljava/lang/String;

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "org"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Lorg/threeten/bp/chrono/HijrahDate;->FILE_SEP:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "threeten"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Lorg/threeten/bp/chrono/HijrahDate;->FILE_SEP:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "bp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Lorg/threeten/bp/chrono/HijrahDate;->FILE_SEP:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "chrono"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/chrono/HijrahDate;->DEFAULT_CONFIG_PATH:Ljava/lang/String;

    .line 274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MONTH_DAYS:Ljava/util/HashMap;

    .line 279
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MONTH_LENGTHS:Ljava/util/HashMap;

    .line 285
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_CYCLE_YEARS:Ljava/util/HashMap;

    .line 331
    sget-object v0, Lorg/threeten/bp/chrono/HijrahDate;->NUM_DAYS:[I

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Integer;

    sput-object v0, Lorg/threeten/bp/chrono/HijrahDate;->DEFAULT_MONTH_DAYS:[Ljava/lang/Integer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 332
    :goto_0
    sget-object v2, Lorg/threeten/bp/chrono/HijrahDate;->NUM_DAYS:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 333
    sget-object v3, Lorg/threeten/bp/chrono/HijrahDate;->DEFAULT_MONTH_DAYS:[Ljava/lang/Integer;

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    :cond_0
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->LEAP_NUM_DAYS:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Integer;

    sput-object v1, Lorg/threeten/bp/chrono/HijrahDate;->DEFAULT_LEAP_MONTH_DAYS:[Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 337
    :goto_1
    sget-object v2, Lorg/threeten/bp/chrono/HijrahDate;->LEAP_NUM_DAYS:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 338
    sget-object v3, Lorg/threeten/bp/chrono/HijrahDate;->DEFAULT_LEAP_MONTH_DAYS:[Ljava/lang/Integer;

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 341
    :cond_1
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->MONTH_LENGTH:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Integer;

    sput-object v1, Lorg/threeten/bp/chrono/HijrahDate;->DEFAULT_MONTH_LENGTHS:[Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 342
    :goto_2
    sget-object v2, Lorg/threeten/bp/chrono/HijrahDate;->MONTH_LENGTH:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 343
    sget-object v3, Lorg/threeten/bp/chrono/HijrahDate;->DEFAULT_MONTH_LENGTHS:[Ljava/lang/Integer;

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 346
    :cond_2
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->LEAP_MONTH_LENGTH:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Integer;

    sput-object v1, Lorg/threeten/bp/chrono/HijrahDate;->DEFAULT_LEAP_MONTH_LENGTHS:[Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 347
    :goto_3
    sget-object v2, Lorg/threeten/bp/chrono/HijrahDate;->LEAP_MONTH_LENGTH:[I

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 348
    sget-object v3, Lorg/threeten/bp/chrono/HijrahDate;->DEFAULT_LEAP_MONTH_LENGTHS:[Ljava/lang/Integer;

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 351
    :cond_3
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->CYCLEYEAR_START_DATE:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Integer;

    sput-object v1, Lorg/threeten/bp/chrono/HijrahDate;->DEFAULT_CYCLE_YEARS:[Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 352
    :goto_4
    sget-object v2, Lorg/threeten/bp/chrono/HijrahDate;->CYCLEYEAR_START_DATE:[I

    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 353
    sget-object v3, Lorg/threeten/bp/chrono/HijrahDate;->DEFAULT_CYCLE_YEARS:[Ljava/lang/Integer;

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    const/16 v1, 0x14e

    new-array v1, v1, [Ljava/lang/Long;

    .line 356
    sput-object v1, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    const/4 v1, 0x0

    .line 357
    :goto_5
    sget-object v2, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    array-length v3, v2

    if-ge v1, v3, :cond_5

    mul-int/lit16 v3, v1, 0x2987

    int-to-long v3, v3

    .line 358
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 361
    :cond_5
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->MIN_VALUES:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Integer;

    sput-object v1, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MIN_VALUES:[Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 362
    :goto_6
    sget-object v2, Lorg/threeten/bp/chrono/HijrahDate;->MIN_VALUES:[I

    array-length v3, v2

    if-ge v1, v3, :cond_6

    .line 363
    sget-object v3, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MIN_VALUES:[Ljava/lang/Integer;

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 365
    :cond_6
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->LEAST_MAX_VALUES:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Integer;

    sput-object v1, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_LEAST_MAX_VALUES:[Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 366
    :goto_7
    sget-object v2, Lorg/threeten/bp/chrono/HijrahDate;->LEAST_MAX_VALUES:[I

    array-length v3, v2

    if-ge v1, v3, :cond_7

    .line 367
    sget-object v3, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_LEAST_MAX_VALUES:[Ljava/lang/Integer;

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 369
    :cond_7
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->MAX_VALUES:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Integer;

    sput-object v1, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MAX_VALUES:[Ljava/lang/Integer;

    .line 370
    :goto_8
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->MAX_VALUES:[I

    array-length v2, v1

    if-ge v0, v2, :cond_8

    .line 371
    sget-object v2, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MAX_VALUES:[Ljava/lang/Integer;

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 374
    :cond_8
    :try_start_0
    invoke-static {}, Lorg/threeten/bp/chrono/HijrahDate;->readDeviationConfig()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x1e
        0x3b
        0x59
        0x76
        0x94
        0xb1
        0xcf
        0xec
        0x10a
        0x127
        0x145
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1e
        0x3b
        0x59
        0x76
        0x94
        0xb1
        0xcf
        0xec
        0x10a
        0x127
        0x145
    .end array-data

    :array_2
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_3
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x270f
        0xb
        0x33
        0x5
        0x1d
        0x162
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x270f
        0xb
        0x34
        0x6
        0x1e
        0x163
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x162
        0x2c5
        0x427
        0x589
        0x6ec
        0x84e
        0x9b1
        0xb13
        0xc75
        0xdd8
        0xf3a
        0x109c
        0x11ff
        0x1361
        0x14c3
        0x1626
        0x1788
        0x18eb
        0x1a4d
        0x1baf
        0x1d12
        0x1e74
        0x1fd6
        0x2139
        0x229b
        0x23fe
        0x2560
        0x26c2
        0x2825
    .end array-data
.end method

.method private constructor <init>(J)V
    .locals 6

    .line 588
    invoke-direct {p0}, Lorg/threeten/bp/chrono/ChronoDateImpl;-><init>()V

    .line 589
    invoke-static {p1, p2}, Lorg/threeten/bp/chrono/HijrahDate;->getHijrahDateInfo(J)[I

    move-result-object v0

    const/4 v1, 0x1

    .line 591
    aget v2, v0, v1

    invoke-static {v2}, Lorg/threeten/bp/chrono/HijrahDate;->checkValidYearOfEra(I)V

    const/4 v2, 0x2

    .line 592
    aget v3, v0, v2

    invoke-static {v3}, Lorg/threeten/bp/chrono/HijrahDate;->checkValidMonth(I)V

    const/4 v3, 0x3

    .line 593
    aget v4, v0, v3

    invoke-static {v4}, Lorg/threeten/bp/chrono/HijrahDate;->checkValidDayOfMonth(I)V

    const/4 v4, 0x4

    .line 594
    aget v5, v0, v4

    invoke-static {v5}, Lorg/threeten/bp/chrono/HijrahDate;->checkValidDayOfYear(I)V

    const/4 v5, 0x0

    .line 596
    aget v5, v0, v5

    invoke-static {v5}, Lorg/threeten/bp/chrono/HijrahEra;->of(I)Lorg/threeten/bp/chrono/HijrahEra;

    move-result-object v5

    iput-object v5, p0, Lorg/threeten/bp/chrono/HijrahDate;->era:Lorg/threeten/bp/chrono/HijrahEra;

    .line 597
    aget v1, v0, v1

    iput v1, p0, Lorg/threeten/bp/chrono/HijrahDate;->yearOfEra:I

    .line 598
    aget v1, v0, v2

    iput v1, p0, Lorg/threeten/bp/chrono/HijrahDate;->monthOfYear:I

    .line 599
    aget v1, v0, v3

    iput v1, p0, Lorg/threeten/bp/chrono/HijrahDate;->dayOfMonth:I

    .line 600
    aget v1, v0, v4

    iput v1, p0, Lorg/threeten/bp/chrono/HijrahDate;->dayOfYear:I

    const/4 v1, 0x5

    .line 601
    aget v0, v0, v1

    invoke-static {v0}, Lorg/threeten/bp/DayOfWeek;->of(I)Lorg/threeten/bp/DayOfWeek;

    move-result-object v0

    iput-object v0, p0, Lorg/threeten/bp/chrono/HijrahDate;->dayOfWeek:Lorg/threeten/bp/DayOfWeek;

    .line 602
    iput-wide p1, p0, Lorg/threeten/bp/chrono/HijrahDate;->gregorianEpochDay:J

    .line 603
    iget p1, p0, Lorg/threeten/bp/chrono/HijrahDate;->yearOfEra:I

    int-to-long p1, p1

    invoke-static {p1, p2}, Lorg/threeten/bp/chrono/HijrahDate;->isLeapYear(J)Z

    move-result p1

    iput-boolean p1, p0, Lorg/threeten/bp/chrono/HijrahDate;->isLeapYear:Z

    return-void
.end method

.method private static addDeviationAsHijrah(IIIII)V
    .locals 15

    move v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v5, 0x1

    if-lt v0, v5, :cond_28

    if-lt v2, v5, :cond_27

    if-ltz v1, :cond_26

    const/16 v6, 0xb

    if-gt v1, v6, :cond_26

    if-ltz v3, :cond_25

    if-gt v3, v6, :cond_25

    const/16 v7, 0x270f

    if-gt v2, v7, :cond_24

    if-lt v2, v0, :cond_23

    if-ne v2, v0, :cond_1

    if-lt v3, v1, :cond_0

    goto :goto_0

    .line 1256
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "startYear == endYear && endMonth < startMonth"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    int-to-long v7, v0

    .line 1261
    invoke-static {v7, v8}, Lorg/threeten/bp/chrono/HijrahDate;->isLeapYear(J)Z

    move-result v7

    .line 1264
    sget-object v8, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MONTH_DAYS:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Integer;

    if-nez v8, :cond_3

    if-eqz v7, :cond_2

    .line 1268
    sget-object v8, Lorg/threeten/bp/chrono/HijrahDate;->LEAP_NUM_DAYS:[I

    array-length v8, v8

    new-array v8, v8, [Ljava/lang/Integer;

    const/4 v10, 0x0

    .line 1269
    :goto_1
    sget-object v11, Lorg/threeten/bp/chrono/HijrahDate;->LEAP_NUM_DAYS:[I

    array-length v12, v11

    if-ge v10, v12, :cond_3

    .line 1270
    aget v11, v11, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1273
    :cond_2
    sget-object v8, Lorg/threeten/bp/chrono/HijrahDate;->NUM_DAYS:[I

    array-length v8, v8

    new-array v8, v8, [Ljava/lang/Integer;

    const/4 v10, 0x0

    .line 1274
    :goto_2
    sget-object v11, Lorg/threeten/bp/chrono/HijrahDate;->NUM_DAYS:[I

    array-length v12, v11

    if-ge v10, v12, :cond_3

    .line 1275
    aget v11, v11, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1280
    :cond_3
    array-length v10, v8

    new-array v10, v10, [Ljava/lang/Integer;

    const/4 v11, 0x0

    :goto_3
    const/16 v12, 0xc

    if-ge v11, v12, :cond_5

    if-le v11, v1, :cond_4

    .line 1284
    aget-object v12, v8, v11

    .line 1285
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sub-int/2addr v12, v4

    .line 1284
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    goto :goto_4

    .line 1288
    :cond_4
    aget-object v12, v8, v11

    .line 1289
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1288
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1293
    :cond_5
    sget-object v8, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MONTH_DAYS:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    sget-object v8, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MONTH_LENGTHS:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Integer;

    if-nez v8, :cond_7

    if-eqz v7, :cond_6

    .line 1301
    sget-object v7, Lorg/threeten/bp/chrono/HijrahDate;->LEAP_MONTH_LENGTH:[I

    array-length v7, v7

    new-array v8, v7, [Ljava/lang/Integer;

    const/4 v7, 0x0

    .line 1302
    :goto_5
    sget-object v10, Lorg/threeten/bp/chrono/HijrahDate;->LEAP_MONTH_LENGTH:[I

    array-length v11, v10

    if-ge v7, v11, :cond_7

    .line 1303
    aget v10, v10, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1306
    :cond_6
    sget-object v7, Lorg/threeten/bp/chrono/HijrahDate;->MONTH_LENGTH:[I

    array-length v7, v7

    new-array v8, v7, [Ljava/lang/Integer;

    const/4 v7, 0x0

    .line 1307
    :goto_6
    sget-object v10, Lorg/threeten/bp/chrono/HijrahDate;->MONTH_LENGTH:[I

    array-length v11, v10

    if-ge v7, v11, :cond_7

    .line 1308
    aget v10, v10, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 1313
    :cond_7
    array-length v7, v8

    new-array v7, v7, [Ljava/lang/Integer;

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v12, :cond_9

    if-ne v10, v1, :cond_8

    .line 1317
    aget-object v11, v8, v10

    .line 1318
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sub-int/2addr v11, v4

    .line 1317
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v10

    goto :goto_8

    .line 1320
    :cond_8
    aget-object v11, v8, v10

    .line 1321
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1320
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v10

    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 1325
    :cond_9
    sget-object v8, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MONTH_LENGTHS:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v0, v2, :cond_12

    add-int/lit8 v7, v0, -0x1

    .line 1330
    div-int/lit8 v8, v7, 0x1e

    .line 1331
    rem-int/lit8 v7, v7, 0x1e

    .line 1332
    sget-object v10, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_CYCLE_YEARS:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Integer;

    if-nez v10, :cond_b

    .line 1335
    sget-object v10, Lorg/threeten/bp/chrono/HijrahDate;->CYCLEYEAR_START_DATE:[I

    array-length v10, v10

    new-array v11, v10, [Ljava/lang/Integer;

    const/4 v13, 0x0

    :goto_9
    if-ge v13, v10, :cond_a

    .line 1337
    sget-object v14, Lorg/threeten/bp/chrono/HijrahDate;->CYCLEYEAR_START_DATE:[I

    aget v14, v14, v13

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v11, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    :cond_a
    move-object v10, v11

    :cond_b
    add-int/2addr v7, v5

    .line 1341
    :goto_a
    sget-object v11, Lorg/threeten/bp/chrono/HijrahDate;->CYCLEYEAR_START_DATE:[I

    array-length v11, v11

    if-ge v7, v11, :cond_c

    .line 1342
    aget-object v11, v10, v7

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sub-int/2addr v11, v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 1346
    :cond_c
    sget-object v7, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_CYCLE_YEARS:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v2, -0x1

    .line 1349
    div-int/lit8 v10, v7, 0x1e

    if-eq v8, v10, :cond_e

    add-int/2addr v8, v5

    .line 1356
    :goto_b
    sget-object v11, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    array-length v13, v11

    if-ge v8, v13, :cond_d

    .line 1357
    aget-object v13, v11, v8

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    int-to-long v5, v4

    sub-long/2addr v13, v5

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v11, v8

    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x1

    const/16 v6, 0xb

    goto :goto_b

    :cond_d
    add-int/lit8 v5, v10, 0x1

    .line 1362
    :goto_c
    sget-object v6, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    array-length v8, v6

    if-ge v5, v8, :cond_e

    .line 1363
    aget-object v8, v6, v5

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    move v11, v10

    int-to-long v9, v4

    add-long/2addr v13, v9

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v6, v5

    add-int/lit8 v5, v5, 0x1

    move v10, v11

    goto :goto_c

    :cond_e
    move v11, v10

    .line 1370
    rem-int/lit8 v7, v7, 0x1e

    .line 1371
    sget-object v5, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_CYCLE_YEARS:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Integer;

    if-nez v5, :cond_10

    .line 1374
    sget-object v5, Lorg/threeten/bp/chrono/HijrahDate;->CYCLEYEAR_START_DATE:[I

    array-length v5, v5

    new-array v6, v5, [Ljava/lang/Integer;

    const/4 v9, 0x0

    :goto_d
    if-ge v9, v5, :cond_f

    .line 1376
    sget-object v10, Lorg/threeten/bp/chrono/HijrahDate;->CYCLEYEAR_START_DATE:[I

    aget v10, v10, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    :cond_f
    move-object v5, v6

    :cond_10
    const/4 v6, 0x1

    add-int/2addr v7, v6

    .line 1379
    :goto_e
    sget-object v6, Lorg/threeten/bp/chrono/HijrahDate;->CYCLEYEAR_START_DATE:[I

    array-length v6, v6

    if-ge v7, v6, :cond_11

    .line 1380
    aget-object v6, v5, v7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 1382
    :cond_11
    sget-object v6, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_CYCLE_YEARS:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    int-to-long v5, v2

    .line 1386
    invoke-static {v5, v6}, Lorg/threeten/bp/chrono/HijrahDate;->isLeapYear(J)Z

    move-result v5

    .line 1388
    sget-object v6, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MONTH_DAYS:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Integer;

    if-nez v6, :cond_14

    if-eqz v5, :cond_13

    .line 1392
    sget-object v6, Lorg/threeten/bp/chrono/HijrahDate;->LEAP_NUM_DAYS:[I

    array-length v6, v6

    new-array v6, v6, [Ljava/lang/Integer;

    const/4 v7, 0x0

    .line 1393
    :goto_f
    sget-object v9, Lorg/threeten/bp/chrono/HijrahDate;->LEAP_NUM_DAYS:[I

    array-length v10, v9

    if-ge v7, v10, :cond_14

    .line 1394
    aget v9, v9, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    .line 1397
    :cond_13
    sget-object v6, Lorg/threeten/bp/chrono/HijrahDate;->NUM_DAYS:[I

    array-length v6, v6

    new-array v6, v6, [Ljava/lang/Integer;

    const/4 v7, 0x0

    .line 1398
    :goto_10
    sget-object v9, Lorg/threeten/bp/chrono/HijrahDate;->NUM_DAYS:[I

    array-length v10, v9

    if-ge v7, v10, :cond_14

    .line 1399
    aget v9, v9, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 1404
    :cond_14
    array-length v7, v6

    new-array v7, v7, [Ljava/lang/Integer;

    const/4 v9, 0x0

    :goto_11
    if-ge v9, v12, :cond_16

    if-le v9, v3, :cond_15

    .line 1408
    aget-object v10, v6, v9

    .line 1409
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/2addr v10, v4

    .line 1408
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    goto :goto_12

    .line 1412
    :cond_15
    aget-object v10, v6, v9

    .line 1413
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1412
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    :goto_12
    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    .line 1417
    :cond_16
    sget-object v6, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MONTH_DAYS:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1420
    sget-object v6, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MONTH_LENGTHS:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Integer;

    if-nez v6, :cond_18

    if-eqz v5, :cond_17

    .line 1425
    sget-object v5, Lorg/threeten/bp/chrono/HijrahDate;->LEAP_MONTH_LENGTH:[I

    array-length v5, v5

    new-array v6, v5, [Ljava/lang/Integer;

    const/4 v5, 0x0

    .line 1426
    :goto_13
    sget-object v7, Lorg/threeten/bp/chrono/HijrahDate;->LEAP_MONTH_LENGTH:[I

    array-length v9, v7

    if-ge v5, v9, :cond_18

    .line 1427
    aget v7, v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 1430
    :cond_17
    sget-object v5, Lorg/threeten/bp/chrono/HijrahDate;->MONTH_LENGTH:[I

    array-length v5, v5

    new-array v6, v5, [Ljava/lang/Integer;

    const/4 v5, 0x0

    .line 1431
    :goto_14
    sget-object v7, Lorg/threeten/bp/chrono/HijrahDate;->MONTH_LENGTH:[I

    array-length v9, v7

    if-ge v5, v9, :cond_18

    .line 1432
    aget v7, v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 1437
    :cond_18
    array-length v5, v6

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v9, 0x0

    :goto_15
    if-ge v9, v12, :cond_1a

    if-ne v9, v3, :cond_19

    .line 1441
    aget-object v7, v6, v9

    .line 1442
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v4

    .line 1441
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v9

    goto :goto_16

    .line 1444
    :cond_19
    aget-object v7, v6, v9

    .line 1445
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1444
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v9

    :goto_16
    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    .line 1449
    :cond_1a
    sget-object v4, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MONTH_LENGTHS:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1451
    sget-object v4, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MONTH_LENGTHS:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Integer;

    .line 1453
    sget-object v5, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MONTH_LENGTHS:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Integer;

    .line 1455
    sget-object v6, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MONTH_DAYS:Ljava/util/HashMap;

    .line 1456
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 1457
    sget-object v6, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MONTH_DAYS:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Integer;

    .line 1459
    aget-object v1, v4, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1460
    aget-object v3, v5, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v6, 0xb

    .line 1461
    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v4, v4, v6

    .line 1462
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v0, v4

    .line 1463
    aget-object v2, v2, v6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v4, v5, v6

    .line 1464
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v2, v4

    .line 1466
    sget-object v4, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MAX_VALUES:[Ljava/lang/Integer;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    .line 1467
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1468
    sget-object v6, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_LEAST_MAX_VALUES:[Ljava/lang/Integer;

    aget-object v6, v6, v5

    .line 1469
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v4, v1, :cond_1b

    move v4, v1

    :cond_1b
    if-ge v4, v3, :cond_1c

    move v4, v3

    .line 1477
    :cond_1c
    sget-object v7, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MAX_VALUES:[Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v5

    if-le v6, v1, :cond_1d

    goto :goto_17

    :cond_1d
    move v1, v6

    :goto_17
    if-le v1, v3, :cond_1e

    goto :goto_18

    :cond_1e
    move v3, v1

    .line 1485
    :goto_18
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_LEAST_MAX_VALUES:[Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    .line 1488
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MAX_VALUES:[Ljava/lang/Integer;

    const/4 v3, 0x6

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1489
    sget-object v4, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_LEAST_MAX_VALUES:[Ljava/lang/Integer;

    aget-object v4, v4, v3

    .line 1490
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v1, v0, :cond_1f

    move v1, v0

    :cond_1f
    if-ge v1, v2, :cond_20

    move v1, v2

    .line 1499
    :cond_20
    sget-object v5, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MAX_VALUES:[Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    if-le v4, v0, :cond_21

    goto :goto_19

    :cond_21
    move v0, v4

    :goto_19
    if-le v0, v2, :cond_22

    goto :goto_1a

    :cond_22
    move v2, v0

    .line 1507
    :goto_1a
    sget-object v0, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_LEAST_MAX_VALUES:[Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    return-void

    .line 1253
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "startYear > endYear"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1250
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endYear > 9999"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1247
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endMonth < 0 || endMonth > 11"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1243
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "startMonth < 0 || startMonth > 11"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1240
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endYear < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1237
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "startYear < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkValidDayOfMonth(I)V
    .locals 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    .line 539
    invoke-static {}, Lorg/threeten/bp/chrono/HijrahDate;->getMaximumDayOfMonth()I

    move-result v0

    if-gt p0, v0, :cond_0

    return-void

    .line 540
    :cond_0
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid day of month of Hijrah date, day "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " greater than "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    invoke-static {}, Lorg/threeten/bp/chrono/HijrahDate;->getMaximumDayOfMonth()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " or less than 1"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkValidDayOfYear(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    .line 526
    invoke-static {}, Lorg/threeten/bp/chrono/HijrahDate;->getMaximumDayOfYear()I

    move-result v0

    if-gt p0, v0, :cond_0

    return-void

    .line 527
    :cond_0
    new-instance p0, Lorg/threeten/bp/DateTimeException;

    const-string v0, "Invalid day of year of Hijrah date"

    invoke-direct {p0, v0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static checkValidMonth(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc

    if-gt p0, v0, :cond_0

    return-void

    .line 533
    :cond_0
    new-instance p0, Lorg/threeten/bp/DateTimeException;

    const-string v0, "Invalid month of Hijrah date"

    invoke-direct {p0, v0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static checkValidYearOfEra(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0x270f

    if-gt p0, v0, :cond_0

    return-void

    .line 520
    :cond_0
    new-instance p0, Lorg/threeten/bp/DateTimeException;

    const-string v0, "Invalid year of Hijrah Era"

    invoke-direct {p0, v0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getAdjustedCycle(I)[Ljava/lang/Integer;
    .locals 1

    .line 974
    :try_start_0
    sget-object v0, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_CYCLE_YEARS:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_0

    .line 979
    sget-object p0, Lorg/threeten/bp/chrono/HijrahDate;->DEFAULT_CYCLE_YEARS:[Ljava/lang/Integer;

    :cond_0
    return-object p0
.end method

.method private static getAdjustedMonthDays(I)[Ljava/lang/Integer;
    .locals 2

    .line 993
    :try_start_0
    sget-object v0, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MONTH_DAYS:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    int-to-long v0, p0

    .line 998
    invoke-static {v0, v1}, Lorg/threeten/bp/chrono/HijrahDate;->isLeapYear(J)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 999
    sget-object v0, Lorg/threeten/bp/chrono/HijrahDate;->DEFAULT_LEAP_MONTH_DAYS:[Ljava/lang/Integer;

    goto :goto_1

    .line 1001
    :cond_0
    sget-object v0, Lorg/threeten/bp/chrono/HijrahDate;->DEFAULT_MONTH_DAYS:[Ljava/lang/Integer;

    :cond_1
    :goto_1
    return-object v0
.end method

.method private static getAdjustedMonthLength(I)[Ljava/lang/Integer;
    .locals 2

    .line 1016
    :try_start_0
    sget-object v0, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MONTH_LENGTHS:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    int-to-long v0, p0

    .line 1021
    invoke-static {v0, v1}, Lorg/threeten/bp/chrono/HijrahDate;->isLeapYear(J)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1022
    sget-object v0, Lorg/threeten/bp/chrono/HijrahDate;->DEFAULT_LEAP_MONTH_LENGTHS:[Ljava/lang/Integer;

    goto :goto_1

    .line 1024
    :cond_0
    sget-object v0, Lorg/threeten/bp/chrono/HijrahDate;->DEFAULT_MONTH_LENGTHS:[Ljava/lang/Integer;

    :cond_1
    :goto_1
    return-object v0
.end method

.method private static getConfigFileInputStream()Ljava/io/InputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "org.threeten.bp.i18n.HijrahDate.deviationConfigFile"

    .line 1678
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "hijrah_deviation.cfg"

    :cond_0
    const-string v1, "org.threeten.bp.i18n.HijrahDate.deviationConfigDir"

    .line 1685
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 1688
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "file.separator"

    if-nez v3, :cond_1

    .line 1689
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1688
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1690
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1692
    :cond_2
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Lorg/threeten/bp/chrono/HijrahDate;->FILE_SEP:C

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1693
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1695
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1697
    throw v0

    :cond_3
    return-object v2

    :cond_4
    const-string v1, "java.class.path"

    .line 1703
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1704
    new-instance v3, Ljava/util/StringTokenizer;

    sget-object v4, Lorg/threeten/bp/chrono/HijrahDate;->PATH_SEP:Ljava/lang/String;

    invoke-direct {v3, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    :cond_5
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1706
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 1707
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1708
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1709
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1710
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v6, Lorg/threeten/bp/chrono/HijrahDate;->FILE_SEP:C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v6, Lorg/threeten/bp/chrono/HijrahDate;->DEFAULT_CONFIG_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1714
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Lorg/threeten/bp/chrono/HijrahDate;->FILE_SEP:C

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->DEFAULT_CONFIG_PATH:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Lorg/threeten/bp/chrono/HijrahDate;->FILE_SEP:C

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    :catch_1
    move-exception v0

    .line 1718
    throw v0

    .line 1724
    :cond_6
    :try_start_2
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_5

    .line 1730
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lorg/threeten/bp/chrono/HijrahDate;->DEFAULT_CONFIG_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v5, Lorg/threeten/bp/chrono/HijrahDate;->FILE_SEP:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1732
    invoke-virtual {v1, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    if-nez v5, :cond_9

    .line 1735
    sget-char v5, Lorg/threeten/bp/chrono/HijrahDate;->FILE_SEP:C

    const/16 v6, 0x5c

    const/16 v7, 0x2f

    if-ne v5, v7, :cond_7

    .line 1736
    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_7
    if-ne v5, v6, :cond_8

    .line 1738
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 1740
    :cond_8
    :goto_1
    invoke-virtual {v1, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    :cond_9
    if-eqz v5, :cond_5

    .line 1745
    :try_start_3
    invoke-virtual {v1, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v0

    :catch_3
    move-exception v0

    .line 1747
    throw v0

    :cond_a
    return-object v2
.end method

.method private static getCycleNumber(J)I
    .locals 5

    .line 897
    sget-object v0, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    const/4 v1, 0x0

    .line 900
    :goto_0
    :try_start_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 901
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, p0, v2

    if-gez v4, :cond_0

    add-int/lit8 v1, v1, -0x1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    long-to-int v0, p0

    .line 905
    div-int/lit16 v0, v0, 0x2987
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    long-to-int p1, p0

    .line 907
    div-int/lit16 v0, p1, 0x2987

    :goto_1
    return v0
.end method

.method private static getDayOfCycle(JI)I
    .locals 2

    .line 923
    :try_start_0
    sget-object v0, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    aget-object v0, v0, p2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    mul-int/lit16 p2, p2, 0x2987

    int-to-long v0, p2

    .line 928
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 930
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method private static getDayOfMonth(III)I
    .locals 3

    .line 1088
    invoke-static {p2}, Lorg/threeten/bp/chrono/HijrahDate;->getAdjustedMonthDays(I)[Ljava/lang/Integer;

    move-result-object v0

    if-ltz p0, :cond_1

    if-lez p1, :cond_0

    .line 1092
    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    sub-int/2addr p0, p1

    :cond_0
    return p0

    :cond_1
    int-to-long v1, p2

    .line 1097
    invoke-static {v1, v2}, Lorg/threeten/bp/chrono/HijrahDate;->isLeapYear(J)Z

    move-result p2

    if-eqz p2, :cond_2

    add-int/lit16 p0, p0, 0x163

    goto :goto_1

    :cond_2
    add-int/lit16 p0, p0, 0x162

    :goto_1
    if-lez p1, :cond_3

    .line 1100
    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_3
    return p0
.end method

.method private static getDayOfYear(III)I
    .locals 0

    .line 1039
    invoke-static {p0}, Lorg/threeten/bp/chrono/HijrahDate;->getAdjustedCycle(I)[Ljava/lang/Integer;

    move-result-object p0

    if-lez p1, :cond_0

    .line 1042
    aget-object p0, p0, p2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr p1, p0

    return p1

    .line 1044
    :cond_0
    aget-object p0, p0, p2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method

.method private static getGregorianEpochDay(III)J
    .locals 2

    .line 852
    invoke-static {p0}, Lorg/threeten/bp/chrono/HijrahDate;->yearToGregorianEpochDay(I)J

    move-result-wide v0

    add-int/lit8 p1, p1, -0x1

    .line 853
    invoke-static {p1, p0}, Lorg/threeten/bp/chrono/HijrahDate;->getMonthDays(II)I

    move-result p0

    int-to-long p0, p0

    add-long/2addr v0, p0

    int-to-long p0, p2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method private static getHijrahDateInfo(J)[I
    .locals 9

    const-wide/32 v0, -0x78274

    sub-long/2addr p0, v0

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-ltz v3, :cond_0

    .line 801
    invoke-static {p0, p1}, Lorg/threeten/bp/chrono/HijrahDate;->getCycleNumber(J)I

    move-result v1

    .line 802
    invoke-static {p0, p1, v1}, Lorg/threeten/bp/chrono/HijrahDate;->getDayOfCycle(JI)I

    move-result v2

    int-to-long v3, v2

    .line 803
    invoke-static {v1, v3, v4}, Lorg/threeten/bp/chrono/HijrahDate;->getYearInCycle(IJ)I

    move-result v3

    .line 804
    invoke-static {v1, v2, v3}, Lorg/threeten/bp/chrono/HijrahDate;->getDayOfYear(III)I

    move-result v2

    mul-int/lit8 v1, v1, 0x1e

    add-int/2addr v1, v3

    add-int/2addr v1, v0

    .line 807
    invoke-static {v2, v1}, Lorg/threeten/bp/chrono/HijrahDate;->getMonthOfYear(II)I

    move-result v3

    .line 808
    invoke-static {v2, v3, v1}, Lorg/threeten/bp/chrono/HijrahDate;->getDayOfMonth(III)I

    move-result v4

    add-int/2addr v4, v0

    .line 810
    sget-object v5, Lorg/threeten/bp/chrono/HijrahEra;->AH:Lorg/threeten/bp/chrono/HijrahEra;

    invoke-virtual {v5}, Lorg/threeten/bp/chrono/HijrahEra;->getValue()I

    move-result v5

    goto :goto_1

    :cond_0
    long-to-int v1, p0

    .line 812
    div-int/lit16 v2, v1, 0x2987

    .line 813
    rem-int/lit16 v1, v1, 0x2987

    if-nez v1, :cond_1

    const/16 v1, -0x2987

    add-int/lit8 v2, v2, 0x1

    :cond_1
    int-to-long v3, v1

    .line 818
    invoke-static {v2, v3, v4}, Lorg/threeten/bp/chrono/HijrahDate;->getYearInCycle(IJ)I

    move-result v3

    .line 819
    invoke-static {v2, v1, v3}, Lorg/threeten/bp/chrono/HijrahDate;->getDayOfYear(III)I

    move-result v1

    mul-int/lit8 v2, v2, 0x1e

    sub-int/2addr v2, v3

    rsub-int/lit8 v2, v2, 0x1

    int-to-long v3, v2

    .line 822
    invoke-static {v3, v4}, Lorg/threeten/bp/chrono/HijrahDate;->isLeapYear(J)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit16 v1, v1, 0x163

    goto :goto_0

    :cond_2
    add-int/lit16 v1, v1, 0x162

    .line 824
    :goto_0
    invoke-static {v1, v2}, Lorg/threeten/bp/chrono/HijrahDate;->getMonthOfYear(II)I

    move-result v3

    .line 825
    invoke-static {v1, v3, v2}, Lorg/threeten/bp/chrono/HijrahDate;->getDayOfMonth(III)I

    move-result v4

    add-int/2addr v4, v0

    .line 827
    sget-object v5, Lorg/threeten/bp/chrono/HijrahEra;->BEFORE_AH:Lorg/threeten/bp/chrono/HijrahEra;

    invoke-virtual {v5}, Lorg/threeten/bp/chrono/HijrahEra;->getValue()I

    move-result v5

    move v8, v2

    move v2, v1

    move v1, v8

    :goto_1
    const-wide/16 v6, 0x5

    add-long/2addr p0, v6

    const-wide/16 v6, 0x7

    .line 830
    rem-long/2addr p0, v6

    long-to-int p1, p0

    const/4 p0, 0x0

    if-gtz p1, :cond_3

    const/4 v6, 0x7

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    add-int/2addr p1, v6

    const/4 v6, 0x6

    new-array v6, v6, [I

    aput v5, v6, p0

    aput v1, v6, v0

    const/4 p0, 0x2

    add-int/2addr v3, v0

    aput v3, v6, p0

    const/4 p0, 0x3

    aput v4, v6, p0

    const/4 p0, 0x4

    add-int/2addr v2, v0

    aput v2, v6, p0

    const/4 p0, 0x5

    aput p1, v6, p0

    return-object v6
.end method

.method static getMaximumDayOfMonth()I
    .locals 2

    .line 1186
    sget-object v0, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MAX_VALUES:[Ljava/lang/Integer;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static getMaximumDayOfYear()I
    .locals 2

    .line 1204
    sget-object v0, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MAX_VALUES:[Ljava/lang/Integer;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static getMonthDays(II)I
    .locals 0

    .line 1125
    invoke-static {p1}, Lorg/threeten/bp/chrono/HijrahDate;->getAdjustedMonthDays(I)[Ljava/lang/Integer;

    move-result-object p1

    .line 1126
    aget-object p0, p1, p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method static getMonthLength(II)I
    .locals 0

    .line 1137
    invoke-static {p1}, Lorg/threeten/bp/chrono/HijrahDate;->getAdjustedMonthLength(I)[Ljava/lang/Integer;

    move-result-object p1

    .line 1138
    aget-object p0, p1, p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static getMonthOfYear(II)I
    .locals 5

    .line 1057
    invoke-static {p1}, Lorg/threeten/bp/chrono/HijrahDate;->getAdjustedMonthDays(I)[Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    if-ltz p0, :cond_2

    .line 1060
    :goto_0
    array-length p1, v0

    if-ge v2, p1, :cond_1

    .line 1061
    aget-object p1, v0, v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ge p0, p1, :cond_0

    add-int/lit8 v2, v2, -0x1

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    int-to-long v3, p1

    .line 1067
    invoke-static {v3, v4}, Lorg/threeten/bp/chrono/HijrahDate;->isLeapYear(J)Z

    move-result p1

    if-eqz p1, :cond_3

    add-int/lit16 p0, p0, 0x163

    goto :goto_1

    :cond_3
    add-int/lit16 p0, p0, 0x162

    .line 1069
    :goto_1
    array-length p1, v0

    if-ge v2, p1, :cond_5

    .line 1070
    aget-object p1, v0, v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ge p0, p1, :cond_4

    add-int/lit8 v2, v2, -0x1

    return v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return v1
.end method

.method private static getYearInCycle(IJ)I
    .locals 5

    .line 941
    invoke-static {p0}, Lorg/threeten/bp/chrono/HijrahDate;->getAdjustedCycle(I)[Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x1d

    if-lez v3, :cond_3

    .line 947
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 948
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, p1, v2

    if-gez v4, :cond_1

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    neg-long p1, p1

    .line 955
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_5

    .line 956
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, p1, v2

    if-gtz v4, :cond_4

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return v1
.end method

.method static getYearLength(I)I
    .locals 4

    add-int/lit8 v0, p0, -0x1

    .line 1154
    div-int/lit8 v1, v0, 0x1e

    .line 1157
    :try_start_0
    sget-object v2, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_CYCLE_YEARS:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 1162
    rem-int/lit8 v0, v0, 0x1e

    const/16 p0, 0x1d

    if-ne v0, p0, :cond_0

    .line 1164
    sget-object p0, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    add-int/lit8 v3, v1, 0x1

    aget-object p0, p0, v3

    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result p0

    sget-object v3, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    aget-object v1, v3, v1

    .line 1165
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    sub-int/2addr p0, v1

    aget-object v0, v2, v0

    .line 1166
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    sub-int/2addr p0, v0

    return p0

    :cond_0
    add-int/lit8 p0, v0, 0x1

    .line 1168
    aget-object p0, v2, p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    aget-object v0, v2, v0

    .line 1169
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    int-to-long v0, p0

    .line 1171
    invoke-static {v0, v1}, Lorg/threeten/bp/chrono/HijrahDate;->isLeapYear(J)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x163

    goto :goto_2

    :cond_2
    const/16 p0, 0x162

    :goto_2
    return p0
.end method

.method static isLeapYear(J)Z
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    neg-long p0, p0

    :goto_0
    const-wide/16 v0, 0xb

    mul-long p0, p0, v0

    const-wide/16 v2, 0xe

    add-long/2addr p0, v2

    const-wide/16 v2, 0x1e

    .line 1114
    rem-long/2addr p0, v2

    cmp-long v2, p0, v0

    if-gez v2, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static of(III)Lorg/threeten/bp/chrono/HijrahDate;
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    .line 488
    sget-object v0, Lorg/threeten/bp/chrono/HijrahEra;->AH:Lorg/threeten/bp/chrono/HijrahEra;

    invoke-static {v0, p0, p1, p2}, Lorg/threeten/bp/chrono/HijrahDate;->of(Lorg/threeten/bp/chrono/HijrahEra;III)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object p0

    goto :goto_0

    .line 489
    :cond_0
    sget-object v1, Lorg/threeten/bp/chrono/HijrahEra;->BEFORE_AH:Lorg/threeten/bp/chrono/HijrahEra;

    sub-int/2addr v0, p0

    invoke-static {v1, v0, p1, p2}, Lorg/threeten/bp/chrono/HijrahDate;->of(Lorg/threeten/bp/chrono/HijrahEra;III)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static of(Lorg/threeten/bp/chrono/HijrahEra;III)Lorg/threeten/bp/chrono/HijrahDate;
    .locals 1

    const-string v0, "era"

    .line 505
    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 506
    invoke-static {p1}, Lorg/threeten/bp/chrono/HijrahDate;->checkValidYearOfEra(I)V

    .line 507
    invoke-static {p2}, Lorg/threeten/bp/chrono/HijrahDate;->checkValidMonth(I)V

    .line 508
    invoke-static {p3}, Lorg/threeten/bp/chrono/HijrahDate;->checkValidDayOfMonth(I)V

    .line 509
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/HijrahEra;->prolepticYear(I)I

    move-result p0

    invoke-static {p0, p2, p3}, Lorg/threeten/bp/chrono/HijrahDate;->getGregorianEpochDay(III)J

    move-result-wide p0

    .line 510
    new-instance p2, Lorg/threeten/bp/chrono/HijrahDate;

    invoke-direct {p2, p0, p1}, Lorg/threeten/bp/chrono/HijrahDate;-><init>(J)V

    return-object p2
.end method

.method static ofEpochDay(J)Lorg/threeten/bp/chrono/HijrahDate;
    .locals 1

    .line 558
    new-instance v0, Lorg/threeten/bp/chrono/HijrahDate;

    invoke-direct {v0, p0, p1}, Lorg/threeten/bp/chrono/HijrahDate;-><init>(J)V

    return-object v0
.end method

.method private static parseLine(Ljava/lang/String;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1558
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ";"

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 1560
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x3a

    .line 1561
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    const-string v3, "."

    if-eq v1, v2, :cond_4

    add-int/lit8 v4, v1, 0x1

    .line 1564
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 1563
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1567
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    const/16 v5, 0x2d

    .line 1573
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v2, :cond_3

    const/4 v6, 0x0

    .line 1575
    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    .line 1577
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x2f

    .line 1579
    invoke-virtual {v7, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1580
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v5, v2, :cond_2

    .line 1586
    invoke-virtual {v7, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v5, v5, 0x1

    .line 1590
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    .line 1588
    invoke-virtual {v7, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1592
    :try_start_1
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1599
    :try_start_2
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    if-eq v1, v2, :cond_1

    .line 1611
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v1, v1, 0x1

    .line 1614
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    .line 1613
    invoke-virtual {p0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1616
    :try_start_3
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1623
    :try_start_4
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    if-eq v7, v2, :cond_0

    if-eq v5, v2, :cond_0

    if-eq v1, v2, :cond_0

    if-eq p0, v2, :cond_0

    .line 1636
    invoke-static {v7, v5, v1, p0, v4}, Lorg/threeten/bp/chrono/HijrahDate;->addDeviationAsHijrah(IIIII)V

    goto :goto_0

    .line 1639
    :cond_0
    new-instance p0, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown error at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 1625
    :catch_0
    new-instance p0, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End month is not properly set at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 1618
    :catch_1
    new-instance p0, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End year is not properly set at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 1630
    :cond_1
    new-instance p0, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End year/month has incorrect format at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 1601
    :catch_2
    new-instance p0, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start month is not properly set at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 1594
    :catch_3
    new-instance p0, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start year is not properly set at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 1606
    :cond_2
    new-instance p0, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start year/month has incorrect format at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 1643
    :cond_3
    new-instance p0, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start and end year/month has incorrect format at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 1569
    :catch_4
    new-instance p0, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Offset is not properly set at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 1648
    :cond_4
    new-instance p0, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Offset has incorrect format at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_5
    return-void
.end method

.method private static readDeviationConfig()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1530
    invoke-static {}, Lorg/threeten/bp/chrono/HijrahDate;->getConfigFileInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 1534
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 1537
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 1539
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1540
    invoke-static {v1, v0}, Lorg/threeten/bp/chrono/HijrahDate;->parseLine(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1544
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1546
    :cond_1
    throw v0

    :cond_2
    :goto_2
    return-void
.end method

.method static readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1770
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 1771
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 1772
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result p0

    .line 1773
    sget-object v2, Lorg/threeten/bp/chrono/HijrahChronology;->INSTANCE:Lorg/threeten/bp/chrono/HijrahChronology;

    invoke-virtual {v2, v0, v1, p0}, Lorg/threeten/bp/chrono/HijrahChronology;->date(III)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object p0

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3

    .line 612
    new-instance v0, Lorg/threeten/bp/chrono/HijrahDate;

    iget-wide v1, p0, Lorg/threeten/bp/chrono/HijrahDate;->gregorianEpochDay:J

    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/chrono/HijrahDate;-><init>(J)V

    return-object v0
.end method

.method private static resolvePreviousValid(III)Lorg/threeten/bp/chrono/HijrahDate;
    .locals 1

    add-int/lit8 v0, p1, -0x1

    .line 698
    invoke-static {v0, p0}, Lorg/threeten/bp/chrono/HijrahDate;->getMonthDays(II)I

    move-result v0

    if-le p2, v0, :cond_0

    move p2, v0

    .line 702
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/threeten/bp/chrono/HijrahDate;->of(III)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object p0

    return-object p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1759
    new-instance v0, Lorg/threeten/bp/chrono/Ser;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/chrono/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method

.method private static yearToGregorianEpochDay(I)J
    .locals 4

    add-int/lit8 p0, p0, -0x1

    .line 865
    div-int/lit8 v0, p0, 0x1e

    .line 866
    rem-int/lit8 p0, p0, 0x1e

    .line 868
    invoke-static {v0}, Lorg/threeten/bp/chrono/HijrahDate;->getAdjustedCycle(I)[Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    aget-object v1, v1, v2

    .line 869
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez p0, :cond_0

    neg-int v1, v1

    .line 878
    :cond_0
    :try_start_0
    sget-object p0, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    aget-object p0, p0, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    mul-int/lit16 v0, v0, 0x2987

    int-to-long v2, v0

    .line 884
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 887
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    int-to-long v0, v1

    add-long/2addr v2, v0

    const-wide/32 v0, -0x78274

    add-long/2addr v2, v0

    const-wide/16 v0, 0x1

    sub-long/2addr v2, v0

    return-wide v2
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
            "Lorg/threeten/bp/chrono/HijrahDate;",
            ">;"
        }
    .end annotation

    .line 729
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/ChronoDateImpl;->atTime(Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getChronology()Lorg/threeten/bp/chrono/Chronology;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/HijrahDate;->getChronology()Lorg/threeten/bp/chrono/HijrahChronology;

    move-result-object v0

    return-object v0
.end method

.method public getChronology()Lorg/threeten/bp/chrono/HijrahChronology;
    .locals 1

    .line 618
    sget-object v0, Lorg/threeten/bp/chrono/HijrahChronology;->INSTANCE:Lorg/threeten/bp/chrono/HijrahChronology;

    return-object v0
.end method

.method public bridge synthetic getEra()Lorg/threeten/bp/chrono/Era;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/HijrahDate;->getEra()Lorg/threeten/bp/chrono/HijrahEra;

    move-result-object v0

    return-object v0
.end method

.method public getEra()Lorg/threeten/bp/chrono/HijrahEra;
    .locals 1

    .line 623
    iget-object v0, p0, Lorg/threeten/bp/chrono/HijrahDate;->era:Lorg/threeten/bp/chrono/HijrahEra;

    return-object v0
.end method

.method public getLong(Lorg/threeten/bp/temporal/TemporalField;)J
    .locals 3

    .line 646
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 647
    sget-object v0, Lorg/threeten/bp/chrono/HijrahDate$1;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 661
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

    .line 659
    :pswitch_0
    iget-object p1, p0, Lorg/threeten/bp/chrono/HijrahDate;->era:Lorg/threeten/bp/chrono/HijrahEra;

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/HijrahEra;->getValue()I

    move-result p1

    :goto_0
    int-to-long v0, p1

    return-wide v0

    .line 658
    :pswitch_1
    iget p1, p0, Lorg/threeten/bp/chrono/HijrahDate;->yearOfEra:I

    goto :goto_0

    .line 656
    :pswitch_2
    iget p1, p0, Lorg/threeten/bp/chrono/HijrahDate;->monthOfYear:I

    goto :goto_0

    .line 655
    :pswitch_3
    iget p1, p0, Lorg/threeten/bp/chrono/HijrahDate;->dayOfYear:I

    add-int/lit8 p1, p1, -0x1

    div-int/lit8 p1, p1, 0x7

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 653
    :pswitch_4
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/HijrahDate;->toEpochDay()J

    move-result-wide v0

    return-wide v0

    .line 650
    :pswitch_5
    iget p1, p0, Lorg/threeten/bp/chrono/HijrahDate;->dayOfYear:I

    add-int/lit8 p1, p1, -0x1

    rem-int/lit8 p1, p1, 0x7

    goto :goto_1

    .line 649
    :pswitch_6
    iget p1, p0, Lorg/threeten/bp/chrono/HijrahDate;->dayOfMonth:I

    add-int/lit8 p1, p1, -0x1

    rem-int/lit8 p1, p1, 0x7

    goto :goto_1

    .line 648
    :pswitch_7
    iget-object p1, p0, Lorg/threeten/bp/chrono/HijrahDate;->dayOfWeek:Lorg/threeten/bp/DayOfWeek;

    invoke-virtual {p1}, Lorg/threeten/bp/DayOfWeek;->getValue()I

    move-result p1

    goto :goto_0

    .line 657
    :pswitch_8
    iget p1, p0, Lorg/threeten/bp/chrono/HijrahDate;->yearOfEra:I

    goto :goto_0

    .line 654
    :pswitch_9
    iget p1, p0, Lorg/threeten/bp/chrono/HijrahDate;->dayOfMonth:I

    add-int/lit8 p1, p1, -0x1

    div-int/lit8 p1, p1, 0x7

    goto :goto_1

    .line 652
    :pswitch_a
    iget p1, p0, Lorg/threeten/bp/chrono/HijrahDate;->dayOfYear:I

    goto :goto_0

    .line 651
    :pswitch_b
    iget p1, p0, Lorg/threeten/bp/chrono/HijrahDate;->dayOfMonth:I

    goto :goto_0

    .line 663
    :cond_0
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public lengthOfMonth()I
    .locals 2

    .line 1143
    iget v0, p0, Lorg/threeten/bp/chrono/HijrahDate;->monthOfYear:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/threeten/bp/chrono/HijrahDate;->yearOfEra:I

    invoke-static {v0, v1}, Lorg/threeten/bp/chrono/HijrahDate;->getMonthLength(II)I

    move-result v0

    return v0
.end method

.method public lengthOfYear()I
    .locals 1

    .line 1177
    iget v0, p0, Lorg/threeten/bp/chrono/HijrahDate;->yearOfEra:I

    invoke-static {v0}, Lorg/threeten/bp/chrono/HijrahDate;->getYearLength(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 0

    .line 111
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/HijrahDate;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/HijrahDate;
    .locals 0

    .line 722
    invoke-super {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ChronoLocalDate;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/chrono/HijrahDate;

    return-object p1
.end method

.method public bridge synthetic minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    .line 111
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/HijrahDate;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoDateImpl;
    .locals 0

    .line 111
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/HijrahDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 0

    .line 111
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/HijrahDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/HijrahDate;
    .locals 0

    .line 712
    invoke-super {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ChronoDateImpl;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoDateImpl;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/chrono/HijrahDate;

    return-object p1
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    .line 111
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/HijrahDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic plusDays(J)Lorg/threeten/bp/chrono/ChronoDateImpl;
    .locals 0

    .line 111
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/HijrahDate;->plusDays(J)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method plusDays(J)Lorg/threeten/bp/chrono/HijrahDate;
    .locals 3

    .line 777
    new-instance v0, Lorg/threeten/bp/chrono/HijrahDate;

    iget-wide v1, p0, Lorg/threeten/bp/chrono/HijrahDate;->gregorianEpochDay:J

    add-long/2addr v1, p1

    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/chrono/HijrahDate;-><init>(J)V

    return-object v0
.end method

.method bridge synthetic plusMonths(J)Lorg/threeten/bp/chrono/ChronoDateImpl;
    .locals 0

    .line 111
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/HijrahDate;->plusMonths(J)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method plusMonths(J)Lorg/threeten/bp/chrono/HijrahDate;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    .line 763
    :cond_0
    iget v0, p0, Lorg/threeten/bp/chrono/HijrahDate;->monthOfYear:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    long-to-int p2, p1

    add-int/2addr v0, p2

    .line 765
    div-int/lit8 p1, v0, 0xc

    .line 766
    rem-int/lit8 v0, v0, 0xc

    :goto_0
    if-gez v0, :cond_1

    add-int/lit8 v0, v0, 0xc

    .line 769
    invoke-static {p1, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(II)I

    move-result p1

    goto :goto_0

    .line 771
    :cond_1
    iget p2, p0, Lorg/threeten/bp/chrono/HijrahDate;->yearOfEra:I

    invoke-static {p2, p1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(II)I

    move-result p1

    .line 772
    iget-object p2, p0, Lorg/threeten/bp/chrono/HijrahDate;->era:Lorg/threeten/bp/chrono/HijrahEra;

    add-int/2addr v0, v1

    iget v1, p0, Lorg/threeten/bp/chrono/HijrahDate;->dayOfMonth:I

    invoke-static {p2, p1, v0, v1}, Lorg/threeten/bp/chrono/HijrahDate;->of(Lorg/threeten/bp/chrono/HijrahEra;III)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic plusYears(J)Lorg/threeten/bp/chrono/ChronoDateImpl;
    .locals 0

    .line 111
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/HijrahDate;->plusYears(J)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method plusYears(J)Lorg/threeten/bp/chrono/HijrahDate;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    .line 754
    :cond_0
    iget v0, p0, Lorg/threeten/bp/chrono/HijrahDate;->yearOfEra:I

    long-to-int p2, p1

    invoke-static {v0, p2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(II)I

    move-result p1

    .line 755
    iget-object p2, p0, Lorg/threeten/bp/chrono/HijrahDate;->era:Lorg/threeten/bp/chrono/HijrahEra;

    iget v0, p0, Lorg/threeten/bp/chrono/HijrahDate;->monthOfYear:I

    iget v1, p0, Lorg/threeten/bp/chrono/HijrahDate;->dayOfMonth:I

    invoke-static {p2, p1, v0, v1}, Lorg/threeten/bp/chrono/HijrahDate;->of(Lorg/threeten/bp/chrono/HijrahEra;III)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 4

    .line 628
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_5

    .line 629
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDate;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 630
    check-cast p1, Lorg/threeten/bp/temporal/ChronoField;

    .line 631
    sget-object v0, Lorg/threeten/bp/chrono/HijrahDate$1;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-wide/16 v2, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 637
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/HijrahDate;->getChronology()Lorg/threeten/bp/chrono/HijrahChronology;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/HijrahChronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v0, 0x3e8

    .line 635
    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    :cond_1
    const-wide/16 v0, 0x5

    .line 634
    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 633
    :cond_2
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/HijrahDate;->lengthOfYear()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 632
    :cond_3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/HijrahDate;->lengthOfMonth()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 639
    :cond_4
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

    .line 641
    :cond_5
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->rangeRefinedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1
.end method

.method public toEpochDay()J
    .locals 3

    .line 734
    iget v0, p0, Lorg/threeten/bp/chrono/HijrahDate;->yearOfEra:I

    iget v1, p0, Lorg/threeten/bp/chrono/HijrahDate;->monthOfYear:I

    iget v2, p0, Lorg/threeten/bp/chrono/HijrahDate;->dayOfMonth:I

    invoke-static {v0, v1, v2}, Lorg/threeten/bp/chrono/HijrahDate;->getGregorianEpochDay(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 0

    .line 111
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/HijrahDate;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 0

    .line 111
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/HijrahDate;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/HijrahDate;
    .locals 0

    .line 669
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDate;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/chrono/HijrahDate;

    return-object p1
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/HijrahDate;
    .locals 5

    .line 674
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 675
    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    .line 676
    invoke-virtual {v0, p2, p3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    long-to-int v1, p2

    .line 678
    sget-object v2, Lorg/threeten/bp/chrono/HijrahDate$1;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const-wide/16 v2, 0x7

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    .line 692
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

    .line 690
    :pswitch_0
    iget p1, p0, Lorg/threeten/bp/chrono/HijrahDate;->yearOfEra:I

    sub-int/2addr v4, p1

    iget p1, p0, Lorg/threeten/bp/chrono/HijrahDate;->monthOfYear:I

    iget p2, p0, Lorg/threeten/bp/chrono/HijrahDate;->dayOfMonth:I

    invoke-static {v4, p1, p2}, Lorg/threeten/bp/chrono/HijrahDate;->resolvePreviousValid(III)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object p1

    return-object p1

    .line 689
    :pswitch_1
    iget p1, p0, Lorg/threeten/bp/chrono/HijrahDate;->monthOfYear:I

    iget p2, p0, Lorg/threeten/bp/chrono/HijrahDate;->dayOfMonth:I

    invoke-static {v1, p1, p2}, Lorg/threeten/bp/chrono/HijrahDate;->resolvePreviousValid(III)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object p1

    return-object p1

    .line 687
    :pswitch_2
    iget p1, p0, Lorg/threeten/bp/chrono/HijrahDate;->yearOfEra:I

    iget p2, p0, Lorg/threeten/bp/chrono/HijrahDate;->dayOfMonth:I

    invoke-static {p1, v1, p2}, Lorg/threeten/bp/chrono/HijrahDate;->resolvePreviousValid(III)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object p1

    return-object p1

    .line 686
    :pswitch_3
    sget-object p1, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/HijrahDate;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    sub-long/2addr p2, v0

    mul-long p2, p2, v2

    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/chrono/HijrahDate;->plusDays(J)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object p1

    return-object p1

    .line 684
    :pswitch_4
    new-instance p1, Lorg/threeten/bp/chrono/HijrahDate;

    int-to-long p2, v1

    invoke-direct {p1, p2, p3}, Lorg/threeten/bp/chrono/HijrahDate;-><init>(J)V

    return-object p1

    .line 681
    :pswitch_5
    sget-object p1, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/HijrahDate;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/chrono/HijrahDate;->plusDays(J)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object p1

    return-object p1

    .line 680
    :pswitch_6
    sget-object p1, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/HijrahDate;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/chrono/HijrahDate;->plusDays(J)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object p1

    return-object p1

    .line 679
    :pswitch_7
    iget-object p1, p0, Lorg/threeten/bp/chrono/HijrahDate;->dayOfWeek:Lorg/threeten/bp/DayOfWeek;

    invoke-virtual {p1}, Lorg/threeten/bp/DayOfWeek;->getValue()I

    move-result p1

    int-to-long v0, p1

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/chrono/HijrahDate;->plusDays(J)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object p1

    return-object p1

    .line 688
    :pswitch_8
    iget p1, p0, Lorg/threeten/bp/chrono/HijrahDate;->yearOfEra:I

    if-lt p1, v4, :cond_0

    goto :goto_0

    :cond_0
    rsub-int/lit8 v1, v1, 0x1

    :goto_0
    iget p1, p0, Lorg/threeten/bp/chrono/HijrahDate;->monthOfYear:I

    iget p2, p0, Lorg/threeten/bp/chrono/HijrahDate;->dayOfMonth:I

    invoke-static {v1, p1, p2}, Lorg/threeten/bp/chrono/HijrahDate;->resolvePreviousValid(III)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object p1

    return-object p1

    .line 685
    :pswitch_9
    sget-object p1, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/HijrahDate;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    sub-long/2addr p2, v0

    mul-long p2, p2, v2

    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/chrono/HijrahDate;->plusDays(J)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object p1

    return-object p1

    .line 683
    :pswitch_a
    iget p1, p0, Lorg/threeten/bp/chrono/HijrahDate;->yearOfEra:I

    sub-int/2addr v1, v4

    div-int/lit8 p2, v1, 0x1e

    add-int/2addr p2, v4

    rem-int/lit8 v1, v1, 0x1e

    add-int/2addr v1, v4

    invoke-static {p1, p2, v1}, Lorg/threeten/bp/chrono/HijrahDate;->resolvePreviousValid(III)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object p1

    return-object p1

    .line 682
    :pswitch_b
    iget p1, p0, Lorg/threeten/bp/chrono/HijrahDate;->yearOfEra:I

    iget p2, p0, Lorg/threeten/bp/chrono/HijrahDate;->monthOfYear:I

    invoke-static {p1, p2, v1}, Lorg/threeten/bp/chrono/HijrahDate;->resolvePreviousValid(III)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object p1

    return-object p1

    .line 694
    :cond_1
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/TemporalField;->adjustInto(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/chrono/HijrahDate;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
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

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    .line 111
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/HijrahDate;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    .line 111
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/HijrahDate;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/HijrahDate;

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

    .line 1764
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, v0}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1765
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, v0}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1766
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, v0}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method
