.class public final Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getThumbAnimator$$inlined$let$lambda$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ReaderVerticalSeekBarController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->getThumbAnimator(ZLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $animatorListener$inlined:Landroid/animation/AnimatorListenerAdapter;

.field final synthetic $it:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

.field final synthetic $visible$inlined:Z

.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;ZLandroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getThumbAnimator$$inlined$let$lambda$1;->$it:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getThumbAnimator$$inlined$let$lambda$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;

    iput-boolean p3, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getThumbAnimator$$inlined$let$lambda$1;->$visible$inlined:Z

    iput-object p4, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getThumbAnimator$$inlined$let$lambda$1;->$animatorListener$inlined:Landroid/animation/AnimatorListenerAdapter;

    .line 132
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getThumbAnimator$$inlined$let$lambda$1;->$animatorListener$inlined:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 143
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getThumbAnimator$$inlined$let$lambda$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->access$getTAG$p(Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;)Ljava/lang/String;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getThumbAnimator$$inlined$let$lambda$1;->$animatorListener$inlined:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 135
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getThumbAnimator$$inlined$let$lambda$1;->$visible$inlined:Z

    if-eqz p1, :cond_0

    .line 136
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getThumbAnimator$$inlined$let$lambda$1;->$it:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

    sget-object v0, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->KNOB_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->setMinVisibleLayerIndex(Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;)V

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getThumbAnimator$$inlined$let$lambda$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->access$getTAG$p(Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;)Ljava/lang/String;

    return-void
.end method
