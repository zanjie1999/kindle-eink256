.class public Lcom/audible/hushpuppy/common/upsell/CountDownTimerSetting;
.super Ljava/lang/Object;
.source "CountDownTimerSetting.java"


# static fields
.field private static final DEFAULT_TICK_LENGTH:I = 0x3e8

.field private static final DEFAULT_TIMER_LENGTH:J = 0x4e20L

.field private static final MILLSECONDS_PER_SECOND:I = 0x3e8


# instance fields
.field private requestTicks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tickLengthMilliseconds:I

.field private timerLengthMilliseconds:J


# direct methods
.method public constructor <init>(II)V
    .locals 6

    const-wide/16 v1, 0x4e20

    const/16 v3, 0x3e8

    move-object v0, p0

    move v4, p1

    move v5, p2

    .line 40
    invoke-direct/range {v0 .. v5}, Lcom/audible/hushpuppy/common/upsell/CountDownTimerSetting;-><init>(JIII)V

    return-void
.end method

.method public constructor <init>(JIII)V
    .locals 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-wide p1, p0, Lcom/audible/hushpuppy/common/upsell/CountDownTimerSetting;->timerLengthMilliseconds:J

    .line 54
    iput p3, p0, Lcom/audible/hushpuppy/common/upsell/CountDownTimerSetting;->tickLengthMilliseconds:I

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/audible/hushpuppy/common/upsell/CountDownTimerSetting;->requestTicks:Ljava/util/List;

    :goto_0
    mul-int p1, p4, p3

    int-to-long p1, p1

    .line 58
    iget-wide v0, p0, Lcom/audible/hushpuppy/common/upsell/CountDownTimerSetting;->timerLengthMilliseconds:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 59
    iget-object p1, p0, Lcom/audible/hushpuppy/common/upsell/CountDownTimerSetting;->requestTicks:Ljava/util/List;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr p4, p5

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final getRequestTicks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/audible/hushpuppy/common/upsell/CountDownTimerSetting;->requestTicks:Ljava/util/List;

    return-object v0
.end method

.method public final getSecondsFromTick(I)I
    .locals 1

    .line 101
    iget v0, p0, Lcom/audible/hushpuppy/common/upsell/CountDownTimerSetting;->tickLengthMilliseconds:I

    mul-int p1, p1, v0

    div-int/lit16 p1, p1, 0x3e8

    return p1
.end method

.method public final getTickLengthMilliseconds()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/audible/hushpuppy/common/upsell/CountDownTimerSetting;->tickLengthMilliseconds:I

    return v0
.end method

.method public final getTimerLengthMilliseconds()J
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/audible/hushpuppy/common/upsell/CountDownTimerSetting;->timerLengthMilliseconds:J

    return-wide v0
.end method

.method public final getTotalTicks()I
    .locals 4

    .line 85
    iget-wide v0, p0, Lcom/audible/hushpuppy/common/upsell/CountDownTimerSetting;->timerLengthMilliseconds:J

    iget v2, p0, Lcom/audible/hushpuppy/common/upsell/CountDownTimerSetting;->tickLengthMilliseconds:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method
