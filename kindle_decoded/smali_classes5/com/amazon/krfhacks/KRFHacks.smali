.class public final Lcom/amazon/krfhacks/KRFHacks;
.super Ljava/lang/Object;
.source "KRFHacks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/krfhacks/KRFHacks$BookType;
    }
.end annotation


# static fields
.field private static final FREE_TRIAL_OWNERSHIP_TYPE:I = 0x5

.field private static final RENTAL_OWNERSHIP_TYPE:I = 0x1

.field private static s_DateFormats:[Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/text/SimpleDateFormat;

    .line 34
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyyMMdd"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazon/krfhacks/KRFHacks;->s_DateFormats:[Ljava/text/SimpleDateFormat;

    .line 41
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const-string v4, "GMT"

    .line 42
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static colorFromInt(I)Lcom/amazon/kindle/krf/KRF/Graphics/IColor;
    .locals 3

    ushr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    .line 59
    new-instance v2, Lcom/amazon/kindle/krf/KRF/Graphics/RGBColor;

    invoke-direct {v2, v0, v1, p0}, Lcom/amazon/kindle/krf/KRF/Graphics/RGBColor;-><init>(SSS)V

    return-object v2
.end method

.method public static getBookEndPosition(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)I
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "EndPositionId"

    .line 149
    invoke-virtual {p0, v2}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->createBufferFromMetadata(Ljava/lang/String;)Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;->getDataConst()[B

    move-result-object p0

    .line 151
    array-length v2, p0

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    const-wide/16 v4, 0x0

    move-wide v6, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    .line 155
    aget-byte v8, p0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v8, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    mul-int/lit8 v10, v2, 0x8

    shl-long/2addr v8, v10

    or-long/2addr v6, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    cmp-long p0, v6, v4

    if-ltz p0, :cond_2

    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v6, v2

    if-gtz p0, :cond_2

    long-to-int p0, v6

    if-eqz v1, :cond_1

    .line 164
    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;->delete()V

    :cond_1
    return p0

    .line 158
    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v2, "EndPositionId value is out of int bounds"

    invoke-direct {p0, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 152
    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "EndPositionId buffer has invalid length"

    invoke-direct {p0, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_4

    .line 164
    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;->delete()V

    .line 166
    :cond_4
    throw p0

    :catch_0
    nop

    if-eqz v1, :cond_5

    .line 164
    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;->delete()V

    :cond_5
    return v0
.end method

.method public static getBookEndPosition(Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;)I
    .locals 0

    .line 143
    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->getDocumentInfo()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/krfhacks/KRFHacks;->getBookEndPosition(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)I

    move-result p0

    return p0
.end method

.method public static getBookStartPosition(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)I
    .locals 12

    const-string v0, "StartPositionId"

    .line 121
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->createBufferFromMetadata(Ljava/lang/String;)Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;

    move-result-object p0

    const/4 v0, 0x0

    .line 123
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;->getDataConst()[B

    move-result-object v1

    .line 124
    array-length v2, v1

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    const-wide/16 v4, 0x0

    move-wide v6, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    .line 128
    aget-byte v8, v1, v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v8, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    mul-int/lit8 v10, v2, 0x8

    shl-long/2addr v8, v10

    or-long/2addr v6, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    cmp-long v1, v6, v4

    if-ltz v1, :cond_2

    const-wide/32 v1, 0x7fffffff

    cmp-long v3, v6, v1

    if-gtz v3, :cond_2

    long-to-int v0, v6

    if-eqz p0, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;->delete()V

    :cond_1
    return v0

    .line 131
    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "StartPositionId value is out of int bounds"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_3
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "StartPositionId buffer has invalid length"

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_4

    .line 137
    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;->delete()V

    .line 139
    :cond_4
    throw v0

    :catch_0
    nop

    if-eqz p0, :cond_5

    .line 137
    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;->delete()V

    :cond_5
    return v0
.end method

.method public static getBookType(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Lcom/amazon/krfhacks/KRFHacks$BookType;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getMimeType()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 100
    sget-object p0, Lcom/amazon/krfhacks/KRFHacks$BookType;->Mobi:Lcom/amazon/krfhacks/KRFHacks$BookType;

    return-object p0

    :cond_0
    const-string v0, "application/x-mobi8"

    .line 101
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    sget-object p0, Lcom/amazon/krfhacks/KRFHacks$BookType;->Mobi8:Lcom/amazon/krfhacks/KRFHacks$BookType;

    return-object p0

    :cond_1
    const-string v0, "application/x-topaz"

    .line 103
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 104
    sget-object p0, Lcom/amazon/krfhacks/KRFHacks$BookType;->Topaz:Lcom/amazon/krfhacks/KRFHacks$BookType;

    return-object p0

    .line 106
    :cond_2
    sget-object p0, Lcom/amazon/krfhacks/KRFHacks$BookType;->Mobi:Lcom/amazon/krfhacks/KRFHacks$BookType;

    return-object p0
.end method

.method public static getKrfVersionProperties()Ljava/util/Properties;
    .locals 3

    .line 208
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 209
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string/jumbo v2, "p2r-version.properties"

    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    :catch_0
    const-class v1, Lcom/amazon/krfhacks/KRFHacks;

    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not load krf version.properties"

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static getPublicationDate(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Ljava/util/Date;
    .locals 0

    .line 110
    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getPublishingDate()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 113
    :cond_0
    invoke-static {p0}, Lcom/amazon/krfhacks/KRFHacks;->parseBookDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static getTopazPageState(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    ushr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x3

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static intFromColor(Lcom/amazon/kindle/krf/KRF/Graphics/IColor;)I
    .locals 3

    .line 63
    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Graphics/IColor;->getRed()S

    move-result v0

    .line 64
    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Graphics/IColor;->getGreen()S

    move-result v1

    .line 65
    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Graphics/IColor;->getBlue()S

    move-result p0

    shl-int/lit8 v0, v0, 0x10

    const/high16 v2, -0x1000000

    or-int/2addr v0, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method public static intPositionToPosition(I)Lcom/amazon/kindle/krf/KRF/Reader/Position;
    .locals 1

    .line 80
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 81
    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/Position;

    invoke-direct {v0}, Lcom/amazon/kindle/krf/KRF/Reader/Position;-><init>()V

    .line 82
    invoke-virtual {v0, p0}, Lcom/amazon/kindle/krf/KRF/Reader/Position;->deserializeFromString(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public static ownershipTypeFromInt(I)Lcom/amazon/kindle/model/content/ContentOwnershipType;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 235
    sget-object p0, Lcom/amazon/kindle/model/content/ContentOwnershipType;->Unknown:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    return-object p0

    .line 231
    :cond_0
    sget-object p0, Lcom/amazon/kindle/model/content/ContentOwnershipType;->FreeTrial:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    return-object p0

    .line 233
    :cond_1
    sget-object p0, Lcom/amazon/kindle/model/content/ContentOwnershipType;->Rental:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    return-object p0
.end method

.method private static parseBookDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 7

    .line 172
    sget-object v0, Lcom/amazon/krfhacks/KRFHacks;->s_DateFormats:[Ljava/text/SimpleDateFormat;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 174
    :try_start_0
    invoke-virtual {v4, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 176
    new-instance v4, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    goto :goto_1

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    return-object v2
.end method

.method public static positionToIntPosition(Lcom/amazon/kindle/krf/KRF/Reader/Position;)I
    .locals 4

    .line 70
    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/Position;->serializeToString()Ljava/lang/String;

    move-result-object p0

    .line 71
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    long-to-int p0, v0

    return p0
.end method
