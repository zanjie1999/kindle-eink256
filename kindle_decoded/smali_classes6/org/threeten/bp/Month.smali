.class public final enum Lorg/threeten/bp/Month;
.super Ljava/lang/Enum;
.source "Month.java"

# interfaces
.implements Lorg/threeten/bp/temporal/TemporalAccessor;
.implements Lorg/threeten/bp/temporal/TemporalAdjuster;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/threeten/bp/Month;",
        ">;",
        "Lorg/threeten/bp/temporal/TemporalAccessor;",
        "Lorg/threeten/bp/temporal/TemporalAdjuster;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/threeten/bp/Month;

.field public static final enum APRIL:Lorg/threeten/bp/Month;

.field public static final enum AUGUST:Lorg/threeten/bp/Month;

.field public static final enum DECEMBER:Lorg/threeten/bp/Month;

.field private static final ENUMS:[Lorg/threeten/bp/Month;

.field public static final enum FEBRUARY:Lorg/threeten/bp/Month;

.field public static final enum JANUARY:Lorg/threeten/bp/Month;

.field public static final enum JULY:Lorg/threeten/bp/Month;

.field public static final enum JUNE:Lorg/threeten/bp/Month;

.field public static final enum MARCH:Lorg/threeten/bp/Month;

.field public static final enum MAY:Lorg/threeten/bp/Month;

.field public static final enum NOVEMBER:Lorg/threeten/bp/Month;

.field public static final enum OCTOBER:Lorg/threeten/bp/Month;

.field public static final enum SEPTEMBER:Lorg/threeten/bp/Month;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 81
    new-instance v0, Lorg/threeten/bp/Month;

    const/4 v1, 0x0

    const-string v2, "JANUARY"

    invoke-direct {v0, v2, v1}, Lorg/threeten/bp/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/Month;->JANUARY:Lorg/threeten/bp/Month;

    .line 86
    new-instance v0, Lorg/threeten/bp/Month;

    const/4 v2, 0x1

    const-string v3, "FEBRUARY"

    invoke-direct {v0, v3, v2}, Lorg/threeten/bp/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/Month;->FEBRUARY:Lorg/threeten/bp/Month;

    .line 91
    new-instance v0, Lorg/threeten/bp/Month;

    const/4 v3, 0x2

    const-string v4, "MARCH"

    invoke-direct {v0, v4, v3}, Lorg/threeten/bp/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/Month;->MARCH:Lorg/threeten/bp/Month;

    .line 96
    new-instance v0, Lorg/threeten/bp/Month;

    const/4 v4, 0x3

    const-string v5, "APRIL"

    invoke-direct {v0, v5, v4}, Lorg/threeten/bp/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/Month;->APRIL:Lorg/threeten/bp/Month;

    .line 101
    new-instance v0, Lorg/threeten/bp/Month;

    const/4 v5, 0x4

    const-string v6, "MAY"

    invoke-direct {v0, v6, v5}, Lorg/threeten/bp/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/Month;->MAY:Lorg/threeten/bp/Month;

    .line 106
    new-instance v0, Lorg/threeten/bp/Month;

    const/4 v6, 0x5

    const-string v7, "JUNE"

    invoke-direct {v0, v7, v6}, Lorg/threeten/bp/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/Month;->JUNE:Lorg/threeten/bp/Month;

    .line 111
    new-instance v0, Lorg/threeten/bp/Month;

    const/4 v7, 0x6

    const-string v8, "JULY"

    invoke-direct {v0, v8, v7}, Lorg/threeten/bp/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/Month;->JULY:Lorg/threeten/bp/Month;

    .line 116
    new-instance v0, Lorg/threeten/bp/Month;

    const/4 v8, 0x7

    const-string v9, "AUGUST"

    invoke-direct {v0, v9, v8}, Lorg/threeten/bp/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/Month;->AUGUST:Lorg/threeten/bp/Month;

    .line 121
    new-instance v0, Lorg/threeten/bp/Month;

    const/16 v9, 0x8

    const-string v10, "SEPTEMBER"

    invoke-direct {v0, v10, v9}, Lorg/threeten/bp/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/Month;->SEPTEMBER:Lorg/threeten/bp/Month;

    .line 126
    new-instance v0, Lorg/threeten/bp/Month;

    const/16 v10, 0x9

    const-string v11, "OCTOBER"

    invoke-direct {v0, v11, v10}, Lorg/threeten/bp/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/Month;->OCTOBER:Lorg/threeten/bp/Month;

    .line 131
    new-instance v0, Lorg/threeten/bp/Month;

    const/16 v11, 0xa

    const-string v12, "NOVEMBER"

    invoke-direct {v0, v12, v11}, Lorg/threeten/bp/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/Month;->NOVEMBER:Lorg/threeten/bp/Month;

    .line 136
    new-instance v0, Lorg/threeten/bp/Month;

    const/16 v12, 0xb

    const-string v13, "DECEMBER"

    invoke-direct {v0, v13, v12}, Lorg/threeten/bp/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/Month;->DECEMBER:Lorg/threeten/bp/Month;

    const/16 v13, 0xc

    new-array v13, v13, [Lorg/threeten/bp/Month;

    .line 75
    sget-object v14, Lorg/threeten/bp/Month;->JANUARY:Lorg/threeten/bp/Month;

    aput-object v14, v13, v1

    sget-object v1, Lorg/threeten/bp/Month;->FEBRUARY:Lorg/threeten/bp/Month;

    aput-object v1, v13, v2

    sget-object v1, Lorg/threeten/bp/Month;->MARCH:Lorg/threeten/bp/Month;

    aput-object v1, v13, v3

    sget-object v1, Lorg/threeten/bp/Month;->APRIL:Lorg/threeten/bp/Month;

    aput-object v1, v13, v4

    sget-object v1, Lorg/threeten/bp/Month;->MAY:Lorg/threeten/bp/Month;

    aput-object v1, v13, v5

    sget-object v1, Lorg/threeten/bp/Month;->JUNE:Lorg/threeten/bp/Month;

    aput-object v1, v13, v6

    sget-object v1, Lorg/threeten/bp/Month;->JULY:Lorg/threeten/bp/Month;

    aput-object v1, v13, v7

    sget-object v1, Lorg/threeten/bp/Month;->AUGUST:Lorg/threeten/bp/Month;

    aput-object v1, v13, v8

    sget-object v1, Lorg/threeten/bp/Month;->SEPTEMBER:Lorg/threeten/bp/Month;

    aput-object v1, v13, v9

    sget-object v1, Lorg/threeten/bp/Month;->OCTOBER:Lorg/threeten/bp/Month;

    aput-object v1, v13, v10

    sget-object v1, Lorg/threeten/bp/Month;->NOVEMBER:Lorg/threeten/bp/Month;

    aput-object v1, v13, v11

    aput-object v0, v13, v12

    sput-object v13, Lorg/threeten/bp/Month;->$VALUES:[Lorg/threeten/bp/Month;

    .line 140
    new-instance v0, Lorg/threeten/bp/Month$1;

    invoke-direct {v0}, Lorg/threeten/bp/Month$1;-><init>()V

    .line 149
    invoke-static {}, Lorg/threeten/bp/Month;->values()[Lorg/threeten/bp/Month;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/Month;->ENUMS:[Lorg/threeten/bp/Month;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/Month;
    .locals 4

    .line 189
    instance-of v0, p0, Lorg/threeten/bp/Month;

    if-eqz v0, :cond_0

    .line 190
    check-cast p0, Lorg/threeten/bp/Month;

    return-object p0

    .line 193
    :cond_0
    :try_start_0
    sget-object v0, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-static {p0}, Lorg/threeten/bp/chrono/Chronology;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/Chronology;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    invoke-static {p0}, Lorg/threeten/bp/LocalDate;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalDate;

    move-result-object p0

    .line 196
    :cond_1
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p0, v0}, Lorg/threeten/bp/temporal/TemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    invoke-static {v0}, Lorg/threeten/bp/Month;->of(I)Lorg/threeten/bp/Month;

    move-result-object p0
    :try_end_0
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 198
    new-instance v1, Lorg/threeten/bp/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain Month from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static of(I)Lorg/threeten/bp/Month;
    .locals 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v1, 0xc

    if-gt p0, v1, :cond_0

    .line 167
    sget-object v1, Lorg/threeten/bp/Month;->ENUMS:[Lorg/threeten/bp/Month;

    sub-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    .line 165
    :cond_0
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value for MonthOfYear: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/Month;
    .locals 1

    .line 75
    const-class v0, Lorg/threeten/bp/Month;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/threeten/bp/Month;

    return-object p0
.end method

.method public static values()[Lorg/threeten/bp/Month;
    .locals 1

    .line 75
    sget-object v0, Lorg/threeten/bp/Month;->$VALUES:[Lorg/threeten/bp/Month;

    invoke-virtual {v0}, [Lorg/threeten/bp/Month;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/threeten/bp/Month;

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;
    .locals 3

    .line 587
    invoke-static {p1}, Lorg/threeten/bp/chrono/Chronology;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/Chronology;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0}, Lorg/threeten/bp/Month;->getValue()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    return-object p1

    .line 588
    :cond_0
    new-instance p1, Lorg/threeten/bp/DateTimeException;

    const-string v0, "Adjustment only supported on ISO date-time"

    invoke-direct {p1, v0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public firstDayOfYear(Z)I
    .locals 2

    .line 472
    sget-object v0, Lorg/threeten/bp/Month$2;->$SwitchMap$org$threeten$bp$Month:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    add-int/lit16 p1, p1, 0x14f

    return p1

    :pswitch_0
    add-int/lit16 p1, p1, 0x112

    return p1

    :pswitch_1
    add-int/lit16 p1, p1, 0xd5

    return p1

    :pswitch_2
    add-int/lit16 p1, p1, 0xb6

    return p1

    :pswitch_3
    add-int/lit8 p1, p1, 0x79

    return p1

    :pswitch_4
    add-int/lit8 p1, p1, 0x3c

    return p1

    :pswitch_5
    const/4 p1, 0x1

    return p1

    :pswitch_6
    add-int/lit16 p1, p1, 0x131

    return p1

    :pswitch_7
    add-int/lit16 p1, p1, 0xf4

    return p1

    :pswitch_8
    add-int/lit16 p1, p1, 0x98

    return p1

    :pswitch_9
    add-int/lit8 p1, p1, 0x5b

    return p1

    :pswitch_a
    const/16 p1, 0x20

    return p1

    :pswitch_data_0
    .packed-switch 0x1
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

.method public get(Lorg/threeten/bp/temporal/TemporalField;)I
    .locals 3

    .line 318
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    .line 319
    invoke-virtual {p0}, Lorg/threeten/bp/Month;->getValue()I

    move-result p1

    return p1

    .line 321
    :cond_0
    invoke-virtual {p0, p1}, Lorg/threeten/bp/Month;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/Month;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/TemporalField;)I

    move-result p1

    return p1
.end method

.method public getLong(Lorg/threeten/bp/temporal/TemporalField;)J
    .locals 3

    .line 347
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    .line 348
    invoke-virtual {p0}, Lorg/threeten/bp/Month;->getValue()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 349
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-nez v0, :cond_1

    .line 352
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    .line 350
    :cond_1
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
.end method

.method public getValue()I
    .locals 1

    .line 213
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z
    .locals 3

    .line 255
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 256
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    .line 258
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->isSupportedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public length(Z)I
    .locals 2

    .line 401
    sget-object v0, Lorg/threeten/bp/Month$2;->$SwitchMap$org$threeten$bp$Month:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    const/16 p1, 0x1f

    return p1

    :cond_0
    const/16 p1, 0x1e

    return p1

    :cond_1
    if-eqz p1, :cond_2

    const/16 p1, 0x1d

    goto :goto_0

    :cond_2
    const/16 p1, 0x1c

    :goto_0
    return p1
.end method

.method public maxLength()I
    .locals 2

    .line 447
    sget-object v0, Lorg/threeten/bp/Month$2;->$SwitchMap$org$threeten$bp$Month:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v0, 0x1f

    return v0

    :cond_0
    const/16 v0, 0x1e

    return v0

    :cond_1
    const/16 v0, 0x1d

    return v0
.end method

.method public minLength()I
    .locals 2

    .line 424
    sget-object v0, Lorg/threeten/bp/Month$2;->$SwitchMap$org$threeten$bp$Month:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v0, 0x1f

    return v0

    :cond_0
    const/16 v0, 0x1e

    return v0

    :cond_1
    const/16 v0, 0x1c

    return v0
.end method

.method public plus(J)Lorg/threeten/bp/Month;
    .locals 2

    const-wide/16 v0, 0xc

    .line 368
    rem-long/2addr p1, v0

    long-to-int p2, p1

    .line 369
    sget-object p1, Lorg/threeten/bp/Month;->ENUMS:[Lorg/threeten/bp/Month;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    add-int/lit8 p2, p2, 0xc

    add-int/2addr v0, p2

    rem-int/lit8 v0, v0, 0xc

    aget-object p1, p1, v0

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

    .line 539
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->chronology()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 540
    sget-object p1, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    return-object p1

    .line 541
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->precision()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 542
    sget-object p1, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    return-object p1

    .line 543
    :cond_1
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localDate()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_3

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localTime()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_3

    .line 544
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zone()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_3

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zoneId()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_3

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->offset()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 547
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalQuery;->queryFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 3

    .line 284
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    .line 285
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 286
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-nez v0, :cond_1

    .line 289
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->rangeRefinedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 287
    :cond_1
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
.end method
