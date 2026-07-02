.class public final Lcom/amazon/kcp/application/SharedBindingsModule_GetUserSettingsControllerFactory;
.super Ljava/lang/Object;
.source "SharedBindingsModule_GetUserSettingsControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kcp/application/UserSettingsController;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/amazon/kcp/application/SharedBindingsModule_GetUserSettingsControllerFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/amazon/kcp/application/SharedBindingsModule_GetUserSettingsControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/amazon/kcp/application/SharedBindingsModule_GetUserSettingsControllerFactory;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/amazon/kcp/application/SharedBindingsModule_GetUserSettingsControllerFactory;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/SharedBindingsModule_GetUserSettingsControllerFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/amazon/kcp/application/UserSettingsController;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/amazon/kcp/application/UserSettingsController;"
        }
    .end annotation

    .line 23
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/amazon/kcp/application/SharedBindingsModule_GetUserSettingsControllerFactory;->proxyGetUserSettingsController(Landroid/content/Context;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p0

    return-object p0
.end method

.method public static proxyGetUserSettingsController(Landroid/content/Context;)Lcom/amazon/kcp/application/UserSettingsController;
    .locals 1

    .line 33
    invoke-static {p0}, Lcom/amazon/kcp/application/SharedBindingsModule;->getUserSettingsController(Landroid/content/Context;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 32
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/amazon/kcp/application/UserSettingsController;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/amazon/kcp/application/UserSettingsController;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/kcp/application/SharedBindingsModule_GetUserSettingsControllerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/amazon/kcp/application/SharedBindingsModule_GetUserSettingsControllerFactory;->provideInstance(Ljavax/inject/Provider;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/amazon/kcp/application/SharedBindingsModule_GetUserSettingsControllerFactory;->get()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    return-object v0
.end method
