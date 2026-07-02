.class public final Lcom/amazon/kcp/application/SharedBindingsModule_GetIDeviceInformationProviderFactory;
.super Ljava/lang/Object;
.source "SharedBindingsModule_GetIDeviceInformationProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kcp/application/IDeviceInformationProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/amazon/kcp/application/SharedBindingsModule_GetIDeviceInformationProviderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/amazon/kcp/application/SharedBindingsModule_GetIDeviceInformationProviderFactory;

    invoke-direct {v0}, Lcom/amazon/kcp/application/SharedBindingsModule_GetIDeviceInformationProviderFactory;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/SharedBindingsModule_GetIDeviceInformationProviderFactory;->INSTANCE:Lcom/amazon/kcp/application/SharedBindingsModule_GetIDeviceInformationProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/amazon/kcp/application/SharedBindingsModule_GetIDeviceInformationProviderFactory;
    .locals 1

    .line 22
    sget-object v0, Lcom/amazon/kcp/application/SharedBindingsModule_GetIDeviceInformationProviderFactory;->INSTANCE:Lcom/amazon/kcp/application/SharedBindingsModule_GetIDeviceInformationProviderFactory;

    return-object v0
.end method

.method public static provideInstance()Lcom/amazon/kcp/application/IDeviceInformationProvider;
    .locals 1

    .line 18
    invoke-static {}, Lcom/amazon/kcp/application/SharedBindingsModule_GetIDeviceInformationProviderFactory;->proxyGetIDeviceInformationProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v0

    return-object v0
.end method

.method public static proxyGetIDeviceInformationProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;
    .locals 2

    .line 27
    invoke-static {}, Lcom/amazon/kcp/application/SharedBindingsModule;->getIDeviceInformationProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 26
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/kcp/application/IDeviceInformationProvider;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/kcp/application/IDeviceInformationProvider;
    .locals 1

    .line 14
    invoke-static {}, Lcom/amazon/kcp/application/SharedBindingsModule_GetIDeviceInformationProviderFactory;->provideInstance()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/amazon/kcp/application/SharedBindingsModule_GetIDeviceInformationProviderFactory;->get()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v0

    return-object v0
.end method
