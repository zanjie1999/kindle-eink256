.class public final Lkotlin/time/Duration;
.super Ljava/lang/Object;
.source "Duration.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/Duration$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lkotlin/time/Duration;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/time/Duration$Companion;

.field private static final INFINITE:D

.field private static final ZERO:D


# instance fields
.field private final value:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/time/Duration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/time/Duration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const-wide/16 v0, 0x0

    .line 40
    invoke-static {v0, v1}, Lkotlin/time/Duration;->constructor-impl(D)D

    sput-wide v0, Lkotlin/time/Duration;->ZERO:D

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 43
    invoke-static {v0, v1}, Lkotlin/time/Duration;->constructor-impl(D)D

    sput-wide v0, Lkotlin/time/Duration;->INFINITE:D

    return-void
.end method

.method public static final synthetic access$getZERO$cp-UwyO8pc()D
    .locals 2

    .line 31
    sget-wide v0, Lkotlin/time/Duration;->ZERO:D

    return-wide v0
.end method

.method public static compareTo-LRDsOJo(DD)I
    .locals 0

    .line 91
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method public static constructor-impl(D)D
    .locals 0

    return-wide p0
.end method

.method public static equals-impl(DLjava/lang/Object;)Z
    .locals 2

    instance-of v0, p2, Lkotlin/time/Duration;

    if-eqz v0, :cond_0

    check-cast p2, Lkotlin/time/Duration;

    invoke-virtual {p2}, Lkotlin/time/Duration;->unbox-impl()D

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final getAbsoluteValue-UwyO8pc(D)D
    .locals 1

    .line 89
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isNegative-impl(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->unaryMinus-UwyO8pc(D)D

    move-result-wide p0

    :cond_0
    return-wide p0
.end method

.method public static final getInNanoseconds-impl(D)D
    .locals 1

    .line 206
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(DLjava/util/concurrent/TimeUnit;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static hashCode-impl(D)I
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static final isInfinite-impl(D)Z
    .locals 0

    .line 83
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    return p0
.end method

.method public static final isNegative-impl(D)Z
    .locals 4

    const/4 v0, 0x0

    int-to-double v1, v0

    cmpg-double v3, p0, v1

    if-gez v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static final precision-impl(DD)I
    .locals 2

    const/4 p0, 0x1

    int-to-double v0, p0

    cmpg-double p1, p2, v0

    if-gez p1, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    int-to-double v0, p1

    cmpg-double p1, p2, v0

    if-gez p1, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const/16 p1, 0x64

    int-to-double v0, p1

    cmpg-double p1, p2, v0

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final toDouble-impl(DLjava/util/concurrent/TimeUnit;)D
    .locals 1

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lkotlin/time/DurationKt;->access$getStorageUnit$p()Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnit(DLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final toLong-impl(DLjava/util/concurrent/TimeUnit;)J
    .locals 1

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-static {p0, p1, p2}, Lkotlin/time/Duration;->toDouble-impl(DLjava/util/concurrent/TimeUnit;)D

    move-result-wide p0

    double-to-long p0, p0

    return-wide p0
.end method

.method public static final toLongMilliseconds-impl(D)J
    .locals 1

    .line 226
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(DLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static toString-impl(D)Ljava/lang/String;
    .locals 8

    .line 242
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    :cond_0
    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-nez v2, :cond_1

    const-string p0, "0s"

    goto/16 :goto_4

    .line 245
    :cond_1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getAbsoluteValue-UwyO8pc(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/time/Duration;->getInNanoseconds-impl(D)D

    move-result-wide v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmpg-double v6, v0, v2

    if-gez v6, :cond_2

    .line 249
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    :goto_0
    const/4 v1, 0x0

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    int-to-double v2, v5

    cmpg-double v6, v0, v2

    if-gez v6, :cond_3

    .line 250
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x7

    goto :goto_2

    :cond_3
    const-wide v2, 0x408f400000000000L    # 1000.0

    cmpg-double v6, v0, v2

    if-gez v6, :cond_4

    .line 251
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    :goto_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    const-wide v2, 0x412e848000000000L    # 1000000.0

    cmpg-double v6, v0, v2

    if-gez v6, :cond_5

    .line 252
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_1

    :cond_5
    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    cmpg-double v6, v0, v2

    if-gez v6, :cond_6

    .line 253
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_1

    :cond_6
    const-wide v2, 0x426d1a94a2000000L    # 1.0E12

    cmpg-double v6, v0, v2

    if-gez v6, :cond_7

    .line 254
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_1

    :cond_7
    const-wide v2, 0x42cb48eb57e00000L    # 6.0E13

    cmpg-double v6, v0, v2

    if-gez v6, :cond_8

    .line 255
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    goto :goto_1

    :cond_8
    const-wide v2, 0x4329945ca2620000L    # 3.6E15

    cmpg-double v6, v0, v2

    if-gez v6, :cond_9

    .line 256
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    goto :goto_1

    :cond_9
    const-wide v2, 0x44476b344f2a78c0L    # 8.64E20

    cmpg-double v6, v0, v2

    if-gez v6, :cond_a

    .line 257
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    goto :goto_1

    .line 258
    :cond_a
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    .line 260
    :goto_2
    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(DLjava/util/concurrent/TimeUnit;)D

    move-result-wide v2

    .line 261
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_b

    .line 262
    invoke-static {v2, v3}, Lkotlin/time/FormatToDecimalsKt;->formatScientific(D)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_b
    if-lez v1, :cond_c

    .line 263
    invoke-static {v2, v3, v1}, Lkotlin/time/FormatToDecimalsKt;->formatUpToDecimals(DI)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 264
    :cond_c
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {p0, p1, v6, v7}, Lkotlin/time/Duration;->precision-impl(DD)I

    move-result p0

    invoke-static {v2, v3, p0}, Lkotlin/time/FormatToDecimalsKt;->formatToExactDecimals(DI)Ljava/lang/String;

    move-result-object p0

    .line 261
    :goto_3
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-static {v0}, Lkotlin/time/DurationUnitKt__DurationUnitKt;->shortName(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_4
    return-object p0
.end method

.method public static final unaryMinus-UwyO8pc(D)D
    .locals 0

    neg-double p0, p0

    .line 53
    invoke-static {p0, p1}, Lkotlin/time/Duration;->constructor-impl(D)D

    return-wide p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 31
    check-cast p1, Lkotlin/time/Duration;

    invoke-virtual {p1}, Lkotlin/time/Duration;->unbox-impl()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lkotlin/time/Duration;->compareTo-LRDsOJo(D)I

    move-result p1

    return p1
.end method

.method public compareTo-LRDsOJo(D)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lkotlin/time/Duration;->value:D

    invoke-static {v0, v1, p1, p2}, Lkotlin/time/Duration;->compareTo-LRDsOJo(DD)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lkotlin/time/Duration;->value:D

    invoke-static {v0, v1, p1}, Lkotlin/time/Duration;->equals-impl(DLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lkotlin/time/Duration;->value:D

    invoke-static {v0, v1}, Lkotlin/time/Duration;->hashCode-impl(D)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lkotlin/time/Duration;->value:D

    invoke-static {v0, v1}, Lkotlin/time/Duration;->toString-impl(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()D
    .locals 2

    iget-wide v0, p0, Lkotlin/time/Duration;->value:D

    return-wide v0
.end method
