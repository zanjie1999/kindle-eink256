.class final Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getThumbAnimator$1$1;
.super Ljava/lang/Object;
.source "ReaderVerticalSeekBarController.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->getThumbAnimator(ZLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $it:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

.field final synthetic $thumbLayer:Lcom/amazon/kindle/seekbar/SeekBarLayerAlpha;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/seekbar/SeekBarLayerAlpha;Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getThumbAnimator$1$1;->$thumbLayer:Lcom/amazon/kindle/seekbar/SeekBarLayerAlpha;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getThumbAnimator$1$1;->$it:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "anim"

    .line 127
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 128
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getThumbAnimator$1$1;->$thumbLayer:Lcom/amazon/kindle/seekbar/SeekBarLayerAlpha;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/seekbar/SeekBarLayerAlpha;->setAlpha(I)V

    .line 129
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getThumbAnimator$1$1;->$it:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->doInvalidate()V

    return-void

    .line 127
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
