.class final enum Lorg/threeten/bp/temporal/IsoFields$Field$4;
.super Lorg/threeten/bp/temporal/IsoFields$Field;
.source "IsoFields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/temporal/IsoFields$Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 425
    invoke-direct {p0, p1, p2, v0}, Lorg/threeten/bp/temporal/IsoFields$Field;-><init>(Ljava/lang/String;ILorg/threeten/bp/temporal/IsoFields$1;)V

    return-void
.end method


# virtual methods
.method public adjustInto(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/threeten/bp/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .line 460
    invoke-virtual {p0, p1}, Lorg/threeten/bp/temporal/IsoFields$Field$4;->isSupportedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/IsoFields$Field$4;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/IsoFields$Field;->WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/IsoFields$Field;

    invoke-virtual {v0, p2, p3, v1}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/TemporalField;)I

    move-result p2

    .line 464
    invoke-static {p1}, Lorg/threeten/bp/LocalDate;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalDate;

    move-result-object p3

    .line 465
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p3, v0}, Lorg/threeten/bp/LocalDate;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    .line 466
    invoke-static {p3}, Lorg/threeten/bp/temporal/IsoFields$Field;->access$400(Lorg/threeten/bp/LocalDate;)I

    move-result p3

    const/16 v1, 0x35

    const/16 v2, 0x34

    if-ne p3, v1, :cond_0

    .line 467
    invoke-static {p2}, Lorg/threeten/bp/temporal/IsoFields$Field;->access$600(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    const/16 p3, 0x34

    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x1

    .line 470
    invoke-static {p2, v2, v1}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object p2

    .line 471
    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p2, v1}, Lorg/threeten/bp/LocalDate;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr p3, v2

    mul-int/lit8 p3, p3, 0x7

    add-int/2addr v0, p3

    int-to-long v0, v0

    .line 472
    invoke-virtual {p2, v0, v1}, Lorg/threeten/bp/LocalDate;->plusDays(J)Lorg/threeten/bp/LocalDate;

    move-result-object p2

    .line 473
    invoke-interface {p1, p2}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    return-object p1

    .line 461
    :cond_1
    new-instance p1, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    const-string p2, "Unsupported field: WeekBasedYear"

    invoke-direct {p1, p2}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J
    .locals 2

    .line 452
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAccessor;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    invoke-static {p1}, Lorg/threeten/bp/LocalDate;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    invoke-static {p1}, Lorg/threeten/bp/temporal/IsoFields$Field;->access$500(Lorg/threeten/bp/LocalDate;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 453
    :cond_0
    new-instance p1, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    const-string v0, "Unsupported field: WeekBasedYear"

    invoke-direct {p1, v0}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isSupportedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Z
    .locals 1

    .line 444
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/TemporalAccessor;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/threeten/bp/temporal/IsoFields$Field;->access$100(Lorg/threeten/bp/temporal/TemporalAccessor;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public range()Lorg/threeten/bp/temporal/ValueRange;
    .locals 1

    .line 440
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public rangeRefinedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 0

    .line 448
    sget-object p1, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p1}, Lorg/threeten/bp/temporal/ChronoField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "WeekBasedYear"

    return-object v0
.end method
