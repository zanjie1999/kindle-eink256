.class public Lcom/fasterxml/jackson/databind/util/StdDateFormat;
.super Ljava/text/DateFormat;
.source "StdDateFormat.java"


# static fields
.field protected static final ALL_FORMATS:[Ljava/lang/String;

.field protected static final DATE_FORMAT_ISO8601:Ljava/text/DateFormat;

.field protected static final DATE_FORMAT_ISO8601_Z:Ljava/text/DateFormat;

.field protected static final DATE_FORMAT_PLAIN:Ljava/text/DateFormat;

.field protected static final DATE_FORMAT_RFC1123:Ljava/text/DateFormat;

.field private static final DEFAULT_LOCALE:Ljava/util/Locale;

.field private static final DEFAULT_TIMEZONE:Ljava/util/TimeZone;

.field public static final instance:Lcom/fasterxml/jackson/databind/util/StdDateFormat;


# instance fields
.field protected transient _formatISO8601:Ljava/text/DateFormat;

.field protected transient _formatISO8601_z:Ljava/text/DateFormat;

.field protected transient _formatPlain:Ljava/text/DateFormat;

.field protected transient _formatRFC1123:Ljava/text/DateFormat;

.field protected _lenient:Ljava/lang/Boolean;

.field protected final _locale:Ljava/util/Locale;

.field protected transient _timezone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "yyyy-MM-dd"

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    .line 56
    filled-new-array {v3, v2, v1, v0}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->ALL_FORMATS:[Ljava/lang/String;

    const-string v4, "UTC"

    .line 69
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    sput-object v4, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    .line 72
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    sput-object v4, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_LOCALE:Ljava/util/Locale;

    .line 90
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v5, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_LOCALE:Ljava/util/Locale;

    invoke-direct {v4, v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v4, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_RFC1123:Ljava/text/DateFormat;

    .line 91
    sget-object v1, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v4, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 92
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v4, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_LOCALE:Ljava/util/Locale;

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_ISO8601:Ljava/text/DateFormat;

    .line 93
    sget-object v3, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 94
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v3, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_LOCALE:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_ISO8601_Z:Ljava/text/DateFormat;

    .line 95
    sget-object v2, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 96
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_LOCALE:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_PLAIN:Ljava/text/DateFormat;

    .line 97
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 103
    new-instance v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->instance:Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 134
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 135
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_LOCALE:Ljava/util/Locale;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    return-void
.end method

.method protected constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;)V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    .line 146
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    .line 147
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    return-void
.end method

.method private static final _cloneFormat(Ljava/text/DateFormat;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;)Ljava/text/DateFormat;
    .locals 1

    .line 566
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_LOCALE:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 567
    new-instance p0, Ljava/text/SimpleDateFormat;

    invoke-direct {p0, p1, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    if-nez p2, :cond_0

    .line 568
    sget-object p2, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    :cond_0
    invoke-virtual {p0, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0

    .line 570
    :cond_1
    invoke-virtual {p0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/text/DateFormat;

    if-eqz p2, :cond_2

    .line 572
    invoke-virtual {p0, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    .line 576
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->setLenient(Z)V

    :cond_3
    return-object p0
.end method

.method private static final hasTimeZone(Ljava/lang/String;)Z
    .locals 5

    .line 551
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_3

    add-int/lit8 v1, v0, -0x6

    .line 553
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x2b

    if-eq v1, v3, :cond_2

    const/16 v4, 0x2d

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0x5

    .line 555
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_2

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x3

    .line 557
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-eq p0, v3, :cond_2

    if-ne p0, v4, :cond_3

    :cond_2
    :goto_0
    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected _clearFormats()V
    .locals 1

    const/4 v0, 0x0

    .line 582
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatRFC1123:Ljava/text/DateFormat;

    .line 583
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601:Ljava/text/DateFormat;

    .line 584
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601_z:Ljava/text/DateFormat;

    .line 585
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatPlain:Ljava/text/DateFormat;

    return-void
.end method

.method public clone()Lcom/fasterxml/jackson/databind/util/StdDateFormat;
    .locals 4

    .line 180
    new-instance v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->clone()Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 5

    .line 366
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 367
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_ISO8601:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_cloneFormat(Ljava/text/DateFormat;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601:Ljava/text/DateFormat;

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601:Ljava/text/DateFormat;

    invoke-virtual {v0, p1, p2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 397
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isLenient()Z
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 266
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected looksLikeISO8601(Ljava/lang/String;)Z
    .locals 3

    .line 412
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 278
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 279
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 283
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->looksLikeISO8601(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 284
    invoke-virtual {p0, p1, v0, v3}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->parseAsISO8601(Ljava/lang/String;Ljava/text/ParsePosition;Z)Ljava/util/Date;

    move-result-object v2

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :cond_1
    add-int/lit8 v2, v2, -0x1

    const/16 v4, 0x2d

    if-ltz v2, :cond_3

    .line 289
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_2

    const/16 v6, 0x39

    if-le v5, v6, :cond_1

    :cond_2
    if-gtz v2, :cond_3

    if-eq v5, v4, :cond_1

    :cond_3
    if-gez v2, :cond_5

    .line 297
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_4

    invoke-static {p1, v1}, Lcom/fasterxml/jackson/core/io/NumberInput;->inLongRange(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 300
    :cond_4
    new-instance v2, Ljava/util/Date;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 303
    :cond_5
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->parseAsRFC1123(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_6

    return-object v2

    .line 310
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    sget-object v4, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->ALL_FORMATS:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    const/16 v7, 0x22

    if-ge v6, v5, :cond_8

    aget-object v8, v4, v6

    .line 312
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_7

    const-string v7, "\", \""

    .line 313
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 315
    :cond_7
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 317
    :goto_2
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 319
    :cond_8
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    new-instance v4, Ljava/text/ParseException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v3

    const-string p1, "Can not parse date \"%s\": not compatible with any of standard forms (%s)"

    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v0

    invoke-direct {v4, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 5

    .line 328
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->looksLikeISO8601(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 330
    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->parseAsISO8601(Ljava/lang/String;Ljava/text/ParsePosition;Z)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1

    .line 336
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    const/16 v2, 0x2d

    if-ltz v0, :cond_3

    .line 338
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-le v3, v4, :cond_1

    :cond_2
    if-gtz v0, :cond_3

    if-eq v3, v2, :cond_1

    :cond_3
    if-gez v0, :cond_5

    .line 348
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_4

    invoke-static {p1, v1}, Lcom/fasterxml/jackson/core/io/NumberInput;->inLongRange(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 349
    :cond_4
    new-instance p2, Ljava/util/Date;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 353
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->parseAsRFC1123(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method protected parseAsISO8601(Ljava/lang/String;Ljava/text/ParsePosition;Z)Ljava/util/Date;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 433
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 v0, p3, -0x1

    .line 434
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x2

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    const/4 v4, 0x1

    const/16 v5, 0xa

    if-gt p3, v5, :cond_0

    .line 439
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 440
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatPlain:Ljava/text/DateFormat;

    const-string v3, "yyyy-MM-dd"

    if-nez p3, :cond_a

    .line 443
    sget-object p3, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_PLAIN:Ljava/text/DateFormat;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    invoke-static {p3, v3, v0, v1, v5}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_cloneFormat(Ljava/text/DateFormat;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;)Ljava/text/DateFormat;

    move-result-object p3

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatPlain:Ljava/text/DateFormat;

    goto/16 :goto_3

    :cond_0
    const/16 v5, 0x3a

    const/16 v6, 0x5a

    const-string v7, ".000"

    if-ne v1, v6, :cond_3

    .line 447
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601_z:Ljava/text/DateFormat;

    if-nez v1, :cond_1

    .line 450
    sget-object v1, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_ISO8601_Z:Ljava/text/DateFormat;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    invoke-static {v1, v3, v6, v8, v9}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_cloneFormat(Ljava/text/DateFormat;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601_z:Ljava/text/DateFormat;

    :cond_1
    add-int/lit8 p3, p3, -0x4

    .line 454
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    if-ne p3, v5, :cond_2

    .line 455
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p3, v0, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    move-object p3, v1

    goto/16 :goto_3

    .line 461
    :cond_3
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->hasTimeZone(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0xc

    const/16 v8, 0x54

    const/16 v9, 0x30

    if-eqz v0, :cond_8

    add-int/lit8 v0, p3, -0x3

    .line 462
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const-string v6, "00"

    if-ne v3, v5, :cond_4

    .line 465
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int/2addr p3, v2

    .line 466
    invoke-virtual {v3, v0, p3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    const/16 p3, 0x2b

    if-eq v3, p3, :cond_5

    const/16 p3, 0x2d

    if-ne v3, p3, :cond_6

    .line 470
    :cond_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 473
    :cond_6
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    .line 475
    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    sub-int v0, p3, v0

    add-int/lit8 v0, v0, -0x6

    if-ge v0, v1, :cond_7

    add-int/lit8 p3, p3, -0x5

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 481
    :pswitch_1
    invoke-virtual {v1, p3, v9}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 483
    :pswitch_2
    invoke-virtual {v1, p3, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_3
    const-string p1, "000"

    .line 485
    invoke-virtual {v1, p3, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 487
    :pswitch_4
    invoke-virtual {v1, p3, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_5
    const-string p1, "00.000"

    .line 491
    invoke-virtual {v1, p3, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :pswitch_6
    const-string p1, ":00.000"

    .line 493
    invoke-virtual {v1, p3, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 497
    :cond_7
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601:Ljava/text/DateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    if-nez p3, :cond_a

    .line 500
    sget-object p3, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_ISO8601:Ljava/text/DateFormat;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    invoke-static {p3, v3, v0, v1, v5}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_cloneFormat(Ljava/text/DateFormat;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;)Ljava/text/DateFormat;

    move-result-object p3

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601:Ljava/text/DateFormat;

    goto :goto_3

    .line 505
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    sub-int/2addr p3, p1

    sub-int/2addr p3, v4

    if-ge p3, v1, :cond_9

    packed-switch p3, :pswitch_data_1

    .line 515
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 510
    :pswitch_7
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 511
    :pswitch_8
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 512
    :pswitch_9
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 518
    :cond_9
    :goto_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 520
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601_z:Ljava/text/DateFormat;

    if-nez p3, :cond_a

    .line 523
    sget-object p3, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_ISO8601_Z:Ljava/text/DateFormat;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    invoke-static {p3, v3, v0, v1, v5}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_cloneFormat(Ljava/text/DateFormat;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;)Ljava/text/DateFormat;

    move-result-object p3

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601_z:Ljava/text/DateFormat;

    .line 528
    :cond_a
    :goto_3
    invoke-virtual {p3, p1, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p3

    if-eqz p3, :cond_b

    return-object p3

    .line 531
    :cond_b
    new-instance p3, Ljava/text/ParseException;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object v3, v0, v4

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    aput-object p1, v0, v2

    const-string p1, "Can not parse date \"%s\": while it seems to fit format \'%s\', parsing fails (leniency? %s)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result p2

    invoke-direct {p3, p1, p2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p3

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method protected parseAsRFC1123(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 5

    .line 541
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatRFC1123:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 542
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_RFC1123:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    const-string v4, "EEE, dd MMM yyyy HH:mm:ss zzz"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_cloneFormat(Ljava/text/DateFormat;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatRFC1123:Ljava/text/DateFormat;

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatRFC1123:Ljava/text/DateFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public setLenient(Z)V
    .locals 1

    .line 252
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 253
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    if-eq v0, p1, :cond_0

    .line 254
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    .line 256
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_clearFormats()V

    :cond_0
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_clearFormats()V

    .line 241
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DateFormat "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    const-string v2, ")"

    if-eqz v1, :cond_0

    .line 384
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (timezone: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(locale: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withLocale(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/util/StdDateFormat;
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 172
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    invoke-direct {v0, v1, p1, v2}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public withTimeZone(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/util/StdDateFormat;
    .locals 3

    if-nez p1, :cond_0

    .line 160
    sget-object p1, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    if-eq p1, v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 165
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    invoke-direct {v0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;)V

    return-object v0

    :cond_2
    :goto_0
    return-object p0
.end method
