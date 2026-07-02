.class Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$3;
.super Ljava/lang/Object;
.source "VirtualPanelHandler.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->beginVirtualPanelPageTransition(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;Lcom/amazon/kindle/mangaviewer/BoundImageView;ILcom/amazon/kindle/mangaviewer/VirtualPanelGrid;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;

.field final synthetic val$boundView:Lcom/amazon/kindle/mangaviewer/BoundImageView;

.field final synthetic val$grid:Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;

.field final synthetic val$mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

.field final synthetic val$newPageDirection:I


# direct methods
.method constructor <init>(Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;ILcom/amazon/kindle/mangaviewer/VirtualPanelGrid;Lcom/amazon/kindle/mangaviewer/BoundImageView;)V
    .locals 0

    .line 693
    iput-object p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$3;->this$0:Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;

    iput-object p2, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$3;->val$mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    iput p3, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$3;->val$newPageDirection:I

    iput-object p4, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$3;->val$grid:Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;

    iput-object p5, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$3;->val$boundView:Lcom/amazon/kindle/mangaviewer/BoundImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .line 696
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$3;->this$0:Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;

    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$3;->val$mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    iget v1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$3;->val$newPageDirection:I

    iget-object v2, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$3;->val$grid:Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;

    invoke-static {p1, v0, v1, v2}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->access$100(Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;ILcom/amazon/kindle/mangaviewer/VirtualPanelGrid;)V

    .line 699
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$3;->val$boundView:Lcom/amazon/kindle/mangaviewer/BoundImageView;

    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$3;->val$mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    invoke-interface {v0}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getCurrentImageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 703
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$3;->this$0:Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;

    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$3;->val$mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$3;->val$boundView:Lcom/amazon/kindle/mangaviewer/BoundImageView;

    iget-object v2, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$3;->val$grid:Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->access$200(Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;Lcom/amazon/kindle/mangaviewer/BoundImageView;Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;Z)V

    .line 704
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$3;->val$boundView:Lcom/amazon/kindle/mangaviewer/BoundImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 706
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$3;->val$mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->setAnimationFinished()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3

    .line 715
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$3;->val$mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->setAnimationStarting(JZ)V

    return-void
.end method
