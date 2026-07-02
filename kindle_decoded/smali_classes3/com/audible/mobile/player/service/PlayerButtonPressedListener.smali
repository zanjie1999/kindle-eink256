.class public Lcom/audible/mobile/player/service/PlayerButtonPressedListener;
.super Lcom/audible/mobile/media/button/ButtonPressedListenerAdapter;
.source "PlayerButtonPressedListener.java"


# instance fields
.field private final lazyPlayerManager:Lcom/audible/mobile/player/LazyPlayerManager;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/player/LazyPlayerManager;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/audible/mobile/media/button/ButtonPressedListenerAdapter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/audible/mobile/player/service/PlayerButtonPressedListener;->lazyPlayerManager:Lcom/audible/mobile/player/LazyPlayerManager;

    return-void
.end method


# virtual methods
.method protected actionPause()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerButtonPressedListener;->lazyPlayerManager:Lcom/audible/mobile/player/LazyPlayerManager;

    invoke-interface {v0}, Lcom/audible/mobile/player/LazyPlayerManager;->pause()V

    return-void
.end method

.method protected actionPlay()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerButtonPressedListener;->lazyPlayerManager:Lcom/audible/mobile/player/LazyPlayerManager;

    invoke-interface {v0}, Lcom/audible/mobile/player/LazyPlayerManager;->start()V

    return-void
.end method

.method protected isPlayWhenReady()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerButtonPressedListener;->lazyPlayerManager:Lcom/audible/mobile/player/LazyPlayerManager;

    invoke-interface {v0}, Lcom/audible/mobile/player/LazyPlayerManager;->isPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public onButtonUp(Landroid/view/KeyEvent;)V
    .locals 1

    .line 27
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_2

    const/16 v0, 0x55

    if-eq p1, v0, :cond_2

    const/16 v0, 0x56

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7f

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/audible/mobile/player/service/PlayerButtonPressedListener;->actionPlay()V

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/audible/mobile/player/service/PlayerButtonPressedListener;->actionPause()V

    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {p0}, Lcom/audible/mobile/player/service/PlayerButtonPressedListener;->isPlayWhenReady()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 31
    invoke-virtual {p0}, Lcom/audible/mobile/player/service/PlayerButtonPressedListener;->actionPause()V

    goto :goto_0

    .line 33
    :cond_3
    invoke-virtual {p0}, Lcom/audible/mobile/player/service/PlayerButtonPressedListener;->actionPlay()V

    :goto_0
    return-void
.end method
