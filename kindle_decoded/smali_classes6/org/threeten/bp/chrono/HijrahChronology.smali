.class public final Lorg/threeten/bp/chrono/HijrahChronology;
.super Lorg/threeten/bp/chrono/Chronology;
.source "HijrahChronology.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ERA_FULL_NAMES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ERA_NARROW_NAMES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ERA_SHORT_NAMES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FALLBACK_LANGUAGE:Ljava/lang/String; = "en"

.field public static final INSTANCE:Lorg/threeten/bp/chrono/HijrahChronology;

.field private static final serialVersionUID:J = 0x2b668b59cb61d531L


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 176
    new-instance v0, Lorg/threeten/bp/chrono/HijrahChronology;

    invoke-direct {v0}, Lorg/threeten/bp/chrono/HijrahChronology;-><init>()V

    sput-object v0, Lorg/threeten/bp/chrono/HijrahChronology;->INSTANCE:Lorg/threeten/bp/chrono/HijrahChronology;

    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/threeten/bp/chrono/HijrahChronology;->ERA_NARROW_NAMES:Ljava/util/HashMap;

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/threeten/bp/chrono/HijrahChronology;->ERA_SHORT_NAMES:Ljava/util/HashMap;

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/threeten/bp/chrono/HijrahChronology;->ERA_FULL_NAMES:Ljava/util/HashMap;

    .line 207
    sget-object v0, Lorg/threeten/bp/chrono/HijrahChronology;->ERA_NARROW_NAMES:Ljava/util/HashMap;

    const-string v1, "BH"

    const-string v2, "HE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "en"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lorg/threeten/bp/chrono/HijrahChronology;->ERA_SHORT_NAMES:Ljava/util/HashMap;

    const-string v1, "B.H."

    const-string v3, "H.E."

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lorg/threeten/bp/chrono/HijrahChronology;->ERA_FULL_NAMES:Ljava/util/HashMap;

    const-string v1, "Before Hijrah"

    const-string v3, "Hijrah Era"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 215
    invoke-direct {p0}, Lorg/threeten/bp/chrono/Chronology;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 224
    sget-object v0, Lorg/threeten/bp/chrono/HijrahChronology;->INSTANCE:Lorg/threeten/bp/chrono/HijrahChronology;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic date(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 0

    .line 171
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/HijrahChronology;->date(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public date(III)Lorg/threeten/bp/chrono/HijrahDate;
    .locals 0

    .line 267
    invoke-static {p1, p2, p3}, Lorg/threeten/bp/chrono/HijrahDate;->of(III)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public date(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/HijrahDate;
    .locals 2

    .line 288
    instance-of v0, p1, Lorg/threeten/bp/chrono/HijrahDate;

    if-eqz v0, :cond_0

    .line 289
    check-cast p1, Lorg/threeten/bp/chrono/HijrahDate;

    return-object p1

    .line 291
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/TemporalAccessor;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/threeten/bp/chrono/HijrahDate;->ofEpochDay(J)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic eraOf(I)Lorg/threeten/bp/chrono/Era;
    .locals 0

    .line 171
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/HijrahChronology;->eraOf(I)Lorg/threeten/bp/chrono/HijrahEra;

    move-result-object p1

    return-object p1
.end method

.method public eraOf(I)Lorg/threeten/bp/chrono/HijrahEra;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 349
    sget-object p1, Lorg/threeten/bp/chrono/HijrahEra;->AH:Lorg/threeten/bp/chrono/HijrahEra;

    return-object p1

    .line 351
    :cond_0
    new-instance p1, Lorg/threeten/bp/DateTimeException;

    const-string v0, "invalid Hijrah era"

    invoke-direct {p1, v0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 347
    :cond_1
    sget-object p1, Lorg/threeten/bp/chrono/HijrahEra;->BEFORE_AH:Lorg/threeten/bp/chrono/HijrahEra;

    return-object p1
.end method

.method public getCalendarType()Ljava/lang/String;
    .locals 1

    const-string v0, "islamic-umalqura"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "Hijrah-umalqura"

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
            "Lorg/threeten/bp/chrono/HijrahDate;",
            ">;"
        }
    .end annotation

    .line 297
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/Chronology;->localDateTime(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 0

    .line 363
    invoke-virtual {p1}, Lorg/threeten/bp/temporal/ChronoField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1
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
            "Lorg/threeten/bp/chrono/HijrahDate;",
            ">;"
        }
    .end annotation

    .line 309
    invoke-super {p0, p1, p2}, Lorg/threeten/bp/chrono/Chronology;->zonedDateTime(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method
