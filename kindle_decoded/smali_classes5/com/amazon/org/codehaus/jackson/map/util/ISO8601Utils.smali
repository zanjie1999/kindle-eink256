.class public Lcom/amazon/org/codehaus/jackson/map/util/ISO8601Utils;
.super Ljava/lang/Object;
.source "ISO8601Utils.java"


# static fields
.field private static final GMT_ID:Ljava/lang/String; = "GMT"

.field private static final TIMEZONE_GMT:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GMT"

    .line 19
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/util/ISO8601Utils;->TIMEZONE_GMT:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkOffset(Ljava/lang/String;IC)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 174
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, p2, :cond_0

    return-void

    .line 176
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "\' character but found \'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static format(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .line 28
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/util/ISO8601Utils;->TIMEZONE_GMT:Ljava/util/TimeZone;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/amazon/org/codehaus/jackson/map/util/ISO8601Utils;->format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Date;Z)Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/util/ISO8601Utils;->TIMEZONE_GMT:Ljava/util/TimeZone;

    invoke-static {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/util/ISO8601Utils;->format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;
    .locals 6

    .line 51
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p2, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 52
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x4

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x13

    add-int/2addr v2, v1

    .line 57
    invoke-virtual {p2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x6

    :goto_1
    add-int/2addr v2, v1

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 60
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v1, v2, p0}, Lcom/amazon/org/codehaus/jackson/map/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    const/16 p0, 0x2d

    .line 61
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    .line 62
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v1, v4, v2}, Lcom/amazon/org/codehaus/jackson/map/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 63
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    .line 64
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v1, v3, v2}, Lcom/amazon/org/codehaus/jackson/map/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    const/16 v3, 0x54

    .line 65
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0xb

    .line 66
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v1, v3, v2}, Lcom/amazon/org/codehaus/jackson/map/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    const/16 v3, 0x3a

    .line 67
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v4, 0xc

    .line 68
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v1, v4, v2}, Lcom/amazon/org/codehaus/jackson/map/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 69
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v4, 0xd

    .line 70
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v1, v4, v2}, Lcom/amazon/org/codehaus/jackson/map/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    if-eqz p1, :cond_2

    const/16 p1, 0x2e

    .line 72
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p1, 0xe

    .line 73
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 v4, 0x3

    invoke-static {v1, p1, v4}, Lcom/amazon/org/codehaus/jackson/map/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 76
    :cond_2
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    if-eqz p1, :cond_4

    const p2, 0xea60

    .line 78
    div-int p2, p1, p2

    div-int/lit8 v0, p2, 0x3c

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 79
    rem-int/lit8 p2, p2, 0x3c

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-gez p1, :cond_3

    goto :goto_2

    :cond_3
    const/16 p0, 0x2b

    .line 80
    :goto_2
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    invoke-static {v1, v0, v2}, Lcom/amazon/org/codehaus/jackson/map/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 82
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    invoke-static {v1, p2, v2}, Lcom/amazon/org/codehaus/jackson/map/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    goto :goto_3

    :cond_4
    const/16 p0, 0x5a

    .line 85
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static padInt(Ljava/lang/StringBuilder;II)V
    .locals 1

    .line 223
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 224
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p2, v0

    :goto_0
    if-lez p2, :cond_0

    const/16 v0, 0x30

    .line 225
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "Failed to parse date "

    const/4 v0, 0x4

    const/4 v3, 0x0

    .line 104
    :try_start_0
    invoke-static {v1, v3, v0}, Lcom/amazon/org/codehaus/jackson/map/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v4

    const/16 v5, 0x2d

    .line 105
    invoke-static {v1, v0, v5}, Lcom/amazon/org/codehaus/jackson/map/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)V

    const/4 v0, 0x7

    const/4 v6, 0x5

    .line 108
    invoke-static {v1, v6, v0}, Lcom/amazon/org/codehaus/jackson/map/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v7

    .line 109
    invoke-static {v1, v0, v5}, Lcom/amazon/org/codehaus/jackson/map/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)V

    const/16 v0, 0x8

    const/16 v8, 0xa

    .line 112
    invoke-static {v1, v0, v8}, Lcom/amazon/org/codehaus/jackson/map/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v0

    const/16 v9, 0x54

    .line 113
    invoke-static {v1, v8, v9}, Lcom/amazon/org/codehaus/jackson/map/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)V

    const/16 v8, 0xd

    const/16 v9, 0xb

    .line 116
    invoke-static {v1, v9, v8}, Lcom/amazon/org/codehaus/jackson/map/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v10

    const/16 v11, 0x3a

    .line 117
    invoke-static {v1, v8, v11}, Lcom/amazon/org/codehaus/jackson/map/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)V

    const/16 v12, 0x10

    const/16 v13, 0xe

    .line 119
    invoke-static {v1, v13, v12}, Lcom/amazon/org/codehaus/jackson/map/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v14

    .line 120
    invoke-static {v1, v12, v11}, Lcom/amazon/org/codehaus/jackson/map/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)V

    const/16 v11, 0x11

    const/16 v12, 0x13

    .line 122
    invoke-static {v1, v11, v12}, Lcom/amazon/org/codehaus/jackson/map/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v11

    .line 125
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v13, 0x2e

    if-ne v15, v13, :cond_0

    .line 126
    invoke-static {v1, v12, v13}, Lcom/amazon/org/codehaus/jackson/map/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)V

    const/16 v12, 0x14

    const/16 v13, 0x17

    .line 127
    invoke-static {v1, v12, v13}, Lcom/amazon/org/codehaus/jackson/map/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v12

    move v13, v12

    const/16 v12, 0x17

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    .line 132
    :goto_0
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v15
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v8, 0x2b

    const-string v9, "GMT"

    if-eq v15, v8, :cond_3

    if-ne v15, v5, :cond_1

    goto :goto_1

    :cond_1
    const/16 v5, 0x5a

    if-ne v15, v5, :cond_2

    goto :goto_2

    .line 138
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid time zone indicator "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_3
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 140
    :goto_2
    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 141
    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 145
    new-instance v8, Ljava/util/GregorianCalendar;

    invoke-direct {v8, v5}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 146
    invoke-virtual {v8, v3}, Ljava/util/Calendar;->setLenient(Z)V

    const/4 v3, 0x1

    .line 147
    invoke-virtual {v8, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v4, 0x2

    sub-int/2addr v7, v3

    .line 148
    invoke-virtual {v8, v4, v7}, Ljava/util/Calendar;->set(II)V

    .line 149
    invoke-virtual {v8, v6, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xb

    .line 150
    invoke-virtual {v8, v0, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 151
    invoke-virtual {v8, v0, v14}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 152
    invoke-virtual {v8, v0, v11}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    .line 153
    invoke-virtual {v8, v0, v13}, Ljava/util/Calendar;->set(II)V

    .line 155
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 142
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 161
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v0

    .line 159
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_2
    move-exception v0

    .line 157
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static parseInt(Ljava/lang/String;II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    if-ltz p1, :cond_4

    .line 190
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_4

    if-gt p1, p2, :cond_4

    const/4 v0, 0x0

    const-string v1, "Invalid number: "

    const/16 v2, 0xa

    if-ge p1, p2, :cond_1

    add-int/lit8 v0, p1, 0x1

    .line 198
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1, v2}, Ljava/lang/Character;->digit(CI)I

    move-result p1

    if-ltz p1, :cond_0

    neg-int p1, p1

    move v4, v0

    move v0, p1

    move p1, v4

    goto :goto_0

    .line 200
    :cond_0
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-ge p1, p2, :cond_3

    add-int/lit8 v3, p1, 0x1

    .line 205
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1, v2}, Ljava/lang/Character;->digit(CI)I

    move-result p1

    if-ltz p1, :cond_2

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v0, p1

    move p1, v3

    goto :goto_0

    .line 207
    :cond_2
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    neg-int p0, v0

    return p0

    .line 191
    :cond_4
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
