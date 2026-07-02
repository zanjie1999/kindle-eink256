.class public final enum Lcom/audible/android/kcp/player/NarrationSpeedTempo;
.super Ljava/lang/Enum;
.source "NarrationSpeedTempo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/android/kcp/player/NarrationSpeedTempo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/android/kcp/player/NarrationSpeedTempo;

.field public static final enum ONE:Lcom/audible/android/kcp/player/NarrationSpeedTempo;

.field public static final enum ONE_FIVE:Lcom/audible/android/kcp/player/NarrationSpeedTempo;

.field public static final enum ONE_SEVEN_FIVE:Lcom/audible/android/kcp/player/NarrationSpeedTempo;

.field public static final enum ONE_TWO_FIVE:Lcom/audible/android/kcp/player/NarrationSpeedTempo;

.field public static final enum THREE:Lcom/audible/android/kcp/player/NarrationSpeedTempo;

.field public static final enum TWO:Lcom/audible/android/kcp/player/NarrationSpeedTempo;

.field public static final enum TWO_FIVE:Lcom/audible/android/kcp/player/NarrationSpeedTempo;

.field public static final enum ZERO_FIVE:Lcom/audible/android/kcp/player/NarrationSpeedTempo;

.field public static final enum ZERO_SEVEN_FIVE:Lcom/audible/android/kcp/player/NarrationSpeedTempo;


# instance fields
.field private final mDrawable:I

