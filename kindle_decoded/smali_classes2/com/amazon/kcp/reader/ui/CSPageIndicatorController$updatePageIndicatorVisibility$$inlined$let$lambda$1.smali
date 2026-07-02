.class public final Lcom/amazon/kcp/reader/ui/CSPageIndicatorController$updatePageIndicatorVisibility$$inlined$let$lambda$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CSPageIndicatorController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/CSPageIndicatorController;->updatePageIndicatorVisibility(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $it:Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;

.field final synthetic $visible$inlined:Z


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;Lcom/amazon/kcp/reader/ui/CSPageIndicatorController;ZZI)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/CSPageIndicatorController$updatePageIndicatorVisibility$$inlined$let$lambda$1;->$it:Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;

    iput-boolean p3, p0, Lcom/amazon/kcp/reader/ui/CSPageIndicatorController$updatePageIndicatorVisibility$$inlined$let$lambda$1;->$visible$inlined:Z

    .line 47
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 55
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ui/CSPageIndicatorController$updatePageIndicatorVisibility$$inlined$let$lambda$1;->$visible$inlined:Z

    if-nez p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CSPageIndicatorController$updatePageIndicatorVisibility$$inlined$let$lambda$1;->$it:Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 49
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ui/CSPageIndicatorController$updatePageIndicatorVisibility$$inlined$let$lambda$1;->$visible$inlined:Z

    if-eqz p1, :cond_0

    .line 50
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CSPageIndicatorController$updatePageIndicatorVisibility$$inlined$let$lambda$1;->$it:Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
