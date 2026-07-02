.class public final Lcom/amazon/kcp/application/SharedBindingsModule_GetSidecarProviderRegistryFactory;
.super Ljava/lang/Object;
.source "SharedBindingsModule_GetSidecarProviderRegistryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/sidecar/ISidecarProviderRegistry;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/amazon/kcp/application/SharedBindingsModule_GetSidecarProviderRegistryFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/amazon/kcp/application/SharedBindingsModule_GetSidecarProviderRegistryFactory;

    invoke-direct {v0}, Lcom/amazon/kcp/application/SharedBindingsModule_GetSidecarProviderRegistryFactory;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/SharedBindingsModule_GetSidecarProviderRegistryFactory;->INSTANCE:Lcom/amazon/kcp/application/SharedBindingsModule_GetSidecarProviderRegistryFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/amazon/kcp/application/SharedBindingsModule_GetSidecarProviderRegistryFactory;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/kcp/application/SharedBindingsModule_GetSidecarProviderRegistryFactory;->INSTANCE:Lcom/amazon/kcp/application/SharedBindingsModule_GetSidecarProviderRegistryFactory;

    return-object v0
.end method

.method public static provideInstance()Lcom/amazon/kindle/sidecar/ISidecarProviderRegistry;
    .locals 1

    .line 19
    invoke-static {}, Lcom/amazon/kcp/application/SharedBindingsModule_GetSidecarProviderRegistryFactory;->proxyGetSidecarProviderRegistry()Lcom/amazon/kindle/sidecar/ISidecarProviderRegistry;

    move-result-object v0

    return-object v0
.end method

.method public static proxyGetSidecarProviderRegistry()Lcom/amazon/kindle/sidecar/ISidecarProviderRegistry;
    .locals 2

    .line 28
    invoke-static {}, Lcom/amazon/kcp/application/SharedBindingsModule;->getSidecarProviderRegistry()Lcom/amazon/kindle/sidecar/ISidecarProviderRegistry;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 27
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/kindle/sidecar/ISidecarProviderRegistry;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/sidecar/ISidecarProviderRegistry;
    .locals 1

    .line 15
    invoke-static {}, Lcom/amazon/kcp/application/SharedBindingsModule_GetSidecarProviderRegistryFactory;->provideInstance()Lcom/amazon/kindle/sidecar/ISidecarProviderRegistry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/amazon/kcp/application/SharedBindingsModule_GetSidecarProviderRegistryFactory;->get()Lcom/amazon/kindle/sidecar/ISidecarProviderRegistry;

    move-result-object v0

    return-object v0
.end method
