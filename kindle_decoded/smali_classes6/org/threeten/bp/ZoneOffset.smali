.class public final Lorg/threeten/bp/ZoneOffset;
.super Lorg/threeten/bp/ZoneId;
.source "ZoneOffset.java"

# interfaces
.implements Lorg/threeten/bp/temporal/TemporalAccessor;
.implements Lorg/threeten/bp/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/threeten/bp/ZoneId;",
        "Lorg/threeten/bp/temporal/TemporalAccessor;",
        "Lorg/threeten/bp/temporal/TemporalAdjuster;",
        "Ljava/lang/Comparable<",
        "Lorg/threeten/bp/ZoneOffset;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ID_CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/ZoneOffset;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX:Lorg/threeten/bp/ZoneOffset;

.field private static final MAX_SECONDS:I = 0xfd20

.field public static final MIN:Lorg/threeten/bp/ZoneOffset;

.field private static final MINUTES_PER_HOUR:I = 0x3c

.field private static final SECONDS_CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "Lorg/threeten/bp/ZoneOffset;",
            ">;"
        }
    .end annotation
.end field

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field public static final UTC:Lorg/threeten/bp/ZoneOffset;

.field private static final serialVersionUID:J = 0x20b8141d7a029c21L


# instance fields
.field private final transient id:Ljava/lang/String;

