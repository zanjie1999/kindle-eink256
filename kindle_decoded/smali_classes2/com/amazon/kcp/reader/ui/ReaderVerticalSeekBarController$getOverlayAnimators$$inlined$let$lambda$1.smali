.class final Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getOverlayAnimators$$inlined$let$lambda$1;
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
.field final synthetic $endAlpha:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $it:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

.field final synthetic $layers:Ljava/util/TreeMap;

.field final synthetic $seekBarVisible$inlined:Z

.field final synthetic $thumbVisible$inlined:Z


# direct methods
.method constructor <init>(Ljava/util/TreeMap;Lkotlin/jvm/internal/Ref$IntRef;Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;ZJZ)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getOverlayAnimators$$inlined$let$lambda$1;->$layers:Ljava/util/TreeMap;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getOverlayAnimators$$inlined$let$lambda$1;->$endAlpha:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getOverlayAnimators$$inlined$let$lambda$1;->$it:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

    iput-boolean p4, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getOverlayAnimators$$inlined$let$lambda$1;->$seekBarVisible$inlined:Z

    iput-boolean p7, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getOverlayAnimators$$inlined$let$lambda$1;->$thumbVisible$inlined:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    const-string v0, "anim"

    .line 200
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 201
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getOverlayAnimators$$inlined$let$lambda$1;->$layers:Ljava/util/TreeMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/ui/seekbar/ISeekBarLayer;

    .line 202
    instance-of v3, v1, Lcom/amazon/kindle/seekbar/SeekBarLayerAlpha;

    if-eqz v3, :cond_0

    .line 205
    iget-boolean v3, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getOverlayAnimators$$inlined$let$lambda$1;->$thumbVisible$inlined:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getOverlayAnimators$$inlined$let$lambda$1;->$seekBarVisible$inlined:Z

    if-nez v3, :cond_1

    sget-object v3, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->KNOB_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    invoke-virtual {v3}, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->getValue()F

    move-result v3

    cmpg-float v2, v2, v3

    if-nez v2, :cond_1

    goto :goto_0

    .line 207
    :cond_1
    instance-of v2, v1, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerContrastBackground;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 212
    :cond_2
    check-cast v1, Lcom/amazon/kindle/seekbar/SeekBarLayerAlpha;

    invoke-virtual {v1}, Lcom/amazon/kindle/seekbar/SeekBarLayerAlpha;->getAlpha()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getOverlayAnimators$$inlined$let$lambda$1;->$endAlpha:Lkotlin/jvm/internal/Ref$IntRef;

    iget v3, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-eq v2, v3, :cond_0

    .line 213
    invoke-virtual {v1, p1}, Lcom/amazon/kindle/seekbar/SeekBarLayerAlpha;->setAlpha(I)V

    goto :goto_0

    .line 218
    :cond_3
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getOverlayAnimators$$inlined$let$lambda$1;->$it:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->doInvalidate()V

    return-void

    .line 200
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
