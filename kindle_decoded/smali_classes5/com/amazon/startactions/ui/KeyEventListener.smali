.class public Lcom/amazon/startactions/ui/KeyEventListener;
.super Ljava/lang/Object;
.source "KeyEventListener.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IKeyEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.startactions.ui.KeyEventListener"


# instance fields
.field private final bookId:Ljava/lang/String;

.field private contentContainer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private isRegistered:Z

.field private final overlayController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/startactions/ui/StartActionsOverlayController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/startactions/ui/StartActionsOverlayController;Ljava/lang/String;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/amazon/startactions/ui/KeyEventListener;->isRegistered:Z

    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/startactions/ui/KeyEventListener;->overlayController:Ljava/lang/ref/WeakReference;

    .line 35
    iput-object p2, p0, Lcom/amazon/startactions/ui/KeyEventListener;->bookId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/amazon/startactions/ui/KeyEventListener;->overlayController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/startactions/ui/StartActionsOverlayController;

    .line 73
    iget-object v1, p0, Lcom/amazon/startactions/ui/KeyEventListener;->contentContainer:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    if-nez v0, :cond_1

    goto :goto_1

    .line 82
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/16 v3, 0x6f

    if-ne v2, v3, :cond_3

    .line 85
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 86
    iget-object p1, p0, Lcom/amazon/startactions/ui/KeyEventListener;->bookId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->dismissOverlay(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 91
    :cond_3
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 78
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/KeyEventListener;->unregister()V

    const/4 p1, 0x0

    return p1
.end method

.method public register(Landroid/view/ViewGroup;)V
    .locals 1

    .line 45
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/startactions/ui/KeyEventListener;->contentContainer:Ljava/lang/ref/WeakReference;

    .line 46
    iget-boolean p1, p0, Lcom/amazon/startactions/ui/KeyEventListener;->isRegistered:Z

    if-nez p1, :cond_1

    .line 47
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 48
    sget-object p1, Lcom/amazon/startactions/ui/KeyEventListener;->TAG:Ljava/lang/String;

    const-string v0, "Registering StartActions KeyEvent listener"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerKeyEventListener(Lcom/amazon/kindle/krx/reader/IKeyEventListener;)V

    const/4 p1, 0x1

    .line 51
    iput-boolean p1, p0, Lcom/amazon/startactions/ui/KeyEventListener;->isRegistered:Z

    :cond_1
    return-void
.end method

.method public unregister()V
    .locals 2

    .line 59
    iget-boolean v0, p0, Lcom/amazon/startactions/ui/KeyEventListener;->isRegistered:Z

    if-eqz v0, :cond_1

    .line 60
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/amazon/startactions/ui/KeyEventListener;->TAG:Ljava/lang/String;

    const-string v1, "Unregistering StartActions KeyEvent listener"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->unregisterKeyEventListener(Lcom/amazon/kindle/krx/reader/IKeyEventListener;)V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/amazon/startactions/ui/KeyEventListener;->isRegistered:Z

    :cond_1
    return-void
.end method
