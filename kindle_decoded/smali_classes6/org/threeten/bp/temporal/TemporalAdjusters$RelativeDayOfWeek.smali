.class final Lorg/threeten/bp/temporal/TemporalAdjusters$RelativeDayOfWeek;
.super Ljava/lang/Object;
.source "TemporalAdjusters.java"

# interfaces
.implements Lorg/threeten/bp/temporal/TemporalAdjuster;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/temporal/TemporalAdjusters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RelativeDayOfWeek"
.end annotation


# instance fields
.field private final dowValue:I

.field private final relative:I


# direct methods
.method private constructor <init>(ILorg/threeten/bp/DayOfWeek;)V
    .locals 1

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "dayOfWeek"

    .line 450
    invoke-static {p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 451
    iput p1, p0, Lorg/threeten/bp/temporal/TemporalAdjusters$RelativeDayOfWeek;->relative:I

    .line 452
    invoke-virtual {p2}, Lorg/threeten/bp/DayOfWeek;->getValue()I

    move-result p1

    iput p1, p0, Lorg/threeten/bp/temporal/TemporalAdjusters$RelativeDayOfWeek;->dowValue:I

    return-void
.end method

.method synthetic constructor <init>(ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/temporal/TemporalAdjusters$1;)V
    .locals 0

    .line 443
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/temporal/TemporalAdjusters$RelativeDayOfWeek;-><init>(ILorg/threeten/bp/DayOfWeek;)V

    return-void
.end method


# virtual methods
.method public adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;
    .locals 3

    .line 457
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/TemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    .line 458
    iget v1, p0, Lorg/threeten/bp/temporal/TemporalAdjusters$RelativeDayOfWeek;->relative:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    iget v1, p0, Lorg/threeten/bp/temporal/TemporalAdjusters$RelativeDayOfWeek;->dowValue:I

    if-ne v0, v1, :cond_0

    return-object p1

    .line 461
    :cond_0
    iget v1, p0, Lorg/threeten/bp/temporal/TemporalAdjusters$RelativeDayOfWeek;->relative:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    .line 462
    iget v1, p0, Lorg/threeten/bp/temporal/TemporalAdjusters$RelativeDayOfWeek;->dowValue:I

    sub-int/2addr v0, v1

    if-ltz v0, :cond_1

    rsub-int/lit8 v0, v0, 0x7

    goto :goto_0

    :cond_1
    neg-int v0, v0

    :goto_0
    int-to-long v0, v0

    .line 463
    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/Temporal;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    return-object p1

    .line 465
    :cond_2
    iget v1, p0, Lorg/threeten/bp/temporal/TemporalAdjusters$RelativeDayOfWeek;->dowValue:I

    sub-int/2addr v1, v0

    if-ltz v1, :cond_3

    rsub-int/lit8 v0, v1, 0x7

    goto :goto_1

    :cond_3
    neg-int v0, v1

    :goto_1
    int-to-long v0, v0

    .line 466
    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/Temporal;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method
