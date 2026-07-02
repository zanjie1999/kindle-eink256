.class public final Lcom/amazon/kcp/reader/ui/BookCoverOnResumeFragment$createUpSlideAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BookCoverOnResumeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/BookCoverOnResumeFragment;->createUpSlideAnimator(Landroid/widget/ImageView;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $animationView:Landroid/view/View;

.field final synthetic $parentView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeFragment$createUpSlideAnimator$1;->$parentView:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeFragment$createUpSlideAnimator$1;->$animationView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 139
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeFragment$createUpSlideAnimator$1;->$parentView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeFragment$createUpSlideAnimator$1;->$animationView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 140
    :cond_0
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->BOOK_COVER_ANIMATION_COLD_BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Lcom/amazon/kindle/performance/KindlePerformanceConstants;ZJ)V

    .line 143
    invoke-static {}, Lcom/amazon/kindle/tutorial/InBookTutorialHelper;->showDarkModeTutorialIfNecessary()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 134
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->BOOK_COVER_ANIMATION_COLD_BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Lcom/amazon/kindle/performance/KindlePerformanceConstants;ZJ)V

    .line 135
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeFragment$createUpSlideAnimator$1;->$parentView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeFragment$createUpSlideAnimator$1;->$animationView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
