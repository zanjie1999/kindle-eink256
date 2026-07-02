.class public Lcom/amazon/kindle/mangaviewer/MangaTouchController;
.super Ljava/lang/Object;
.source "MangaTouchController.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private eventHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private ignoringUserEvents:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/kindle/mangaviewer/MangaTouchController;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->eventHandlers:Ljava/util/List;

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->ignoringUserEvents:Z

    return-void
.end method


# virtual methods
.method public addEventHandler(Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;)Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->eventHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public doubleTap(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 2

    .line 158
    iget-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->ignoringUserEvents:Z

    if-nez v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->eventHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;

    .line 160
    invoke-interface {v1, p1, p2}, Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;->doubleTap(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public firstPointerDownEvent(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 2

    .line 46
    iget-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->ignoringUserEvents:Z

    if-nez v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->eventHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;

    .line 48
    invoke-interface {v1, p1, p2}, Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;->firstPointerDown(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public keyDownEvent(Landroid/view/KeyEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 2

    .line 206
    iget-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->ignoringUserEvents:Z

    if-nez v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->eventHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;

    .line 208
    invoke-interface {v1, p1, p2}, Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;->keyDown(Landroid/view/KeyEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public keyUpEvent(Landroid/view/KeyEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 2

    .line 217
    iget-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->ignoringUserEvents:Z

    if-nez v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->eventHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;

    .line 219
    invoke-interface {v1, p1, p2}, Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;->keyUp(Landroid/view/KeyEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public longPress(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->eventHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;

    .line 198
    invoke-interface {v1, p1, p2}, Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;->longPress(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public moveEvent(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 2

    .line 86
    iget-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->ignoringUserEvents:Z

    if-nez v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->eventHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;

    .line 88
    invoke-interface {v1, p1, p2}, Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;->move(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public secondPointerDownEvent(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 2

    .line 66
    iget-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->ignoringUserEvents:Z

    if-nez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->eventHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;

    .line 68
    invoke-interface {v1, p1, p2}, Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;->secondPointerDown(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setIgnoringTouchEvents(Z)V
    .locals 0

    .line 233
    iput-boolean p1, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->ignoringUserEvents:Z

    return-void
.end method

.method public singleTap(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 2

    .line 140
    iget-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->ignoringUserEvents:Z

    if-nez v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->eventHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;

    .line 142
    invoke-interface {v1, p1, p2}, Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;->singleTap(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public singleUpEvent(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 2

    .line 122
    iget-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->ignoringUserEvents:Z

    if-nez v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->eventHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;

    .line 124
    invoke-interface {v1, p1, p2}, Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;->singleUp(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public swipeEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFLcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 8

    .line 180
    iget-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->ignoringUserEvents:Z

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->eventHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    .line 182
    invoke-interface/range {v2 .. v7}, Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;->swipe(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFLcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public upEvent(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 2

    .line 104
    iget-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->ignoringUserEvents:Z

    if-nez v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->eventHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;

    .line 106
    invoke-interface {v1, p1, p2}, Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;->pointerUp(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
