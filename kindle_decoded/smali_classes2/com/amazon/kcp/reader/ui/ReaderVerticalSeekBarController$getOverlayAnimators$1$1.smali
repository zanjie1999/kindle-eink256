.class final Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getOverlayAnimators$1$1;
.super Ljava/lang/Object;
.source "ReaderVerticalSeekBarController.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->getOverlayAnimators(ZZJ)[Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $endContrastBackgroundAlpha:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $it:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

.field final synthetic $layers:Ljava/util/TreeMap;


# direct methods
.method constructor <init>(Ljava/util/TreeMap;Lkotlin/jvm/internal/Ref$IntRef;Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getOverlayAnimators$1$1;->$layers:Ljava/util/TreeMap;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getOverlayAnimators$1$1;->$endContrastBackgroundAlpha:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getOverlayAnimators$1$1;->$it:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    const-string v0, "anim"

    .line 184
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 185
    sget-object v0, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->CONTRAST_BACKGROUND_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    invoke-virtual {v0}, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->getValue()F

    move-result v0

    .line 186
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getOverlayAnimators$1$1;->$layers:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/ui/seekbar/ISeekBarLayer;

    if-eqz v0, :cond_0

    .line 187
    instance-of v1, v0, Lcom/amazon/kindle/seekbar/SeekBarLayerAlpha;

    if-eqz v1, :cond_0

    .line 188
    check-cast v0, Lcom/amazon/kindle/seekbar/SeekBarLayerAlpha;

    invoke-virtual {v0}, Lcom/amazon/kindle/seekbar/SeekBarLayerAlpha;->getAlpha()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getOverlayAnimators$1$1;->$endContrastBackgroundAlpha:Lkotlin/jvm/internal/Ref$IntRef;

    iget v2, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-eq v1, v2, :cond_0

    .line 189
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/seekbar/SeekBarLayerAlpha;->setAlpha(I)V

    .line 190
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getOverlayAnimators$1$1;->$it:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->doInvalidate()V

    :cond_0
    return-void

    .line 184
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
