.class final Lorg/threeten/bp/format/DateTimePrintContext;
.super Ljava/lang/Object;
.source "DateTimePrintContext.java"


# instance fields
.field private locale:Ljava/util/Locale;

.field private optional:I

.field private symbols:Lorg/threeten/bp/format/DecimalStyle;

.field private temporal:Lorg/threeten/bp/temporal/TemporalAccessor;


# direct methods
.method constructor <init>(Lorg/threeten/bp/temporal/TemporalAccessor;Lorg/threeten/bp/format/DateTimeFormatter;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {p1, p2}, Lorg/threeten/bp/format/DateTimePrintContext;->adjust(Lorg/threeten/bp/temporal/TemporalAccessor;Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/temporal/TemporalAccessor;

    move-result-object p1

    iput-object p1, p0, Lorg/threeten/bp/format/DateTimePrintContext;->temporal:Lorg/threeten/bp/temporal/TemporalAccessor;

    .line 93
    invoke-virtual {p2}, Lorg/threeten/bp/format/DateTimeFormatter;->getLocale()Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p0, Lorg/threeten/bp/format/DateTimePrintContext;->locale:Ljava/util/Locale;

    .line 94
    invoke-virtual {p2}, Lorg/threeten/bp/format/DateTimeFormatter;->getDecimalStyle()Lorg/threeten/bp/format/DecimalStyle;

    move-result-object p1

    iput-object p1, p0, Lorg/threeten/bp/format/DateTimePrintContext;->symbols:Lorg/threeten/bp/format/DecimalStyle;

    return-void
.end method

.method private static adjust(Lorg/threeten/bp/temporal/TemporalAccessor;Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/temporal/TemporalAccessor;
    .locals 9

    .line 106
    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimeFormatter;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v0

    .line 107
    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimeFormatter;->getZone()Lorg/threeten/bp/ZoneId;

    move-result-object p1

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-object p0

    .line 113
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->chronology()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/threeten/bp/temporal/TemporalAccessor;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/chrono/Chronology;

    .line 114
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zoneId()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v2

    invoke-interface {p0, v2}, Lorg/threeten/bp/temporal/TemporalAccessor;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/threeten/bp/ZoneId;

    .line 115
    invoke-static {v1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move-object v0, v4

    .line 118
    :cond_1
    invoke-static {v2, p1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object p1, v4

    :cond_2
    if-nez v0, :cond_3

    if-nez p1, :cond_3

    return-object p0

    :cond_3
    if-eqz v0, :cond_4

    move-object v3, v0

    goto :goto_0

    :cond_4
    move-object v3, v1

    :goto_0
    if-eqz p1, :cond_5

    move-object v2, p1

    :cond_5
    const-string v5, " "

    if-eqz p1, :cond_9

    .line 130
    sget-object v6, Lorg/threeten/bp/temporal/ChronoField;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p0, v6}, Lorg/threeten/bp/temporal/TemporalAccessor;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz v3, :cond_6

    goto :goto_1

    .line 131
    :cond_6
    sget-object v3, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    .line 132
    :goto_1
    invoke-static {p0}, Lorg/threeten/bp/Instant;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/Instant;

    move-result-object p0

    invoke-virtual {v3, p0, p1}, Lorg/threeten/bp/chrono/Chronology;->zonedDateTime(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    move-result-object p0

    return-object p0

    .line 135
    :cond_7
    invoke-virtual {p1}, Lorg/threeten/bp/ZoneId;->normalized()Lorg/threeten/bp/ZoneId;

    move-result-object v6

    .line 136
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->offset()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v7

    invoke-interface {p0, v7}, Lorg/threeten/bp/temporal/TemporalAccessor;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/threeten/bp/ZoneOffset;

    .line 137
    instance-of v8, v6, Lorg/threeten/bp/ZoneOffset;

    if-eqz v8, :cond_9

    if-eqz v7, :cond_9

    invoke-virtual {v6, v7}, Lorg/threeten/bp/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_2

    .line 138
    :cond_8
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid override zone for temporal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_2
    if-eqz v0, :cond_e

    .line 143
    sget-object p1, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p0, p1}, Lorg/threeten/bp/temporal/TemporalAccessor;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 144
    invoke-virtual {v3, p0}, Lorg/threeten/bp/chrono/Chronology;->date(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v4

    goto :goto_5

    .line 147
    :cond_a
    sget-object p1, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    if-ne v0, p1, :cond_b

    if-eqz v1, :cond_e

    .line 148
    :cond_b
    invoke-static {}, Lorg/threeten/bp/temporal/ChronoField;->values()[Lorg/threeten/bp/temporal/ChronoField;

    move-result-object p1

    array-length v1, p1

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v1, :cond_e

    aget-object v7, p1, v6

    .line 149
    invoke-virtual {v7}, Lorg/threeten/bp/temporal/ChronoField;->isDateBased()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {p0, v7}, Lorg/threeten/bp/temporal/TemporalAccessor;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v7

    if-nez v7, :cond_c

    goto :goto_4

    .line 150
    :cond_c
    new-instance p1, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid override chronology for temporal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 161
    :cond_e
    :goto_5
    new-instance p1, Lorg/threeten/bp/format/DateTimePrintContext$1;

    invoke-direct {p1, v4, p0, v3, v2}, Lorg/threeten/bp/format/DateTimePrintContext$1;-><init>(Lorg/threeten/bp/chrono/ChronoLocalDate;Lorg/threeten/bp/temporal/TemporalAccessor;Lorg/threeten/bp/chrono/Chronology;Lorg/threeten/bp/ZoneId;)V

    return-object p1
.end method


# virtual methods
.method endOptional()V
    .locals 1

    .line 245
    iget v0, p0, Lorg/threeten/bp/format/DateTimePrintContext;->optional:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/threeten/bp/format/DateTimePrintContext;->optional:I

    return-void
.end method

.method getLocale()Ljava/util/Locale;
    .locals 1

    .line 219
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimePrintContext;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method getSymbols()Lorg/threeten/bp/format/DecimalStyle;
    .locals 1

    .line 230
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimePrintContext;->symbols:Lorg/threeten/bp/format/DecimalStyle;

    return-object v0
.end method

.method getTemporal()Lorg/threeten/bp/temporal/TemporalAccessor;
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimePrintContext;->temporal:Lorg/threeten/bp/temporal/TemporalAccessor;

    return-object v0
.end method

.method getValue(Lorg/threeten/bp/temporal/TemporalField;)Ljava/lang/Long;
    .locals 2

    .line 274
    :try_start_0
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimePrintContext;->temporal:Lorg/threeten/bp/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Lorg/threeten/bp/temporal/TemporalAccessor;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 276
    iget v0, p0, Lorg/threeten/bp/format/DateTimePrintContext;->optional:I

    if-lez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 279
    :cond_0
    throw p1
.end method

.method getValue(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimePrintContext;->temporal:Lorg/threeten/bp/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Lorg/threeten/bp/temporal/TemporalAccessor;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 257
    iget v0, p0, Lorg/threeten/bp/format/DateTimePrintContext;->optional:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    new-instance p1, Lorg/threeten/bp/DateTimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to extract value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimePrintContext;->temporal:Lorg/threeten/bp/temporal/TemporalAccessor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method startOptional()V
    .locals 1

    .line 238
    iget v0, p0, Lorg/threeten/bp/format/DateTimePrintContext;->optional:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/threeten/bp/format/DateTimePrintContext;->optional:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimePrintContext;->temporal:Lorg/threeten/bp/temporal/TemporalAccessor;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
