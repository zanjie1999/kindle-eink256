.class public final Lcom/amazon/kindle/util/RetryConfig;
.super Ljava/lang/Object;
.source "Retry.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/util/RetryConfig$BackOff;,
        Lcom/amazon/kindle/util/RetryConfig$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_BACKOFF:Lcom/amazon/kindle/util/RetryConfig$BackOff;


# instance fields
.field private final acceptancePredicate:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final backOffType:Lcom/amazon/kindle/util/RetryConfig$BackOff;

.field private final delayFactor:J

.field private final maxAttempts:I

.field private final maxDelay:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/util/RetryConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/util/RetryConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 66
    sget-object v0, Lcom/amazon/kindle/util/RetryConfig$BackOff;->NONE:Lcom/amazon/kindle/util/RetryConfig$BackOff;

    sput-object v0, Lcom/amazon/kindle/util/RetryConfig;->DEFAULT_BACKOFF:Lcom/amazon/kindle/util/RetryConfig$BackOff;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1f

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/amazon/kindle/util/RetryConfig;-><init>(IJLcom/amazon/kindle/util/RetryConfig$BackOff;JLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IJLcom/amazon/kindle/util/RetryConfig$BackOff;JLkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lcom/amazon/kindle/util/RetryConfig$BackOff;",
            "J",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "backOffType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "acceptancePredicate"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/amazon/kindle/util/RetryConfig;->maxAttempts:I

    iput-wide p2, p0, Lcom/amazon/kindle/util/RetryConfig;->delayFactor:J

    iput-object p4, p0, Lcom/amazon/kindle/util/RetryConfig;->backOffType:Lcom/amazon/kindle/util/RetryConfig$BackOff;

    iput-wide p5, p0, Lcom/amazon/kindle/util/RetryConfig;->maxDelay:J

    iput-object p7, p0, Lcom/amazon/kindle/util/RetryConfig;->acceptancePredicate:Lkotlin/jvm/functions/Function1;

    cmp-long p4, p2, p5

    if-gtz p4, :cond_3

    if-lez p1, :cond_2

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-ltz p1, :cond_1

    cmp-long p1, p5, v0

    if-ltz p1, :cond_0

    return-void

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Received a negative maxDelay of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/amazon/kindle/util/RetryConfig;->maxDelay:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Received a negative delayFactor of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/amazon/kindle/util/RetryConfig;->delayFactor:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Received a non-positive desiredAttempts count of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/amazon/kindle/util/RetryConfig;->maxAttempts:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Received a delayFactor "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/amazon/kindle/util/RetryConfig;->delayFactor:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " which is larger than the maxDelay "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/amazon/kindle/util/RetryConfig;->maxDelay:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(IJLcom/amazon/kindle/util/RetryConfig$BackOff;JLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    const/4 p1, 0x3

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    const-wide/16 p2, 0x32

    :cond_1
    move-wide v0, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    .line 24
    sget-object p4, Lcom/amazon/kindle/util/RetryConfig;->DEFAULT_BACKOFF:Lcom/amazon/kindle/util/RetryConfig$BackOff;

    :cond_2
    move-object p9, p4

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    const-wide/16 p5, 0x1388

    :cond_3
    move-wide v2, p5

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    .line 26
    sget-object p7, Lcom/amazon/kindle/util/RetryConfig$1;->INSTANCE:Lcom/amazon/kindle/util/RetryConfig$1;

    :cond_4
    move-object v4, p7

    move-object p2, p0

    move p3, p1

    move-wide p4, v0

    move-object p6, p9

    move-wide p7, v2

    move-object p9, v4

    invoke-direct/range {p2 .. p9}, Lcom/amazon/kindle/util/RetryConfig;-><init>(IJLcom/amazon/kindle/util/RetryConfig$BackOff;JLkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kindle/util/RetryConfig;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/util/RetryConfig;

    iget v0, p0, Lcom/amazon/kindle/util/RetryConfig;->maxAttempts:I

    iget v1, p1, Lcom/amazon/kindle/util/RetryConfig;->maxAttempts:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/amazon/kindle/util/RetryConfig;->delayFactor:J

    iget-wide v2, p1, Lcom/amazon/kindle/util/RetryConfig;->delayFactor:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/util/RetryConfig;->backOffType:Lcom/amazon/kindle/util/RetryConfig$BackOff;

    iget-object v1, p1, Lcom/amazon/kindle/util/RetryConfig;->backOffType:Lcom/amazon/kindle/util/RetryConfig$BackOff;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/amazon/kindle/util/RetryConfig;->maxDelay:J

    iget-wide v2, p1, Lcom/amazon/kindle/util/RetryConfig;->maxDelay:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/util/RetryConfig;->acceptancePredicate:Lkotlin/jvm/functions/Function1;

    iget-object p1, p1, Lcom/amazon/kindle/util/RetryConfig;->acceptancePredicate:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAcceptancePredicate()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/amazon/kindle/util/RetryConfig;->acceptancePredicate:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getDelay(I)J
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/amazon/kindle/util/RetryConfig;->backOffType:Lcom/amazon/kindle/util/RetryConfig$BackOff;

    sget-object v1, Lcom/amazon/kindle/util/RetryConfig$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 59
    iget-wide v0, p0, Lcom/amazon/kindle/util/RetryConfig;->delayFactor:J

    long-to-double v0, v0

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 58
    :cond_1
    iget-wide v0, p0, Lcom/amazon/kindle/util/RetryConfig;->delayFactor:J

    int-to-long v2, p1

    mul-long v0, v0, v2

    goto :goto_0

    .line 57
    :cond_2
    iget-wide v0, p0, Lcom/amazon/kindle/util/RetryConfig;->delayFactor:J

    .line 60
    :goto_0
    iget-wide v2, p0, Lcom/amazon/kindle/util/RetryConfig;->maxDelay:J

    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getMaxAttempts()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/amazon/kindle/util/RetryConfig;->maxAttempts:I

    return v0
.end method

.method public hashCode()I
    .locals 8

    iget v0, p0, Lcom/amazon/kindle/util/RetryConfig;->maxAttempts:I

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/amazon/kindle/util/RetryConfig;->delayFactor:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/kindle/util/RetryConfig;->backOffType:Lcom/amazon/kindle/util/RetryConfig$BackOff;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/amazon/kindle/util/RetryConfig;->maxDelay:J

    ushr-long v6, v4, v3

    xor-long v3, v4, v6

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/kindle/util/RetryConfig;->acceptancePredicate:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RetryConfig(maxAttempts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/util/RetryConfig;->maxAttempts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", delayFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/kindle/util/RetryConfig;->delayFactor:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", backOffType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/util/RetryConfig;->backOffType:Lcom/amazon/kindle/util/RetryConfig$BackOff;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/kindle/util/RetryConfig;->maxDelay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", acceptancePredicate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/util/RetryConfig;->acceptancePredicate:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
