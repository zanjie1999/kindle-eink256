.class public final Lcom/amazon/kcp/application/SharedBindingsModule_GetAndroidApplicationControllerFactory;
.super Ljava/lang/Object;
.source "SharedBindingsModule_GetAndroidApplicationControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kcp/application/IAndroidApplicationController;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/amazon/kcp/application/SharedBindingsModule_GetAndroidApplicationControllerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/amazon/kcp/application/SharedBindingsModule_GetAndroidApplicationControllerFactory;

    invoke-direct {v0}, Lcom/amazon/kcp/application/SharedBindingsModule_GetAndroidApplicationControllerFactory;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/SharedBindingsModule_GetAndroidApplicationControllerFactory;->INSTANCE:Lcom/amazon/kcp/application/SharedBindingsModule_GetAndroidApplicationControllerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/amazon/kcp/application/SharedBindingsModule_GetAndroidApplicationControllerFactory;
    .locals 1

    .line 22
    sget-object v0, Lcom/amazon/kcp/application/SharedBindingsModule_GetAndroidApplicationControllerFactory;->INSTANCE:Lcom/amazon/kcp/application/SharedBindingsModule_GetAndroidApplicationControllerFactory;

    return-object v0
.end method

.method public static provideInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;
    .locals 1

    .line 18
    invoke-static {}, Lcom/amazon/kcp/application/SharedBindingsModule_GetAndroidApplicationControllerFactory;->proxyGetAndroidApplicationController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    return-object v0
.end method

.method public static proxyGetAndroidApplicationController()Lcom/amazon/kcp/application/IAndroidApplicationController;
    .locals 2

    .line 27
    invoke-static {}, Lcom/amazon/kcp/application/SharedBindingsModule;->getAndroidApplicationController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 26
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/kcp/application/IAndroidApplicationController;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/kcp/application/IAndroidApplicationController;
    .locals 1

    .line 14
    invoke-static {}, Lcom/amazon/kcp/application/SharedBindingsModule_GetAndroidApplicationControllerFactory;->provideInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/amazon/kcp/application/SharedBindingsModule_GetAndroidApplicationControllerFactory;->get()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    return-object v0
.end method