.field private final totalSeconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 96
    new-instance v0, Lorg/threeten/bp/ZoneOffset$1;

    invoke-direct {v0}, Lorg/threeten/bp/ZoneOffset$1;-><init>()V

    .line 104
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x4

    const/high16 v2, 0x3f400000    # 0.75f

    const/16 v3, 0x10

    invoke-direct {v0, v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lorg/threeten/bp/ZoneOffset;->SECONDS_CACHE:Ljava/util/concurrent/ConcurrentMap;

    .line 106
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lorg/threeten/bp/ZoneOffset;->ID_CACHE:Ljava/util/concurrent/ConcurrentMap;

    const/4 v0, 0x0

    .line 132
    invoke-static {v0}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/ZoneOffset;->UTC:Lorg/threeten/bp/ZoneOffset;

    const v0, -0xfd20

    .line 136
    invoke-static {v0}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/ZoneOffset;->MIN:Lorg/threeten/bp/ZoneOffset;

    const v0, 0xfd20

    .line 140
    invoke-static {v0}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/ZoneOffset;->MAX:Lorg/threeten/bp/ZoneOffset;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 414
    invoke-direct {p0}, Lorg/threeten/bp/ZoneId;-><init>()V

    .line 415
    iput p1, p0, Lorg/threeten/bp/ZoneOffset;->totalSeconds:I

    .line 416
    invoke-static {p1}, Lorg/threeten/bp/ZoneOffset;->buildId(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/threeten/bp/ZoneOffset;->id:Ljava/lang/String;

    return-void
.end method

.method private static buildId(I)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string p0, "Z"

    return-object p0

    .line 423
    :cond_0
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    div-int/lit16 v2, v0, 0xe10

    .line 426
    div-int/lit8 v3, v0, 0x3c

    rem-int/lit8 v3, v3, 0x3c

    if-gez p0, :cond_1

    const-string p0, "-"

    goto :goto_0

    :cond_1
    const-string p0, "+"

    .line 427
    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    if-ge v2, p0, :cond_2

    const-string v4, "0"

    goto :goto_1

    :cond_2
    const-string v4, ""

    .line 428
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":0"

    const-string v4, ":"

    if-ge v3, p0, :cond_3

    move-object v5, v2

    goto :goto_2

    :cond_3
    move-object v5, v4

    .line 429
    :goto_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 430
    rem-int/lit8 v0, v0, 0x3c

    if-eqz v0, :cond_5

    if-ge v0, p0, :cond_4

    goto :goto_3

    :cond_4
    move-object v2, v4

    .line 432
    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 434
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/ZoneOffset;
    .locals 3

    .line 320
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->offset()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/threeten/bp/temporal/TemporalAccessor;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/ZoneOffset;

    if-eqz v0, :cond_0

    return-object v0

    .line 322
    :cond_0
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to obtain ZoneOffset from TemporalAccessor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static of(Ljava/lang/String;)Lorg/threeten/bp/ZoneOffset;
    .locals 7

    const-string v0, "offsetId"

    .line 183
    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lorg/threeten/bp/ZoneOffset;->ID_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/ZoneOffset;

    if-eqz v0, :cond_0

    return-object v0

    .line 192
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v4, 0x5

    if-eq v0, v4, :cond_4

    const/4 v5, 0x6

    const/4 v6, 0x4

    if-eq v0, v5, :cond_3

    const/4 v5, 0x7

    if-eq v0, v5, :cond_2

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 216
    invoke-static {p0, v2, v3}, Lorg/threeten/bp/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v0

    .line 217
    invoke-static {p0, v6, v2}, Lorg/threeten/bp/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v1

    .line 218
    invoke-static {p0, v5, v2}, Lorg/threeten/bp/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v2

    goto :goto_1

    .line 221
    :cond_1
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ID for ZoneOffset, invalid format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_2
    invoke-static {p0, v2, v3}, Lorg/threeten/bp/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v0

    .line 212
    invoke-static {p0, v1, v3}, Lorg/threeten/bp/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v1

    .line 213
    invoke-static {p0, v4, v3}, Lorg/threeten/bp/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v2

    goto :goto_1

    .line 206
    :cond_3
    invoke-static {p0, v2, v3}, Lorg/threeten/bp/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v0

    .line 207
    invoke-static {p0, v6, v2}, Lorg/threeten/bp/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v1

    goto :goto_0

    .line 201
    :cond_4
    invoke-static {p0, v2, v3}, Lorg/threeten/bp/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v0

    .line 202
    invoke-static {p0, v1, v3}, Lorg/threeten/bp/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v1

    goto :goto_0

    .line 194
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 196
    :cond_6
    invoke-static {p0, v2, v3}, Lorg/threeten/bp/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 223
    :goto_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    const/16 v5, 0x2d

    if-eq v3, v4, :cond_8

    if-ne v3, v5, :cond_7

    goto :goto_2

    .line 225
    :cond_7
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ID for ZoneOffset, plus/minus not found when expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_2
    if-ne v3, v5, :cond_9

    neg-int p0, v0

    neg-int v0, v1

    neg-int v1, v2

    .line 228
    invoke-static {p0, v0, v1}, Lorg/threeten/bp/ZoneOffset;->ofHoursMinutesSeconds(III)Lorg/threeten/bp/ZoneOffset;

    move-result-object p0

    return-object p0

    .line 230
    :cond_9
    invoke-static {v0, v1, v2}, Lorg/threeten/bp/ZoneOffset;->ofHoursMinutesSeconds(III)Lorg/threeten/bp/ZoneOffset;

    move-result-object p0

    return-object p0
.end method

.method public static ofHoursMinutesSeconds(III)Lorg/threeten/bp/ZoneOffset;
    .locals 0

    .line 297
    invoke-static {p0, p1, p2}, Lorg/threeten/bp/ZoneOffset;->validate(III)V

    .line 298
    invoke-static {p0, p1, p2}, Lorg/threeten/bp/ZoneOffset;->totalSeconds(III)I

    move-result p0

    .line 299
    invoke-static {p0}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object p0

    return-object p0
.end method

.method public static ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;
    .locals 2

    .line 389
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const v1, 0xfd20

    if-gt v0, v1, :cond_2

    .line 392
    rem-int/lit16 v0, p0, 0x384

    if-nez v0, :cond_1

    .line 393
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 394
    sget-object v1, Lorg/threeten/bp/ZoneOffset;->SECONDS_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/ZoneOffset;

    if-nez v1, :cond_0

    .line 396
    new-instance v1, Lorg/threeten/bp/ZoneOffset;

    invoke-direct {v1, p0}, Lorg/threeten/bp/ZoneOffset;-><init>(I)V

    .line 397
    sget-object p0, Lorg/threeten/bp/ZoneOffset;->SECONDS_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object p0, Lorg/threeten/bp/ZoneOffset;->SECONDS_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lorg/threeten/bp/ZoneOffset;

    .line 399
    sget-object p0, Lorg/threeten/bp/ZoneOffset;->ID_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 403
    :cond_1
    new-instance v0, Lorg/threeten/bp/ZoneOffset;

    invoke-direct {v0, p0}, Lorg/threeten/bp/ZoneOffset;-><init>(I)V

    return-object v0

    .line 390
    :cond_2
    new-instance p0, Lorg/threeten/bp/DateTimeException;

    const-string v0, "Zone offset not in valid range: -18:00 to +18:00"

    invoke-direct {p0, v0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseNumber(Ljava/lang/CharSequence;IZ)I
    .locals 2

    if-eqz p2, :cond_1

    add-int/lit8 p2, p1, -0x1

    .line 243
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    const/16 v0, 0x3a

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    new-instance p1, Lorg/threeten/bp/DateTimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid ID for ZoneOffset, colon not found when expected: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 246
    :cond_1
    :goto_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    add-int/lit8 p1, p1, 0x1

    .line 247
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 v0, 0x30

    if-lt p2, v0, :cond_2

    const/16 v1, 0x39

    if-gt p2, v1, :cond_2

    if-lt p1, v0, :cond_2

    if-gt p1, v1, :cond_2

    sub-int/2addr p2, v0

    mul-int/lit8 p2, p2, 0xa

    sub-int/2addr p1, v0

    add-int/2addr p2, p1

    return p2

    .line 249
    :cond_2
    new-instance p1, Lorg/threeten/bp/DateTimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid ID for ZoneOffset, non numeric characters found: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/ZoneOffset;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 757
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    .line 758
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result p0

    invoke-static {p0}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object p0

    goto :goto_0

    :cond_0
    mul-int/lit16 v0, v0, 0x384

    invoke-static {v0}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 738
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static totalSeconds(III)I
    .locals 0

    mul-int/lit16 p0, p0, 0xe10

    mul-int/lit8 p1, p1, 0x3c

    add-int/2addr p0, p1

    add-int/2addr p0, p2

    return p0
.end method

.method private static validate(III)V
    .locals 4

    const/16 v0, -0x12

    if-lt p0, v0, :cond_b

    const/16 v0, 0x12

    if-gt p0, v0, :cond_b

    if-lez p0, :cond_1

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    new-instance p0, Lorg/threeten/bp/DateTimeException;

    const-string p1, "Zone offset minutes and seconds must be positive because hours is positive"

    invoke-direct {p0, p1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-gez p0, :cond_3

    if-gtz p1, :cond_2

    if-gtz p2, :cond_2

    goto :goto_0

    .line 348
    :cond_2
    new-instance p0, Lorg/threeten/bp/DateTimeException;

    const-string p1, "Zone offset minutes and seconds must be negative because hours is negative"

    invoke-direct {p0, p1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    if-lez p1, :cond_4

    if-ltz p2, :cond_5

    :cond_4
    if-gez p1, :cond_6

    if-gtz p2, :cond_5

    goto :goto_0

    .line 351
    :cond_5
    new-instance p0, Lorg/threeten/bp/DateTimeException;

    const-string p1, "Zone offset minutes and seconds must have the same sign"

    invoke-direct {p0, p1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 353
    :cond_6
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const-string v2, " is not in the range 0 to 59"

    const/16 v3, 0x3b

    if-gt v1, v3, :cond_a

    .line 357
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, v3, :cond_9

    .line 361
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-ne p0, v0, :cond_8

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-gtz p0, :cond_7

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-gtz p0, :cond_7

    goto :goto_1

    .line 362
    :cond_7
    new-instance p0, Lorg/threeten/bp/DateTimeException;

    const-string p1, "Zone offset not in valid range: -18:00 to +18:00"

    invoke-direct {p0, p1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_1
    return-void

    .line 358
    :cond_9
    new-instance p0, Lorg/threeten/bp/DateTimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Zone offset seconds not in valid range: abs(value) "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 354
    :cond_a
    new-instance p0, Lorg/threeten/bp/DateTimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Zone offset minutes not in valid range: abs(value) "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 339
    :cond_b
    new-instance p1, Lorg/threeten/bp/DateTimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Zone offset hours not in valid range: value "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not in the range -18 to 18"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 729
    new-instance v0, Lorg/threeten/bp/Ser;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;
    .locals 3

    .line 663
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    iget v1, p0, Lorg/threeten/bp/ZoneOffset;->totalSeconds:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 89
    check-cast p1, Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/ZoneOffset;->compareTo(Lorg/threeten/bp/ZoneOffset;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/threeten/bp/ZoneOffset;)I
    .locals 1

    .line 682
    iget p1, p1, Lorg/threeten/bp/ZoneOffset;->totalSeconds:I

    iget v0, p0, Lorg/threeten/bp/ZoneOffset;->totalSeconds:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 700
    :cond_0
    instance-of v1, p1, Lorg/threeten/bp/ZoneOffset;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 701
    iget v1, p0, Lorg/threeten/bp/ZoneOffset;->totalSeconds:I

    check-cast p1, Lorg/threeten/bp/ZoneOffset;

    iget p1, p1, Lorg/threeten/bp/ZoneOffset;->totalSeconds:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public get(Lorg/threeten/bp/temporal/TemporalField;)I
    .locals 3

    .line 567
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    .line 568
    iget p1, p0, Lorg/threeten/bp/ZoneOffset;->totalSeconds:I

    return p1

    .line 569
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-nez v0, :cond_1

    .line 572
    invoke-virtual {p0, p1}, Lorg/threeten/bp/ZoneOffset;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/ZoneOffset;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/TemporalField;)I

    move-result p1

    return p1

    .line 570
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

.method public getId()Ljava/lang/String;
    .locals 1

    .line 467
    iget-object v0, p0, Lorg/threeten/bp/ZoneOffset;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLong(Lorg/threeten/bp/temporal/TemporalField;)J
    .locals 3

    .line 598
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    .line 599
    iget p1, p0, Lorg/threeten/bp/ZoneOffset;->totalSeconds:I

    int-to-long v0, p1

    return-wide v0

    .line 600
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-nez v0, :cond_1

    .line 603
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    .line 601
    :cond_1
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRules()Lorg/threeten/bp/zone/ZoneRules;
    .locals 1

    .line 480
    invoke-static {p0}, Lorg/threeten/bp/zone/ZoneRules;->of(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/zone/ZoneRules;

    move-result-object v0

    return-object v0
.end method

.method public getTotalSeconds()I
    .locals 1

    .line 449
    iget v0, p0, Lorg/threeten/bp/ZoneOffset;->totalSeconds:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 713
    iget v0, p0, Lorg/threeten/bp/ZoneOffset;->totalSeconds:I

    return v0
.end method

.method public isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z
    .locals 3

    .line 505
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 506
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    .line 508
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

    .line 628
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->offset()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_3

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zone()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 630
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localDate()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localTime()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 631
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->precision()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->chronology()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zoneId()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 634
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalQuery;->queryFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1

    :cond_3
    :goto_1
    return-object p0
.end method

.method public range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 3

    .line 535
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    .line 536
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 537
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-nez v0, :cond_1

    .line 540
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->rangeRefinedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 538
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

.method public toString()Ljava/lang/String;
    .locals 1

    .line 724
    iget-object v0, p0, Lorg/threeten/bp/ZoneOffset;->id:Ljava/lang/String;

    return-object v0
.end method

.method write(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 743
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 744
    invoke-virtual {p0, p1}, Lorg/threeten/bp/ZoneOffset;->writeExternal(Ljava/io/DataOutput;)V

    return-void
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 748
    iget v0, p0, Lorg/threeten/bp/ZoneOffset;->totalSeconds:I

    .line 749
    rem-int/lit16 v1, v0, 0x384

    const/16 v2, 0x7f

    if-nez v1, :cond_0

    div-int/lit16 v1, v0, 0x384

    goto :goto_0

    :cond_0
    const/16 v1, 0x7f

    .line 750
    :goto_0
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    if-ne v1, v2, :cond_1

    .line 752
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_1
    return-void
.end method
