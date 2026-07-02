.class final Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar$setProgressWithAnimation$1;
.super Ljava/lang/Object;
.source "ReaderVerticalSeekBar.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->setProgressWithAnimation(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $updatedProgress:I

.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;I)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar$setProgressWithAnimation$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

    iput p2, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar$setProgressWithAnimation$1;->$updatedProgress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string/jumbo v0, "valueAnimator"

    .line 254
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    .line 255
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar$setProgressWithAnimation$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar$setProgressWithAnimation$1;->$updatedProgress:I

    :goto_0
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->setVisualProgress(I)V

    return-void
.end method
