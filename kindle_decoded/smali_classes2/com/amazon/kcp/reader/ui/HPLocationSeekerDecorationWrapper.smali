.class public final Lcom/amazon/kcp/reader/ui/HPLocationSeekerDecorationWrapper;
.super Ljava/lang/Object;
.source "HushpuppyUpsellDetector.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/ILocationSeekerDecorationEx;


# instance fields
.field private final asin:Ljava/lang/String;

.field private final detector:Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorImpl;

.field private final isWrappedControlEnabled:Z

.field private final wrapped:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecorationEx;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorImpl;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ILocationSeekerDecorationEx;)V
    .locals 2

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "wrapped"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/HPLocationSeekerDecorationWrapper;->detector:Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorImpl;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/HPLocationSeekerDecorationWrapper;->asin:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/HPLocationSeekerDecorationWrapper;->wrapped:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecorationEx;

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 223
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "isEnabled"

    new-array v1, p2, [Ljava/lang/Class;

    invoke-virtual {p3, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    const-string v0, "method"

    .line 224
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 225
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/HPLocationSeekerDecorationWrapper;->wrapped:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecorationEx;

    new-array v1, p2, [Ljava/lang/Object;

    invoke-virtual {p3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    instance-of v0, p3, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 p3, 0x0

    :cond_0
    check-cast p3, Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_1

    goto :goto_0

    .line 229
    :catchall_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p3, Lcom/amazon/kindle/services/metrics/MetricType;->ERROR:Lcom/amazon/kindle/services/metrics/MetricType;

    const-string v0, "HushpuppyUpsellDetector"

    const-string v1, "HPUpsellDetectionError"

    invoke-virtual {p1, v0, v1, p3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;)V

    :cond_1
    const/4 p1, 0x0

    .line 232
    :goto_0
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/HPLocationSeekerDecorationWrapper;->isWrappedControlEnabled:Z

    return-void
.end method


# virtual methods
.method public getChangeListener()Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/HPLocationSeekerDecorationWrapper;->wrapped:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecorationEx;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;->getChangeListener()Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    return-object v0
.end method

.method public getContentDescription(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/HPLocationSeekerDecorationWrapper;->wrapped:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecorationEx;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;->getContentDescription(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDecoration(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;Landroid/content/Context;Landroid/view/ViewParent;Lcom/amazon/kindle/krx/ui/ColorMode;)Landroid/view/View;
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colorMode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    sget-object v0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;->RIGHT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/HPLocationSeekerDecorationWrapper;->isWrappedControlEnabled:Z

    if-nez v0, :cond_0

    .line 237
    invoke-static {}, Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorKt;->access$getTAG$p()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Full Player NOT enabled for current asin "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/HPLocationSeekerDecorationWrapper;->asin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", suppressing headphones button"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 p1, 0x0

    goto :goto_0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/HPLocationSeekerDecorationWrapper;->wrapped:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecorationEx;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecorationEx;->getDecoration(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;Landroid/content/Context;Landroid/view/ViewParent;Lcom/amazon/kindle/krx/ui/ColorMode;)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getDecoration(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;)Lcom/amazon/kindle/krx/ui/ColorCodedView;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/HPLocationSeekerDecorationWrapper;->wrapped:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecorationEx;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;->getDecoration(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;)Lcom/amazon/kindle/krx/ui/ColorCodedView;

    move-result-object p1

    return-object p1
.end method

.method public getLocationSeekerWidget(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;)Lcom/amazon/kindle/krx/ui/ILocationSeekerWidget;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/HPLocationSeekerDecorationWrapper;->wrapped:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecorationEx;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;->getLocationSeekerWidget(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;)Lcom/amazon/kindle/krx/ui/ILocationSeekerWidget;

    move-result-object p1

    return-object p1
.end method

.method public getMaxProgress()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/HPLocationSeekerDecorationWrapper;->wrapped:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecorationEx;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;->getMaxProgress()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryProgress()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/HPLocationSeekerDecorationWrapper;->wrapped:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecorationEx;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;->getSecondaryProgress()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getSeekBar()Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/HPLocationSeekerDecorationWrapper;->wrapped:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecorationEx;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;->getSeekBar()Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    move-result-object v0

    return-object v0
.end method

.method public getText(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/HPLocationSeekerDecorationWrapper;->wrapped:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecorationEx;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;->getText(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isTrackingTouch()Z
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/HPLocationSeekerDecorationWrapper;->wrapped:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecorationEx;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecorationEx;->isTrackingTouch()Z

    move-result v0

    return v0
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/HPLocationSeekerDecorationWrapper;->wrapped:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecorationEx;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecorationEx;->onStop()V

    return-void
.end method
