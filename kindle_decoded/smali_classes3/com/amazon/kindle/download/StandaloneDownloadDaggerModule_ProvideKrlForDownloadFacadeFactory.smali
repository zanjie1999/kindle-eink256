.class public final Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule_ProvideKrlForDownloadFacadeFactory;
.super Ljava/lang/Object;
.source "StandaloneDownloadDaggerModule_ProvideKrlForDownloadFacadeFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule_ProvideKrlForDownloadFacadeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule_ProvideKrlForDownloadFacadeFactory;

    invoke-direct {v0}, Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule_ProvideKrlForDownloadFacadeFactory;-><init>()V

    sput-object v0, Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule_ProvideKrlForDownloadFacadeFactory;->INSTANCE:Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule_ProvideKrlForDownloadFacadeFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule_ProvideKrlForDownloadFacadeFactory;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule_ProvideKrlForDownloadFacadeFactory;->INSTANCE:Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule_ProvideKrlForDownloadFacadeFactory;

    return-object v0
.end method

.method public static provideInstance()Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;
    .locals 1

    .line 19
    invoke-static {}, Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule_ProvideKrlForDownloadFacadeFactory;->proxyProvideKrlForDownloadFacade()Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    move-result-object v0

    return-object v0
.end method

.method public static proxyProvideKrlForDownloadFacade()Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;
    .locals 2

    .line 28
    invoke-static {}, Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule;->provideKrlForDownloadFacade()Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 27
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;
    .locals 1

    .line 15
    invoke-static {}, Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule_ProvideKrlForDownloadFacadeFactory;->provideInstance()Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule_ProvideKrlForDownloadFacadeFactory;->get()Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    move-result-object v0

    return-object v0
.end method
