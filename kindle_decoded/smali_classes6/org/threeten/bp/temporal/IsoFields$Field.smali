.class abstract enum Lorg/threeten/bp/temporal/IsoFields$Field;
.super Ljava/lang/Enum;
.source "IsoFields.java"

# interfaces
.implements Lorg/threeten/bp/temporal/TemporalField;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/temporal/IsoFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/threeten/bp/temporal/IsoFields$Field;",
        ">;",
        "Lorg/threeten/bp/temporal/TemporalField;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/threeten/bp/temporal/IsoFields$Field;

.field public static final enum DAY_OF_QUARTER:Lorg/threeten/bp/temporal/IsoFields$Field;

.field private static final QUARTER_DAYS:[I

.field public static final enum QUARTER_OF_YEAR:Lorg/threeten/bp/temporal/IsoFields$Field;

.field public static final enum WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/IsoFields$Field;

.field public static final enum WEEK_OF_WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/IsoFields$Field;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 206
    new-instance v0, Lorg/threeten/bp/temporal/IsoFields$Field$1;

    const/4 v1, 0x0

    const-string v2, "DAY_OF_QUARTER"

    invoke-direct {v0, v2, v1}, Lorg/threeten/bp/temporal/IsoFields$Field$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/temporal/IsoFields$Field;->DAY_OF_QUARTER:Lorg/threeten/bp/temporal/IsoFields$Field;

    .line 298
    new-instance v0, Lorg/threeten/bp/temporal/IsoFields$Field$2;

    const/4 v2, 0x1

    const-string v3, "QUARTER_OF_YEAR"

    invoke-direct {v0, v3, v2}, Lorg/threeten/bp/temporal/IsoFields$Field$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/temporal/IsoFields$Field;->QUARTER_OF_YEAR:Lorg/threeten/bp/temporal/IsoFields$Field;

    .line 339
    new-instance v0, Lorg/threeten/bp/temporal/IsoFields$Field$3;

    const/4 v3, 0x2

    const-string v4, "WEEK_OF_WEEK_BASED_YEAR"

    invoke-direct {v0, v4, v3}, Lorg/threeten/bp/temporal/IsoFields$Field$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/temporal/IsoFields$Field;->WEEK_OF_WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/IsoFields$Field;

    .line 425
    new-instance v0, Lorg/threeten/bp/temporal/IsoFields$Field$4;

    const/4 v4, 0x3

    const-string v5, "WEEK_BASED_YEAR"

    invoke-direct {v0, v5, v4}, Lorg/threeten/bp/temporal/IsoFields$Field$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/temporal/IsoFields$Field;->WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/IsoFields$Field;

    const/4 v5, 0x4

    new-array v5, v5, [Lorg/threeten/bp/temporal/IsoFields$Field;

    .line 205
    sget-object v6, Lorg/threeten/bp/temporal/IsoFields$Field;->DAY_OF_QUARTER:Lorg/threeten/bp/temporal/IsoFields$Field;

    aput-object v6, v5, v1

    sget-object v1, Lorg/threeten/bp/temporal/IsoFields$Field;->QUARTER_OF_YEAR:Lorg/threeten/bp/temporal/IsoFields$Field;

    aput-object v1, v5, v2

    sget-object v1, Lorg/threeten/bp/temporal/IsoFields$Field;->WEEK_OF_WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/IsoFields$Field;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lorg/threeten/bp/temporal/IsoFields$Field;->$VALUES:[Lorg/threeten/bp/temporal/IsoFields$Field;

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 490
    fill-array-data v0, :array_0

    sput-object v0, Lorg/threeten/bp/temporal/IsoFields$Field;->QUARTER_DAYS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x5a
        0xb5
        0x111
        0x0
        0x5b
        0xb6
        0x112
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 205
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/threeten/bp/temporal/IsoFields$1;)V
    .locals 0

    .line 205
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/temporal/IsoFields$Field;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lorg/threeten/bp/temporal/TemporalAccessor;)Z
    .locals 0

    .line 205
    invoke-static {p0}, Lorg/threeten/bp/temporal/IsoFields$Field;->isIso(Lorg/threeten/bp/temporal/TemporalAccessor;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200()[I
    .locals 1

    .line 205
    sget-object v0, Lorg/threeten/bp/temporal/IsoFields$Field;->QUARTER_DAYS:[I

    return-object v0
.end method

.method static synthetic access$300(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 0

    .line 205
    invoke-static {p0}, Lorg/threeten/bp/temporal/IsoFields$Field;->getWeekRange(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lorg/threeten/bp/LocalDate;)I
    .locals 0

    .line 205
    invoke-static {p0}, Lorg/threeten/bp/temporal/IsoFields$Field;->getWeek(Lorg/threeten/bp/LocalDate;)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lorg/threeten/bp/LocalDate;)I
    .locals 0

    .line 205
    invoke-static {p0}, Lorg/threeten/bp/temporal/IsoFields$Field;->getWeekBasedYear(Lorg/threeten/bp/LocalDate;)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(I)I
    .locals 0

    .line 205
    invoke-static {p0}, Lorg/threeten/bp/temporal/IsoFields$Field;->getWeekRange(I)I

    move-result p0

    return p0
.end method

.method private static getWeek(Lorg/threeten/bp/LocalDate;)I
    .locals 5

    .line 520
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getDayOfWeek()Lorg/threeten/bp/DayOfWeek;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 521
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getDayOfYear()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    rsub-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    .line 523
    div-int/lit8 v3, v0, 0x7

    mul-int/lit8 v3, v3, 0x7

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x3

    const/4 v3, -0x3

    if-ge v0, v3, :cond_0

    add-int/lit8 v0, v0, 0x7

    :cond_0
    if-ge v1, v0, :cond_1

    const/16 v0, 0xb4

    .line 530
    invoke-virtual {p0, v0}, Lorg/threeten/bp/LocalDate;->withDayOfYear(I)Lorg/threeten/bp/LocalDate;

    move-result-object p0

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/LocalDate;->minusYears(J)Lorg/threeten/bp/LocalDate;

    move-result-object p0

    invoke-static {p0}, Lorg/threeten/bp/temporal/IsoFields$Field;->getWeekRange(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p0

    invoke-virtual {p0}, Lorg/threeten/bp/temporal/ValueRange;->getMaximum()J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :cond_1
    sub-int/2addr v1, v0

    .line 532
    div-int/lit8 v1, v1, 0x7

    add-int/2addr v1, v2

    const/16 v4, 0x35

    if-ne v1, v4, :cond_4

    if-eq v0, v3, :cond_3

    const/4 v3, -0x2

    if-ne v0, v3, :cond_2

    .line 534
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->isLeapYear()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    return v2
.end method

.method private static getWeekBasedYear(Lorg/threeten/bp/LocalDate;)I
    .locals 4

    .line 542
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v0

    .line 543
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getDayOfYear()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 545
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getDayOfWeek()Lorg/threeten/bp/DayOfWeek;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    sub-int/2addr v1, p0

    const/4 p0, -0x2

    if-ge v1, p0, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x16b

    if-lt v1, v2, :cond_1

    .line 550
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getDayOfWeek()Lorg/threeten/bp/DayOfWeek;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    sub-int/2addr v1, v2

    .line 551
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->isLeapYear()Z

    move-result p0

    sub-int/2addr v1, p0

    sub-int/2addr v1, v3

    if-ltz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private static getWeekRange(I)I
    .locals 2

    const/4 v0, 0x1

    .line 511
    invoke-static {p0, v0, v0}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object p0

    .line 513
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getDayOfWeek()Lorg/threeten/bp/DayOfWeek;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/DayOfWeek;->THURSDAY:Lorg/threeten/bp/DayOfWeek;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getDayOfWeek()Lorg/threeten/bp/DayOfWeek;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/DayOfWeek;->WEDNESDAY:Lorg/threeten/bp/DayOfWeek;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->isLeapYear()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x34

    return p0

    :cond_1
    :goto_0
    const/16 p0, 0x35

    return p0
.end method

.method private static getWeekRange(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 4

    .line 506
    invoke-static {p0}, Lorg/threeten/bp/temporal/IsoFields$Field;->getWeekBasedYear(Lorg/threeten/bp/LocalDate;)I

    move-result p0

    .line 507
    invoke-static {p0}, Lorg/threeten/bp/temporal/IsoFields$Field;->getWeekRange(I)I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p0

    return-object p0
.end method

.method private static isIso(Lorg/threeten/bp/temporal/TemporalAccessor;)Z
    .locals 1

    .line 502
    invoke-static {p0}, Lorg/threeten/bp/chrono/Chronology;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/Chronology;

    move-result-object p0

    sget-object v0, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {p0, v0}, Lorg/threeten/bp/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/temporal/IsoFields$Field;
    .locals 1

    .line 205
    const-class v0, Lorg/threeten/bp/temporal/IsoFields$Field;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/threeten/bp/temporal/IsoFields$Field;

    return-object p0
.end method

.method public static values()[Lorg/threeten/bp/temporal/IsoFields$Field;
    .locals 1

    .line 205
    sget-object v0, Lorg/threeten/bp/temporal/IsoFields$Field;->$VALUES:[Lorg/threeten/bp/temporal/IsoFields$Field;

    invoke-virtual {v0}, [Lorg/threeten/bp/temporal/IsoFields$Field;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/threeten/bp/temporal/IsoFields$Field;

    return-object v0
.end method


# virtual methods
.method public isDateBased()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTimeBased()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
