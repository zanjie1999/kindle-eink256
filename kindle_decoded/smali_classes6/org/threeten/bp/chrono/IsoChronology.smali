.class public final Lorg/threeten/bp/chrono/IsoChronology;
.super Lorg/threeten/bp/chrono/Chronology;
.source "IsoChronology.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

.field private static final serialVersionUID:J = -0x13fd57b046d9ef27L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    new-instance v0, Lorg/threeten/bp/chrono/IsoChronology;

    invoke-direct {v0}, Lorg/threeten/bp/chrono/IsoChronology;-><init>()V

    sput-object v0, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Lorg/threeten/bp/chrono/Chronology;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 122
    sget-object v0, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    return-object v0
.end method


# virtual methods
.method public date(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalDate;
    .locals 0

    .line 237
    invoke-static {p1}, Lorg/threeten/bp/LocalDate;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic date(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/IsoChronology;->date(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic eraOf(I)Lorg/threeten/bp/chrono/Era;
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/IsoChronology;->eraOf(I)Lorg/threeten/bp/chrono/IsoEra;

    move-result-object p1

    return-object p1
.end method

.method public eraOf(I)Lorg/threeten/bp/chrono/IsoEra;
    .locals 0

    .line 370
    invoke-static {p1}, Lorg/threeten/bp/chrono/IsoEra;->of(I)Lorg/threeten/bp/chrono/IsoEra;

    move-result-object p1

    return-object p1
.end method

.method public getCalendarType()Ljava/lang/String;
    .locals 1

    const-string v0, "iso8601"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "ISO"

    return-object v0
.end method

.method public isLeapYear(J)Z
    .locals 5

    const-wide/16 v0, 0x3

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const-wide/16 v0, 0x64

    .line 357
    rem-long v0, p1, v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x190

    rem-long/2addr p1, v0

    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public localDateTime(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalDateTime;
    .locals 0

    .line 251
    invoke-static {p1}, Lorg/threeten/bp/LocalDateTime;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic localDateTime(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/IsoChronology;->localDateTime(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public zonedDateTime(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;
    .locals 0

    .line 280
    invoke-static {p1, p2}, Lorg/threeten/bp/ZonedDateTime;->ofInstant(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic zonedDateTime(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 0

    .line 98
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/IsoChronology;->zonedDateTime(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method
