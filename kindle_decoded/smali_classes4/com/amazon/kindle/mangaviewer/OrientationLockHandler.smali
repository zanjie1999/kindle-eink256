.class public Lcom/amazon/kindle/mangaviewer/OrientationLockHandler;
.super Lcom/amazon/kindle/mangaviewer/SimpleTouchEventHandler;
.source "OrientationLockHandler.java"


# instance fields
.field private orientationLockManager:Lcom/amazon/kcp/reader/ui/IOrientationLockManager;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/ui/IOrientationLockManager;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/amazon/kindle/mangaviewer/SimpleTouchEventHandler;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amazon/kindle/mangaviewer/OrientationLockHandler;->orientationLockManager:Lcom/amazon/kcp/reader/ui/IOrientationLockManager;

    return-void
.end method


# virtual methods
.method public singleTap(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 1

    .line 22
    iget-object p2, p0, Lcom/amazon/kindle/mangaviewer/OrientationLockHandler;->orientationLockManager:Lcom/amazon/kcp/reader/ui/IOrientationLockManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-interface {p2, v0, p1}, Lcom/amazon/kcp/reader/ui/IOrientationLockManager;->isPointInOrientationLock(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 23
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/OrientationLockHandler;->orientationLockManager:Lcom/amazon/kcp/reader/ui/IOrientationLockManager;

    invoke-interface {p1}, Lcom/amazon/kcp/reader/ui/IOrientationLockManager;->onOrientationLockClick()Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
