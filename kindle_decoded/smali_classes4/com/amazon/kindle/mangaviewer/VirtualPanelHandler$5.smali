.class Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$5;
.super Ljava/lang/Object;
.source "VirtualPanelHandler.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->animateVirtualPanelMove(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;Lcom/amazon/kindle/mangaviewer/BoundImageView;FFFFFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;

.field final synthetic val$animationTime:I

.field final synthetic val$boundView:Lcom/amazon/kindle/mangaviewer/BoundImageView;

.field final synthetic val$mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

.field final synthetic val$matrixTranslateX:F

.field final synthetic val$matrixTranslateY:F

.field final synthetic val$scaleTo:F


# direct methods
.method constructor <init>(Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;Lcom/amazon/kindle/mangaviewer/BoundImageView;FFFLcom/amazon/kindle/mangaviewer/IMangaViewPager;I)V
    .locals 0

    .line 896
    iput-object p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$5;->this$0:Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;

    iput-object p2, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$5;->val$boundView:Lcom/amazon/kindle/mangaviewer/BoundImageView;

    iput p3, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$5;->val$scaleTo:F

    iput p4, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$5;->val$matrixTranslateX:F

    iput p5, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$5;->val$matrixTranslateY:F

    iput-object p6, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$5;->val$mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    iput p7, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$5;->val$animationTime:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 900
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 902
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$5;->val$boundView:Lcom/amazon/kindle/mangaviewer/BoundImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 903
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$5;->val$boundView:Lcom/amazon/kindle/mangaviewer/BoundImageView;

    iget v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$5;->val$scaleTo:F

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->resetMatrixToScale(F)V

    .line 904
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$5;->val$boundView:Lcom/amazon/kindle/mangaviewer/BoundImageView;

    iget v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$5;->val$matrixTranslateX:F

    iget v1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$5;->val$matrixTranslateY:F

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->translate(FF)V

    .line 905
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$5;->val$mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->setAnimationFinished()V

    .line 906
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$5;->this$0:Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;

    invoke-static {p1}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->access$000(Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 907
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$5;->this$0:Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;

    invoke-static {p1}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->access$000(Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3

    .line 917
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$5;->val$mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    iget v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$5;->val$animationTime:I

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->setAnimationStarting(JZ)V

    return-void
.end method
