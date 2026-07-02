.class Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$4;
.super Ljava/lang/Object;
.source "VirtualPanelHandler.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->loadNewPageInVirtualPanelMode(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;ILcom/amazon/kindle/mangaviewer/VirtualPanelGrid;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$boundView:Lcom/amazon/kindle/mangaviewer/BoundImageView;

.field final synthetic val$mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

.field final synthetic val$oldView:Lcom/amazon/kindle/mangaviewer/BoundImageView;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;Lcom/amazon/kindle/mangaviewer/BoundImageView;Lcom/amazon/kindle/mangaviewer/BoundImageView;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)V
    .locals 0

    .line 796
    iput-object p2, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$4;->val$boundView:Lcom/amazon/kindle/mangaviewer/BoundImageView;

    iput-object p3, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$4;->val$oldView:Lcom/amazon/kindle/mangaviewer/BoundImageView;

    iput-object p4, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$4;->val$mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 799
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$4;->val$boundView:Lcom/amazon/kindle/mangaviewer/BoundImageView;

    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$4;->val$oldView:Lcom/amazon/kindle/mangaviewer/BoundImageView;

    if-eq p1, v0, :cond_0

    const/16 v0, 0xff

    .line 800
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->setAnimationData(I)V

    .line 802
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$4;->val$mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->setAnimationFinished()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3

    .line 811
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$4;->val$mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->setAnimationStarting(JZ)V

    return-void
.end method
