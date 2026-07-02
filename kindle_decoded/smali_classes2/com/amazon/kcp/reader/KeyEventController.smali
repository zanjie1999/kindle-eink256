.class public Lcom/amazon/kcp/reader/KeyEventController;
.super Ljava/lang/Object;
.source "KeyEventController.java"


# instance fields
.field private keyEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/reader/IKeyEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/KeyEventController;->keyEventListeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public dispatchKeyEventToListeners(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/amazon/kcp/reader/KeyEventController;->keyEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/reader/IKeyEventListener;

    if-eqz v2, :cond_0

    .line 48
    invoke-interface {v2, p1}, Lcom/amazon/kindle/krx/reader/IKeyEventListener;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public registerKeyEventListener(Lcom/amazon/kindle/krx/reader/IKeyEventListener;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/kcp/reader/KeyEventController;->keyEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterKeyEventListener(Lcom/amazon/kindle/krx/reader/IKeyEventListener;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/kcp/reader/KeyEventController;->keyEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
