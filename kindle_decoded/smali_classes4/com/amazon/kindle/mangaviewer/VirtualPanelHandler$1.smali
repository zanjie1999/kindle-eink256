.class Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$1;
.super Ljava/lang/Object;
.source "VirtualPanelHandler.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->animateVirtualPanelEnter(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;Lcom/amazon/kindle/mangaviewer/BoundImageView;FFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;

.field final synthetic val$boundView:Lcom/amazon/kindle/mangaviewer/BoundImageView;

.field final synthetic val$mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

.field final synthetic val$scaleTo:F

.field final synthetic val$translateX:F

.field final synthetic val$translateY:F


# direct methods
.method constructor <init>(Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;Lcom/amazon/kindle/mangaviewer/BoundImageView;FFFLcom/amazon/kindle/mangaviewer/IMangaViewPager;)V
    .locals 0

    .line 517
    iput-object p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$1;->this$0:Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;

    iput-object p2, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$1;->val$boundView:Lcom/amazon/kindle/mangaviewer/BoundImageView;

    iput p3, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$1;->val$scaleTo:F

    iput p4, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$1;->val$translateX:F

    iput p5, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$1;->val$translateY:F

    iput-object p6, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$1;->val$mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 521
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$1;->val$boundView:Lcom/amazon/kindle/mangaviewer/BoundImageView;

    iget v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$1;->val$scaleTo:F

    iget v1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$1;->val$translateX:F

    mul-float v1, v1, v0

    iget v2, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$1;->val$translateY:F

    mul-float v2, v2, v0

    invoke-virtual {p1, v0, v1, v2}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->setAnimationData(FFF)V

    .line 522
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$1;->val$mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->setAnimationFinished()V

    .line 523
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$1;->this$0:Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;

    invoke-static {p1}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->access$000(Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 524
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$1;->this$0:Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;

    invoke-static {p1}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->access$000(Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3

    .line 534
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$1;->val$mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    const-wide/16 v0, 0x1f4

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->setAnimationStarting(JZ)V

    return-void
.end method
