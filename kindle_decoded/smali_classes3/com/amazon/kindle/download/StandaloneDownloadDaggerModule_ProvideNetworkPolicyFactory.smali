.class public final Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule_ProvideNetworkPolicyFactory;
.super Ljava/lang/Object;
.source "StandaloneDownloadDaggerModule_ProvideNetworkPolicyFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/download/IDownloadNetworkingPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule_ProvideNetworkPolicyFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule_ProvideNetworkPolicyFactory;

    invoke-direct {v0}, Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule_ProvideNetworkPolicyFactory;-><init>()V

    sput-object v0, Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule_ProvideNetworkPolicyFactory;->INSTANCE:Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule_ProvideNetworkPolicyFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule_ProvideNetworkPolicyFactory;
    .locals 1

    .line 22
    sget-object v0, Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule_ProvideNetworkPolicyFactory;->INSTANCE:Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule_ProvideNetworkPolicyFactory;

    return-object v0
.end method

.method public static provideInstance()Lcom/amazon/kindle/download/IDownloadNetworkingPolicy;
    .locals 1

    .line 18
    invoke-static {}, Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule_ProvideNetworkPolicyFactory;->proxyProvideNetworkPolicy()Lcom/amazon/kindle/download/IDownloadNetworkingPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static proxyProvideNetworkPolicy()Lcom/amazon/kindle/download/IDownloadNetworkingPolicy;
    .locals 2

    .line 27
    invoke-static {}, Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule;->provideNetworkPolicy()Lcom/amazon/kindle/download/IDownloadNetworkingPolicy;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 26
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/kindle/download/IDownloadNetworkingPolicy;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/download/IDownloadNetworkingPolicy;
    .locals 1

    .line 14
    invoke-static {}, Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule_ProvideNetworkPolicyFactory;->provideInstance()Lcom/amazon/kindle/download/IDownloadNetworkingPolicy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule_ProvideNetworkPolicyFactory;->get()Lcom/amazon/kindle/download/IDownloadNetworkingPolicy;

    move-result-object v0

    return-object v0
.end method