.field private final mMetricKey:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field private final mSpeed:Lcom/audible/mobile/player/NarrationSpeed;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 19
    new-instance v6, Lcom/audible/android/kcp/player/NarrationSpeedTempo;

    sget-object v3, Lcom/audible/mobile/player/NarrationSpeed;->HALF:Lcom/audible/mobile/player/NarrationSpeed;

    sget-object v5, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->NARRATION_SPEED_050:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "ZERO_FIVE"

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/audible/android/kcp/player/NarrationSpeedTempo;-><init>(Ljava/lang/String;ILcom/audible/mobile/player/NarrationSpeed;ILcom/audible/android/kcp/metrics/AiRMetricKey;)V

    sput-object v6, Lcom/audible/android/kcp/player/NarrationSpeedTempo;->ZERO_FIVE:Lcom/audible/android/kcp/player/NarrationSpeedTempo;

    .line 20
    new-instance v0, Lcom/audible/android/kcp/player/NarrationSpeedTempo;

    sget-object v10, Lcom/audible/mobile/player/NarrationSpeed;->THREE_QUARTERS:Lcom/audible/mobile/player/NarrationSpeed;

    sget-object v12, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->NARRATION_SPEED_075:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v8, "ZERO_SEVEN_FIVE"

    const/4 v9, 0x1

    const/4 v11, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/audible/android/kcp/player/NarrationSpeedTempo;-><init>(Ljava/lang/String;ILcom/audible/mobile/player/NarrationSpeed;ILcom/audible/android/kcp/metrics/AiRMetricKey;)V

    sput-object v0, Lcom/audible/android/kcp/player/NarrationSpeedTempo;->ZERO_SEVEN_FIVE:Lcom/audible/android/kcp/player/NarrationSpeedTempo;

    .line 21
    new-instance v0, Lcom/audible/android/kcp/player/NarrationSpeedTempo;

    sget-object v4, Lcom/audible/mobile/player/NarrationSpeed;->NORMAL:Lcom/audible/mobile/player/NarrationSpeed;

    sget-object v6, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->NARRATION_SPEED_100:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v2, "ONE"

    const/4 v3, 0x2

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/audible/android/kcp/player/NarrationSpeedTempo;-><init>(Ljava/lang/String;ILcom/audible/mobile/player/NarrationSpeed;ILcom/audible/android/kcp/metrics/AiRMetricKey;)V

    sput-object v0, Lcom/audible/android/kcp/player/NarrationSpeedTempo;->ONE:Lcom/audible/android/kcp/player/NarrationSpeedTempo;

    .line 22
    new-instance v0, Lcom/audible/android/kcp/player/NarrationSpeedTempo;

    sget-object v10, Lcom/audible/mobile/player/NarrationSpeed;->ONE_AND_A_QUARTER:Lcom/audible/mobile/player/NarrationSpeed;

    sget-object v12, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->NARRATION_SPEED_125:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v8, "ONE_TWO_FIVE"

    const/4 v9, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/audible/android/kcp/player/NarrationSpeedTempo;-><init>(Ljava/lang/String;ILcom/audible/mobile/player/NarrationSpeed;ILcom/audible/android/kcp/metrics/AiRMetricKey;)V

    sput-object v0, Lcom/audible/android/kcp/player/NarrationSpeedTempo;->ONE_TWO_FIVE:Lcom/audible/android/kcp/player/NarrationSpeedTempo;

    .line 23
    new-instance v0, Lcom/audible/android/kcp/player/NarrationSpeedTempo;

    sget-object v4, Lcom/audible/mobile/player/NarrationSpeed;->ONE_AND_A_HALF:Lcom/audible/mobile/player/NarrationSpeed;

    sget-object v6, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->NARRATION_SPEED_150:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v2, "ONE_FIVE"

    const/4 v3, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/audible/android/kcp/player/NarrationSpeedTempo;-><init>(Ljava/lang/String;ILcom/audible/mobile/player/NarrationSpeed;ILcom/audible/android/kcp/metrics/AiRMetricKey;)V

    sput-object v0, Lcom/audible/android/kcp/player/NarrationSpeedTempo;->ONE_FIVE:Lcom/audible/android/kcp/player/NarrationSpeedTempo;

    .line 24
    new-instance v0, Lcom/audible/android/kcp/player/NarrationSpeedTempo;

    sget-object v10, Lcom/audible/mobile/player/NarrationSpeed;->ONE_AND_THREE_QUARTERS:Lcom/audible/mobile/player/NarrationSpeed;

    sget-object v12, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->NARRATION_SPEED_175:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v8, "ONE_SEVEN_FIVE"

    const/4 v9, 0x5

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/audible/android/kcp/player/NarrationSpeedTempo;-><init>(Ljava/lang/String;ILcom/audible/mobile/player/NarrationSpeed;ILcom/audible/android/kcp/metrics/AiRMetricKey;)V

    sput-object v0, Lcom/audible/android/kcp/player/NarrationSpeedTempo;->ONE_SEVEN_FIVE:Lcom/audible/android/kcp/player/NarrationSpeedTempo;

    .line 25
    new-instance v0, Lcom/audible/android/kcp/player/NarrationSpeedTempo;

    sget-object v4, Lcom/audible/mobile/player/NarrationSpeed;->DOUBLE:Lcom/audible/mobile/player/NarrationSpeed;

    sget-object v6, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->NARRATION_SPEED_200:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v2, "TWO"

    const/4 v3, 0x6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/audible/android/kcp/player/NarrationSpeedTempo;-><init>(Ljava/lang/String;ILcom/audible/mobile/player/NarrationSpeed;ILcom/audible/android/kcp/metrics/AiRMetricKey;)V

    sput-object v0, Lcom/audible/android/kcp/player/NarrationSpeedTempo;->TWO:Lcom/audible/android/kcp/player/NarrationSpeedTempo;

    .line 26
    new-instance v0, Lcom/audible/android/kcp/player/NarrationSpeedTempo;

    sget-object v10, Lcom/audible/mobile/player/NarrationSpeed;->TWO_AND_HALF:Lcom/audible/mobile/player/NarrationSpeed;

    sget-object v12, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->NARRATION_SPEED_250:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v8, "TWO_FIVE"

    const/4 v9, 0x7

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/audible/android/kcp/player/NarrationSpeedTempo;-><init>(Ljava/lang/String;ILcom/audible/mobile/player/NarrationSpeed;ILcom/audible/android/kcp/metrics/AiRMetricKey;)V

    sput-object v0, Lcom/audible/android/kcp/player/NarrationSpeedTempo;->TWO_FIVE:Lcom/audible/android/kcp/player/NarrationSpeedTempo;

    .line 27
    new-instance v0, Lcom/audible/android/kcp/player/NarrationSpeedTempo;

    sget-object v4, Lcom/audible/mobile/player/NarrationSpeed;->TRIPLE:Lcom/audible/mobile/player/NarrationSpeed;

    sget-object v6, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->NARRATION_SPEED_300:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v2, "THREE"

    const/16 v3, 0x8

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/audible/android/kcp/player/NarrationSpeedTempo;-><init>(Ljava/lang/String;ILcom/audible/mobile/player/NarrationSpeed;ILcom/audible/android/kcp/metrics/AiRMetricKey;)V

    sput-object v0, Lcom/audible/android/kcp/player/NarrationSpeedTempo;->THREE:Lcom/audible/android/kcp/player/NarrationSpeedTempo;

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/audible/android/kcp/player/NarrationSpeedTempo;

    .line 18
    sget-object v2, Lcom/audible/android/kcp/player/NarrationSpeedTempo;->ZERO_FIVE:Lcom/audible/android/kcp/player/NarrationSpeedTempo;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/android/kcp/player/NarrationSpeedTempo;->ZERO_SEVEN_FIVE:Lcom/audible/android/kcp/player/NarrationSpeedTempo;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/android/kcp/player/NarrationSpeedTempo;->ONE:Lcom/audible/android/kcp/player/NarrationSpeedTempo;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/android/kcp/player/NarrationSpeedTempo;->ONE_TWO_FIVE:Lcom/audible/android/kcp/player/NarrationSpeedTempo;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/android/kcp/player/NarrationSpeedTempo;->ONE_FIVE:Lcom/audible/android/kcp/player/NarrationSpeedTempo;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/android/kcp/player/NarrationSpeedTempo;->ONE_SEVEN_FIVE:Lcom/audible/android/kcp/player/NarrationSpeedTempo;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/android/kcp/player/NarrationSpeedTempo;->TWO:Lcom/audible/android/kcp/player/NarrationSpeedTempo;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/android/kcp/player/NarrationSpeedTempo;->TWO_FIVE:Lcom/audible/android/kcp/player/NarrationSpeedTempo;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const/16 v2, 0x8

    aput-object v0, v1, v2

    sput-object v1, Lcom/audible/android/kcp/player/NarrationSpeedTempo;->$VALUES:[Lcom/audible/android/kcp/player/NarrationSpeedTempo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/audible/mobile/player/NarrationSpeed;ILcom/audible/android/kcp/metrics/AiRMetricKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/player/NarrationSpeed;",
            "I",
            "Lcom/audible/android/kcp/metrics/AiRMetricKey;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p3, p0, Lcom/audible/android/kcp/player/NarrationSpeedTempo;->mSpeed:Lcom/audible/mobile/player/NarrationSpeed;

    .line 36
    iput p4, p0, Lcom/audible/android/kcp/player/NarrationSpeedTempo;->mDrawable:I

    .line 37
    iput-object p5, p0, Lcom/audible/android/kcp/player/NarrationSpeedTempo;->mMetricKey:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    return-void
.end method

.method public static fromSpeedAsFloat(F)Lcom/audible/android/kcp/player/NarrationSpeedTempo;
    .locals 5

    .line 80
    invoke-static {}, Lcom/audible/android/kcp/player/NarrationSpeedTempo;->values()[Lcom/audible/android/kcp/player/NarrationSpeedTempo;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 81
    invoke-virtual {v3}, Lcom/audible/android/kcp/player/NarrationSpeedTempo;->getSpeed()Lcom/audible/mobile/player/NarrationSpeed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/audible/mobile/player/NarrationSpeed;->asFloat()F

    move-result v4

    cmpl-float v4, v4, p0

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/android/kcp/player/NarrationSpeedTempo;
    .locals 1

    .line 18
    const-class v0, Lcom/audible/android/kcp/player/NarrationSpeedTempo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/android/kcp/player/NarrationSpeedTempo;

    return-object p0
.end method

.method public static values()[Lcom/audible/android/kcp/player/NarrationSpeedTempo;
    .locals 1

    .line 18
    sget-object v0, Lcom/audible/android/kcp/player/NarrationSpeedTempo;->$VALUES:[Lcom/audible/android/kcp/player/NarrationSpeedTempo;

    invoke-virtual {v0}, [Lcom/audible/android/kcp/player/NarrationSpeedTempo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/android/kcp/player/NarrationSpeedTempo;

    return-object v0
.end method


# virtual methods
.method public getSpeed()Lcom/audible/mobile/player/NarrationSpeed;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/audible/android/kcp/player/NarrationSpeedTempo;->mSpeed:Lcom/audible/mobile/player/NarrationSpeed;

    return-object v0
.end method
