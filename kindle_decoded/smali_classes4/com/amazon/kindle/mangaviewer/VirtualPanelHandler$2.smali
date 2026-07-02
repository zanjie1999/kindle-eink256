.class Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$2;
.super Ljava/lang/Object;
.source "VirtualPanelHandler.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->animateVirtualPanelExit(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;Lcom/amazon/kindle/mangaviewer/BoundImageView;FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;

.field final synthetic val$boundView:Lcom/amazon/kindle/mangaviewer/BoundImageView;

.field final synthetic val$mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;Lcom/amazon/kindle/mangaviewer/BoundImageView;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)V
    .locals 0

    .line 579
    iput-object p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$2;->this$0:Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;

    iput-object p2, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$2;->val$boundView:Lcom/amazon/kindle/mangaviewer/BoundImageView;

    iput-object p3, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$2;->val$mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 582
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$2;->val$boundView:Lcom/amazon/kindle/mangaviewer/BoundImageView;

    invoke-virtual {p1}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getMinScale()F

    move-result p1

    .line 583
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$2;->val$boundView:Lcom/amazon/kindle/mangaviewer/BoundImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->setAnimationData(FFF)V

    .line 584
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$2;->val$mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->setAnimationFinished()V

    .line 585
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$2;->this$0:Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;

    invoke-static {p1}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->access$000(Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 586
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$2;->this$0:Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;

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

    .line 596
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$2;->val$mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    const-wide/16 v0, 0x1f4

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->setAnimationStarting(JZ)V

    return-void
.end method
