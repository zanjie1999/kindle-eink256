.class public final Lcom/amazon/kindle/brightness/BrightnessManager_Factory;
.super Ljava/lang/Object;
.source "BrightnessManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/brightness/BrightnessManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final deviceContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IDeviceContext;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/UserSettingsController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/UserSettingsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IDeviceContext;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amazon/kindle/brightness/BrightnessManager_Factory;->settingsProvider:Ljavax/inject/Provider;

    .line 20
    iput-object p2, p0, Lcom/amazon/kindle/brightness/BrightnessManager_Factory;->deviceContextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/brightness/BrightnessManager_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/UserSettingsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IDeviceContext;",
            ">;)",
            "Lcom/amazon/kindle/brightness/BrightnessManager_Factory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/amazon/kindle/brightness/BrightnessManager_Factory;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/brightness/BrightnessManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/brightness/BrightnessManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/UserSettingsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IDeviceContext;",
            ">;)",
            "Lcom/amazon/kindle/brightness/BrightnessManager;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/amazon/kindle/brightness/BrightnessManager;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/application/UserSettingsController;

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/brightness/BrightnessManager;-><init>(Lcom/amazon/kcp/application/UserSettingsController;Ldagger/Lazy;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/brightness/BrightnessManager;
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/amazon/kindle/brightness/BrightnessManager_Factory;->settingsProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/amazon/kindle/brightness/BrightnessManager_Factory;->deviceContextProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/amazon/kindle/brightness/BrightnessManager_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/brightness/BrightnessManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/amazon/kindle/brightness/BrightnessManager_Factory;->get()Lcom/amazon/kindle/brightness/BrightnessManager;

    move-result-object v0

    return-object v0
.end method
