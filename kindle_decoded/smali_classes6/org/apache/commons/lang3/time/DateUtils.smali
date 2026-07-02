.class public Lorg/apache/commons/lang3/time/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field private static final fields:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x8

    new-array v0, v0, [[I

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/16 v3, 0xe

    const/4 v4, 0x0

    aput v3, v2, v4

    aput-object v2, v0, v4

    new-array v2, v1, [I

    const/16 v3, 0xd

    aput v3, v2, v4

    aput-object v2, v0, v1

    new-array v2, v1, [I

    const/16 v3, 0xc

    aput v3, v2, v4

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v3, [I

    .line 83
    fill-array-data v2, :array_0

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v5, [I

    fill-array-data v2, :array_1

    const/4 v5, 0x4

    aput-object v2, v0, v5

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [I

    aput v1, v2, v4

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v1, v1, [I

    aput v4, v1, v4

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/commons/lang3/time/DateUtils;->fields:[[I

    return-void

    :array_0
    .array-data 4
        0xb
        0xa
    .end array-data

    :array_1
    .array-data 4
        0x5
        0x5
        0x9
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x3e9
    .end array-data
.end method

.method public static isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 194
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 192
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The date must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isSameDay(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 170
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 171
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 172
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 173
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 174
    invoke-static {v0, p0}, Lorg/apache/commons/lang3/time/DateUtils;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result p0

    return p0

    .line 168
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The date must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs parseDate(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 302
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/time/DateUtils;->parseDateWithLeniency(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 279
    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->parseDate(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method private static parseDateWithLeniency(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;Z)Ljava/util/Date;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p0, :cond_3

    if-eqz p2, :cond_3

    .line 370
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    if-nez p1, :cond_0

    .line 371
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 372
    :cond_0
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 373
    invoke-static {v0, p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    .line 374
    invoke-virtual {v3, p3}, Ljava/util/Calendar;->setLenient(Z)V

    .line 376
    array-length p3, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p3, :cond_2

    aget-object v5, p2, v4

    .line 377
    new-instance v6, Lorg/apache/commons/lang3/time/FastDateParser;

    invoke-direct {v6, v5, v0, p1}, Lorg/apache/commons/lang3/time/FastDateParser;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 378
    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    .line 380
    :try_start_0
    invoke-virtual {v6, p0, v1, v3}, Lorg/apache/commons/lang3/time/FastDateParser;->parse(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/Calendar;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 381
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 386
    :catch_0
    :cond_1
    invoke-virtual {v1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 388
    :cond_2
    new-instance p1, Ljava/text/ParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to parse the date: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p2, -0x1

    invoke-direct {p1, p0, p2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 367
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Date and Patterns must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
