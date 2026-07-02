.class public final enum Lorg/threeten/bp/chrono/IsoEra;
.super Ljava/lang/Enum;
.source "IsoEra.java"

# interfaces
.implements Lorg/threeten/bp/chrono/Era;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/threeten/bp/chrono/IsoEra;",
        ">;",
        "Lorg/threeten/bp/chrono/Era;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/threeten/bp/chrono/IsoEra;

.field public static final enum BCE:Lorg/threeten/bp/chrono/IsoEra;

.field public static final enum CE:Lorg/threeten/bp/chrono/IsoEra;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 71
    new-instance v0, Lorg/threeten/bp/chrono/IsoEra;

    const/4 v1, 0x0

    const-string v2, "BCE"

    invoke-direct {v0, v2, v1}, Lorg/threeten/bp/chrono/IsoEra;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/chrono/IsoEra;->BCE:Lorg/threeten/bp/chrono/IsoEra;

    .line 78
    new-instance v0, Lorg/threeten/bp/chrono/IsoEra;

    const/4 v2, 0x1

    const-string v3, "CE"

    invoke-direct {v0, v3, v2}, Lorg/threeten/bp/chrono/IsoEra;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/chrono/IsoEra;->CE:Lorg/threeten/bp/chrono/IsoEra;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/threeten/bp/chrono/IsoEra;

    .line 63
    sget-object v4, Lorg/threeten/bp/chrono/IsoEra;->BCE:Lorg/threeten/bp/chrono/IsoEra;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lorg/threeten/bp/chrono/IsoEra;->$VALUES:[Lorg/threeten/bp/chrono/IsoEra;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static of(I)Lorg/threeten/bp/chrono/IsoEra;
    .locals 3

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 96
    sget-object p0, Lorg/threeten/bp/chrono/IsoEra;->CE:Lorg/threeten/bp/chrono/IsoEra;

    return-object p0

    .line 98
    :cond_0
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid era: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_1
    sget-object p0, Lorg/threeten/bp/chrono/IsoEra;->BCE:Lorg/threeten/bp/chrono/IsoEra;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/chrono/IsoEra;
    .locals 1

    .line 63
    const-class v0, Lorg/threeten/bp/chrono/IsoEra;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/threeten/bp/chrono/IsoEra;

    return-object p0
.end method

.method public static values()[Lorg/threeten/bp/chrono/IsoEra;
    .locals 1

    .line 63
    sget-object v0, Lorg/threeten/bp/chrono/IsoEra;->$VALUES:[Lorg/threeten/bp/chrono/IsoEra;

    invoke-virtual {v0}, [Lorg/threeten/bp/chrono/IsoEra;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/threeten/bp/chrono/IsoEra;

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;
    .locals 3

    .line 155
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/IsoEra;->getValue()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public get(Lorg/threeten/bp/temporal/TemporalField;)I
    .locals 3

    .line 136
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/IsoEra;->getValue()I

    move-result p1

    return p1

    .line 139
    :cond_0
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/IsoEra;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/IsoEra;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/TemporalField;)I

    move-result p1

    return p1
.end method

.method public getLong(Lorg/threeten/bp/temporal/TemporalField;)J
    .locals 3

    .line 144
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/IsoEra;->getValue()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 146
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-nez v0, :cond_1

    .line 149
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    .line 147
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

    .line 112
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z
    .locals 3

    .line 118
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 119
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    .line 121
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->isSupportedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
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

    .line 161
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->precision()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 162
    sget-object p1, Lorg/threeten/bp/temporal/ChronoUnit;->ERAS:Lorg/threeten/bp/temporal/ChronoUnit;

    return-object p1

    .line 164
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->chronology()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zone()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 165
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zoneId()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->offset()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 166
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localDate()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localTime()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 169
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalQuery;->queryFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 3

    .line 126
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    .line 127
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 128
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-nez v0, :cond_1

    .line 131
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->rangeRefinedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 129
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
