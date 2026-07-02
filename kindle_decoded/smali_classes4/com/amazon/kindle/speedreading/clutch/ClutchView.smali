.class public Lcom/amazon/kindle/speedreading/clutch/ClutchView;
.super Landroid/view/SurfaceView;
.source "ClutchView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private eventManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

.field private thread:Lcom/amazon/kindle/speedreading/clutch/ClutchThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchView;->thread:Lcom/amazon/kindle/speedreading/clutch/ClutchThread;

    .line 23
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/clutch/ClutchView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchView;->thread:Lcom/amazon/kindle/speedreading/clutch/ClutchThread;

    .line 29
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/clutch/ClutchView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchView;->thread:Lcom/amazon/kindle/speedreading/clutch/ClutchThread;

    .line 35
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/clutch/ClutchView;->initialize()V

    return-void
.end method

.method private initialize()V
    .locals 1

    .line 40
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 41
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v0, 0x1

    .line 45
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    return-void
.end method


# virtual methods
.method public getClutchControls()Lcom/amazon/kindle/speedreading/clutch/IClutchControls;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchView;->thread:Lcom/amazon/kindle/speedreading/clutch/ClutchThread;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setEventManager(Lcom/amazon/kindle/krx/events/IPubSubEventsManager;)V
    .locals 1

    .line 104
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchView;->eventManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    .line 106
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchView;->thread:Lcom/amazon/kindle/speedreading/clutch/ClutchThread;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->setEventManager(Lcom/amazon/kindle/krx/events/IPubSubEventsManager;)V

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 62
    new-instance v0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {v0, p1, v1}, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;-><init>(Landroid/view/SurfaceHolder;F)V

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchView;->thread:Lcom/amazon/kindle/speedreading/clutch/ClutchThread;

    .line 64
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchView;->eventManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->setEventManager(Lcom/amazon/kindle/krx/events/IPubSubEventsManager;)V

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchView;->thread:Lcom/amazon/kindle/speedreading/clutch/ClutchThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 81
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchView;->thread:Lcom/amazon/kindle/speedreading/clutch/ClutchThread;

    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->stopClutch()V

    :cond_0
    return-void
.end method

.method public updateColors(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchView;->thread:Lcom/amazon/kindle/speedreading/clutch/ClutchThread;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->updateColors(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/ui/ColorMode;)V

    return-void
.end method
