.class public Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;
.super Ljava/lang/Object;
.source "PeriodicalLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AnimationsProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;


# direct methods
.method protected constructor <init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V
    .locals 0

    .line 2878
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createCloseGridViewAnimation()Landroid/view/animation/Animation;
    .locals 8

    .line 2928
    new-instance v7, Landroid/view/animation/ScaleAnimation;

    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$2700(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)F

    move-result v5

    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$2800(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)F

    move-result v6

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    const-wide/16 v0, 0x1f4

    .line 2929
    invoke-virtual {v7, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 2930
    new-instance v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$2;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;)V

    invoke-virtual {v7, v0}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v7
.end method

.method public final createOpenGridViewAnimation()Landroid/view/animation/Animation;
    .locals 9

    .line 2884
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    iget-object v1, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_thumbnailGridView:Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getCurrentPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;->getCoordinateOfPage(I)Landroid/graphics/Point;

    move-result-object v0

    .line 2885
    new-instance v8, Landroid/view/animation/ScaleAnimation;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v6, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v7, v0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3dcccccd    # 0.1f

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    const-wide/16 v0, 0x1f4

    .line 2886
    invoke-virtual {v8, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 2887
    new-instance v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$1;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;)V

    invoke-virtual {v8, v0}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v8
.end method

.method public final createOpenTextViewAnimation()Landroid/view/animation/Animation;
    .locals 8

    .line 2991
    new-instance v7, Landroid/view/animation/ScaleAnimation;

    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$2700(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)F

    move-result v5

    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$2800(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)F

    move-result v6

    const/high16 v1, 0x3e800000    # 0.25f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 2992
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$integer;->tap_to_text_anim_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 2993
    new-instance v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$3;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;)V

    invoke-virtual {v7, v0}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v7
.end method
