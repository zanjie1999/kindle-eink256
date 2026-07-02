.class final Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$reportPageTurnMetrics$1;
.super Ljava/lang/Object;
.source "KRIFGestureMetricsHandler.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler;->reportPageTurnMetrics()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $gestureEventData:Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;

.field final synthetic this$0:Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler;Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$reportPageTurnMetrics$1;->this$0:Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler;

    iput-object p2, p0, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$reportPageTurnMetrics$1;->$gestureEventData:Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 62
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$reportPageTurnMetrics$1;->this$0:Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler;

    invoke-static {v0}, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler;->access$getContext$p(Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "context.resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 63
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$reportPageTurnMetrics$1;->$gestureEventData:Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;

    invoke-virtual {v1}, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;->getType()Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$reportPageTurnMetrics$1;->$gestureEventData:Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;

    invoke-virtual {v2}, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;->getGestureX()F

    move-result v2

    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$reportPageTurnMetrics$1;->$gestureEventData:Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;

    invoke-virtual {v3}, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;->getGestureY()F

    move-result v3

    .line 64
    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$reportPageTurnMetrics$1;->this$0:Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler;

    invoke-static {v4}, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler;->access$getContext$p(Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/android/util/UIUtils;->getDeviceScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v4

    const-string v5, "UIUtils.getDeviceScreenSize(context)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-static {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics;->reportPageTurnGesture(ILcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;FFLandroid/graphics/Point;)V

    return-void
.end method
