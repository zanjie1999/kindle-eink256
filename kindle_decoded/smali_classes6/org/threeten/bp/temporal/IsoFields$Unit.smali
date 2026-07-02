.class final enum Lorg/threeten/bp/temporal/IsoFields$Unit;
.super Ljava/lang/Enum;
.source "IsoFields.java"

# interfaces
.implements Lorg/threeten/bp/temporal/TemporalUnit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/temporal/IsoFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Unit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/threeten/bp/temporal/IsoFields$Unit;",
        ">;",
        "Lorg/threeten/bp/temporal/TemporalUnit;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/threeten/bp/temporal/IsoFields$Unit;

.field public static final enum QUARTER_YEARS:Lorg/threeten/bp/temporal/IsoFields$Unit;

.field public static final enum WEEK_BASED_YEARS:Lorg/threeten/bp/temporal/IsoFields$Unit;


# instance fields
.field private final duration:Lorg/threeten/bp/Duration;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 565
    new-instance v0, Lorg/threeten/bp/temporal/IsoFields$Unit;

    const-wide/32 v1, 0x1e18558

    invoke-static {v1, v2}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "WEEK_BASED_YEARS"

    const-string v4, "WeekBasedYears"

    invoke-direct {v0, v3, v2, v4, v1}, Lorg/threeten/bp/temporal/IsoFields$Unit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    sput-object v0, Lorg/threeten/bp/temporal/IsoFields$Unit;->WEEK_BASED_YEARS:Lorg/threeten/bp/temporal/IsoFields$Unit;

    .line 566
    new-instance v0, Lorg/threeten/bp/temporal/IsoFields$Unit;

    const-wide/32 v3, 0x786156

    invoke-static {v3, v4}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v1

    const/4 v3, 0x1

    const-string v4, "QUARTER_YEARS"

    const-string v5, "QuarterYears"

    invoke-direct {v0, v4, v3, v5, v1}, Lorg/threeten/bp/temporal/IsoFields$Unit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    sput-object v0, Lorg/threeten/bp/temporal/IsoFields$Unit;->QUARTER_YEARS:Lorg/threeten/bp/temporal/IsoFields$Unit;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/threeten/bp/temporal/IsoFields$Unit;

    .line 564
    sget-object v4, Lorg/threeten/bp/temporal/IsoFields$Unit;->WEEK_BASED_YEARS:Lorg/threeten/bp/temporal/IsoFields$Unit;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lorg/threeten/bp/temporal/IsoFields$Unit;->$VALUES:[Lorg/threeten/bp/temporal/IsoFields$Unit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/Duration;",
            ")V"
        }
    .end annotation

    .line 571
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 572
    iput-object p3, p0, Lorg/threeten/bp/temporal/IsoFields$Unit;->name:Ljava/lang/String;

    .line 573
    iput-object p4, p0, Lorg/threeten/bp/temporal/IsoFields$Unit;->duration:Lorg/threeten/bp/Duration;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/temporal/IsoFields$Unit;
    .locals 1

    .line 564
    const-class v0, Lorg/threeten/bp/temporal/IsoFields$Unit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/threeten/bp/temporal/IsoFields$Unit;

    return-object p0
.end method

.method public static values()[Lorg/threeten/bp/temporal/IsoFields$Unit;
    .locals 1

    .line 564
    sget-object v0, Lorg/threeten/bp/temporal/IsoFields$Unit;->$VALUES:[Lorg/threeten/bp/temporal/IsoFields$Unit;

    invoke-virtual {v0}, [Lorg/threeten/bp/temporal/IsoFields$Unit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/threeten/bp/temporal/IsoFields$Unit;

    return-object v0
.end method


# virtual methods
.method public addTo(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/threeten/bp/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .line 604
    sget-object v0, Lorg/threeten/bp/temporal/IsoFields$1;->$SwitchMap$org$threeten$bp$temporal$IsoFields$Unit:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x100

    .line 610
    div-long v2, p2, v0

    sget-object v4, Lorg/threeten/bp/temporal/ChronoUnit;->YEARS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Lorg/threeten/bp/temporal/Temporal;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    rem-long/2addr p2, v0

    const-wide/16 v0, 0x3

    mul-long p2, p2, v0

    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p1, p2, p3, v0}, Lorg/threeten/bp/temporal/Temporal;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    return-object p1

    .line 612
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unreachable"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 606
    :cond_1
    sget-object v0, Lorg/threeten/bp/temporal/IsoFields;->WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/TemporalField;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/TemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1, p2, p3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide p2

    .line 607
    sget-object v0, Lorg/threeten/bp/temporal/IsoFields;->WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/TemporalField;

    invoke-interface {p1, v0, p2, p3}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public isDateBased()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 630
    iget-object v0, p0, Lorg/threeten/bp/temporal/IsoFields$Unit;->name:Ljava/lang/String;

    return-object v0
.end method
