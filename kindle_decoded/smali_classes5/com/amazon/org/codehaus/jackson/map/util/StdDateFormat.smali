.class public Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;
.super Ljava/text/DateFormat;
.source "StdDateFormat.java"


# static fields
.field protected static final ALL_FORMATS:[Ljava/lang/String;

.field protected static final DATE_FORMAT_ISO8601:Ljava/text/DateFormat;

.field protected static final DATE_FORMAT_ISO8601_Z:Ljava/text/DateFormat;

.field protected static final DATE_FORMAT_PLAIN:Ljava/text/DateFormat;

.field protected static final DATE_FORMAT_RFC1123:Ljava/text/DateFormat;

.field protected static final DATE_FORMAT_STR_ISO8601:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

.field protected static final DATE_FORMAT_STR_ISO8601_Z:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

.field protected static final DATE_FORMAT_STR_PLAIN:Ljava/lang/String; = "yyyy-MM-dd"

.field protected static final DATE_FORMAT_STR_RFC1123:Ljava/lang/String; = "EEE, dd MMM yyyy HH:mm:ss zzz"

.field public static final instance:Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;


# instance fields
.field protected transient _formatISO8601:Ljava/text/DateFormat;

.field protected transient _formatISO8601_z:Ljava/text/DateFormat;

.field protected transient _formatPlain:Ljava/text/DateFormat;

.field protected transient _formatRFC1123:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string/jumbo v0, "yyyy-MM-dd"

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    .line 56
    filled-new-array {v3, v2, v1, v0}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;->ALL_FORMATS:[Ljava/lang/String;

    const-string v4, "GMT"

    .line 78
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 79
    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-direct {v5, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_RFC1123:Ljava/text/DateFormat;

    .line 80
    invoke-virtual {v5, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 81
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_ISO8601:Ljava/text/DateFormat;

    .line 82
    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 83
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_ISO8601_Z:Ljava/text/DateFormat;

    .line 84
    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 85
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_PLAIN:Ljava/text/DateFormat;

    .line 86
    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 92
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;-><init>()V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;->instance:Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    return-void
.end method

.method public static getBlueprintISO8601Format()Ljava/text/DateFormat;
    .locals 1

    .line 122
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_ISO8601:Ljava/text/DateFormat;

    return-object v0
.end method

.method public static getBlueprintRFC1123Format()Ljava/text/DateFormat;
    .locals 1

    .line 142
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_RFC1123:Ljava/text/DateFormat;

    return-object v0
.end method

.method public static getISO8601Format(Ljava/util/TimeZone;)Ljava/text/DateFormat;
    .locals 1

    .line 131
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_ISO8601:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    .line 132
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public static getRFC1123Format(Ljava/util/TimeZone;)Ljava/text/DateFormat;
    .locals 1

    .line 153
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_RFC1123:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    .line 154
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method private static final hasTimeZone(Ljava/lang/String;)Z
    .locals 5

    .line 336
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_3

    add-int/lit8 v1, v0, -0x6

    .line 338
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

    .line 340
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_2

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x3

    .line 342
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
.method public clone()Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;
    .locals 1

    .line 113
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;-><init>()V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;->clone()Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;->_formatISO8601:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 217
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_ISO8601:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;->_formatISO8601:Ljava/text/DateFormat;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;->_formatISO8601:Ljava/text/DateFormat;

    invoke-virtual {v0, p1, p2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method protected looksLikeISO8601(Ljava/lang/String;)Z
    .locals 3

    .line 234
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
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 167
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 168
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 169
    invoke-virtual {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    .line 174
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    sget-object v3, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;->ALL_FORMATS:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x22

    if-ge v5, v4, :cond_2

    aget-object v7, v3, v5

    .line 176
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_1

    const-string v6, "\", \""

    .line 177
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 179
    :cond_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    :goto_1
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 183
    :cond_2
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    new-instance v3, Ljava/text/ParseException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v4, v1

    const-string p1, "Can not parse date \"%s\": not compatible with any of standard forms (%s)"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v0

    invoke-direct {v3, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 3

    .line 192
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;->looksLikeISO8601(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;->parseAsISO8601(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p1

    return-object p1

    .line 198
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 200
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_2

    const/16 v2, 0x39

    if-le v1, v2, :cond_1

    :cond_2
    if-gez v0, :cond_3

    const/4 v0, 0x0

    .line 204
    invoke-static {p1, v0}, Lcom/amazon/org/codehaus/jackson/io/NumberInput;->inLongRange(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    new-instance p2, Ljava/util/Date;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 209
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;->parseAsRFC1123(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method protected parseAsISO8601(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 6

    .line 254
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 255
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-gt v0, v3, :cond_0

    .line 259
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 260
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;->_formatPlain:Ljava/text/DateFormat;

    if-nez v0, :cond_a

    .line 262
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_PLAIN:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;->_formatPlain:Ljava/text/DateFormat;

    goto/16 :goto_1

    :cond_0
    const/16 v3, 0x3a

    const/16 v4, 0x5a

    const-string v5, ".000"

    if-ne v2, v4, :cond_3

    .line 265
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;->_formatISO8601_z:Ljava/text/DateFormat;

    if-nez v2, :cond_1

    .line 267
    sget-object v2, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_ISO8601_Z:Ljava/text/DateFormat;

    invoke-virtual {v2}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/DateFormat;

    iput-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;->_formatISO8601_z:Ljava/text/DateFormat;

    :cond_1
    add-int/lit8 v0, v0, -0x4

    .line 270
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_2

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v0, v1, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    move-object v0, v2

    goto/16 :goto_1

    .line 277
    :cond_3
    invoke-static {p1}, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;->hasTimeZone(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    add-int/lit8 v1, v0, -0x3

    .line 278
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_4

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x2

    .line 282
    invoke-virtual {v2, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    const/16 v0, 0x2b

    if-eq v2, v0, :cond_5

    const/16 v0, 0x2d

    if-ne v2, v0, :cond_6

    .line 286
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "00"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 289
    :cond_6
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x9

    .line 291
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 292
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x5

    .line 294
    invoke-virtual {v1, v0, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 298
    :cond_7
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;->_formatISO8601:Ljava/text/DateFormat;

    if-nez v0, :cond_a

    .line 300
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_ISO8601:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;->_formatISO8601:Ljava/text/DateFormat;

    goto :goto_1

    .line 308
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x54

    .line 310
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    const/16 p1, 0x8

    if-gt v0, p1, :cond_9

    .line 312
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    :cond_9
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 316
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;->_formatISO8601_z:Ljava/text/DateFormat;

    if-nez v0, :cond_a

    .line 318
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_ISO8601_Z:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;->_formatISO8601_z:Ljava/text/DateFormat;

    .line 322
    :cond_a
    :goto_1
    invoke-virtual {v0, p1, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method protected parseAsRFC1123(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;->_formatRFC1123:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 328
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_RFC1123:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;->_formatRFC1123:Ljava/text/DateFormat;

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;->_formatRFC1123:Ljava/text/DateFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method
