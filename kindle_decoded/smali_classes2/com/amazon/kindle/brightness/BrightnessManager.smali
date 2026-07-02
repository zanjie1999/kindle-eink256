.class public Lcom/amazon/kindle/brightness/BrightnessManager;
.super Ljava/lang/Object;
.source "BrightnessManager.java"

# interfaces
.implements Lcom/amazon/kindle/brightness/IBrightnessManager;


# instance fields
.field private final lazyDeviceContext:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/application/IDeviceContext;",
            ">;"
        }
    .end annotation
.end field

.field private final settings:Lcom/amazon/kcp/application/UserSettingsController;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/UserSettingsController;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/application/UserSettingsController;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/application/IDeviceContext;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/kindle/brightness/BrightnessManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    .line 27
    iput-object p2, p0, Lcom/amazon/kindle/brightness/BrightnessManager;->lazyDeviceContext:Ldagger/Lazy;

    return-void
.end method

.method private getAdjustedBrightness(F)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 85
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const v0, 0x3f666666    # 0.9f

    mul-float p1, p1, v0

    const v0, 0x3dcccccd    # 0.1f

    add-float/2addr p1, v0

    return p1
.end method


# virtual methods
.method public applyScreenBrightness(Landroid/view/Window;)Z
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/amazon/kindle/brightness/BrightnessManager;->lazyDeviceContext:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/IDeviceContext;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IDeviceContext;->supportsBrightnessChanges()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/brightness/BrightnessManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getBrightnessMode()Lcom/amazon/kcp/reader/ui/BrightnessMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/reader/ui/BrightnessMode;->SYSTEM:Lcom/amazon/kcp/reader/ui/BrightnessMode;

    if-ne v0, v1, :cond_1

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/brightness/BrightnessManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getScreenBrightness()F

    move-result v0

    .line 48
    :goto_0
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 49
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 50
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getScreenBrightness()F
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/amazon/kindle/brightness/BrightnessManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getScreenBrightness()F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    sub-float/2addr v0, v1

    const v1, 0x3f666666    # 0.9f

    div-float/2addr v0, v1

    return v0
.end method

.method public getScreenBrightnessPercentage()I
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/brightness/BrightnessManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getScreenBrightness()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public initialize()V
    .locals 0

    return-void
.end method

.method public setScreenBrightness(F)V
    .locals 2

    .line 70
    invoke-direct {p0, p1}, Lcom/amazon/kindle/brightness/BrightnessManager;->getAdjustedBrightness(F)F

    move-result p1

    .line 71
    iget-object v0, p0, Lcom/amazon/kindle/brightness/BrightnessManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getBrightnessMode()Lcom/amazon/kcp/reader/ui/BrightnessMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/reader/ui/BrightnessMode;->USER_DEFINED:Lcom/amazon/kcp/reader/ui/BrightnessMode;

    if-eq v0, v1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/amazon/kindle/brightness/BrightnessManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->setBrightnessMode(Lcom/amazon/kcp/reader/ui/BrightnessMode;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/brightness/BrightnessManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setScreenBrightness(F)V

    return-void
.end method
