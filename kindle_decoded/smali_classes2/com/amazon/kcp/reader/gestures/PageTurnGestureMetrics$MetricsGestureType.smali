.class public final enum Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;
.super Ljava/lang/Enum;
.source "PageTurnGestureMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MetricsGestureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

.field public static final enum SWIPE:Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

.field public static final enum TAP:Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

    new-instance v2, Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "TAP"

    .line 21
    invoke-direct {v2, v5, v3, v4}, Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;->TAP:Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

    aput-object v2, v1, v3

    new-instance v2, Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

    const-string v3, "SWIPE"

    .line 22
    invoke-direct {v2, v3, v4, v0}, Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;->SWIPE:Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

    aput-object v2, v1, v4

    sput-object v1, Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;->$VALUES:[Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;
    .locals 1

    const-class v0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;->$VALUES:[Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;->id:I

    return v0
.end method
