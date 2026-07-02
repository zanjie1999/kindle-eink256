.class public Lcom/amazon/krf/platform/AccessibilityListener;
.super Lcom/amazon/krf/platform/SimpleNavigationListener;
.source "AccessibilityListener.java"

# interfaces
.implements Lcom/amazon/krf/platform/BookBoundaryListener;
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAccessibilityProvider:Lcom/amazon/krf/platform/AccessibilityProvider;

.field private mAccessibiliyStateEnabled:Z

.field private mBookBoundaryMP:Landroid/media/MediaPlayer;

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mPageFlipMP:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/krf/platform/AccessibilityProvider;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/amazon/krf/platform/SimpleNavigationListener;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/krf/platform/AccessibilityListener;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/amazon/krf/platform/AccessibilityListener;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 47
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 49
    :cond_0
    iput-object p2, p0, Lcom/amazon/krf/platform/AccessibilityListener;->mAccessibilityProvider:Lcom/amazon/krf/platform/AccessibilityProvider;

    .line 50
    iget-object p1, p0, Lcom/amazon/krf/platform/AccessibilityListener;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/krf/platform/AccessibilityListener;->mAccessibiliyStateEnabled:Z

    return-void
.end method

.method private playBookBoundaryAudio()V
    .locals 2

    .line 135
    iget-boolean v0, p0, Lcom/amazon/krf/platform/AccessibilityListener;->mAccessibiliyStateEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/krf/platform/AccessibilityListener;->mAccessibilityProvider:Lcom/amazon/krf/platform/AccessibilityProvider;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/amazon/krf/platform/AccessibilityListener;->mBookBoundaryMP:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/amazon/krf/platform/AccessibilityListener;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 140
    iget-object v1, p0, Lcom/amazon/krf/platform/AccessibilityListener;->mAccessibilityProvider:Lcom/amazon/krf/platform/AccessibilityProvider;

    invoke-interface {v1}, Lcom/amazon/krf/platform/AccessibilityProvider;->getBookBoundaryAudio()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/krf/platform/AccessibilityListener;->mBookBoundaryMP:Landroid/media/MediaPlayer;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/platform/AccessibilityListener;->mBookBoundaryMP:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_1
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/amazon/krf/platform/AccessibilityListener;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    return-void
.end method

.method public onAccessibilityStateChanged(Z)V
    .locals 1

    .line 61
    iput-boolean p1, p0, Lcom/amazon/krf/platform/AccessibilityListener;->mAccessibiliyStateEnabled:Z

    if-nez p1, :cond_1

    .line 64
    iget-object p1, p0, Lcom/amazon/krf/platform/AccessibilityListener;->mPageFlipMP:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 67
    iput-object v0, p0, Lcom/amazon/krf/platform/AccessibilityListener;->mPageFlipMP:Landroid/media/MediaPlayer;

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/amazon/krf/platform/AccessibilityListener;->mBookBoundaryMP:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_1

    .line 71
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 72
    iput-object v0, p0, Lcom/amazon/krf/platform/AccessibilityListener;->mBookBoundaryMP:Landroid/media/MediaPlayer;

    :cond_1
    return-void
.end method

.method public onEndOfBookSurpassed()V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/amazon/krf/platform/AccessibilityListener;->playBookBoundaryAudio()V

    return-void
.end method

.method public onPostNavigation(Lcom/amazon/krf/platform/event/NavigationEndEvent;)V
    .locals 1

    .line 85
    iget-boolean p1, p0, Lcom/amazon/krf/platform/AccessibilityListener;->mAccessibiliyStateEnabled:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/krf/platform/AccessibilityListener;->mAccessibilityProvider:Lcom/amazon/krf/platform/AccessibilityProvider;

    if-eqz p1, :cond_1

    .line 87
    iget-object p1, p0, Lcom/amazon/krf/platform/AccessibilityListener;->mPageFlipMP:Landroid/media/MediaPlayer;

    if-nez p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/amazon/krf/platform/AccessibilityListener;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/amazon/krf/platform/AccessibilityListener;->mAccessibilityProvider:Lcom/amazon/krf/platform/AccessibilityProvider;

    invoke-interface {v0}, Lcom/amazon/krf/platform/AccessibilityProvider;->getPageFlipAudio()I

    move-result v0

    invoke-static {p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/krf/platform/AccessibilityListener;->mPageFlipMP:Landroid/media/MediaPlayer;

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/amazon/krf/platform/AccessibilityListener;->mPageFlipMP:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_1

    .line 95
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    :cond_1
    return-void
.end method

.method public onStartOfBookSurpassed()V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/amazon/krf/platform/AccessibilityListener;->playBookBoundaryAudio()V

    return-void
.end method

.method public setAccessibilityProvider(Lcom/amazon/krf/platform/AccessibilityProvider;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/amazon/krf/platform/AccessibilityListener;->mAccessibilityProvider:Lcom/amazon/krf/platform/AccessibilityProvider;

    return-void
.end method
