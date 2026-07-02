.class public final Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideManifestSerializerFactory;
.super Ljava/lang/Object;
.source "CommonDownloadModule_ProvideManifestSerializerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/download/manifest/ManifestSerializer;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideManifestSerializerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideManifestSerializerFactory;

    invoke-direct {v0}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideManifestSerializerFactory;-><init>()V

    sput-object v0, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideManifestSerializerFactory;->INSTANCE:Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideManifestSerializerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideManifestSerializerFactory;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideManifestSerializerFactory;->INSTANCE:Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideManifestSerializerFactory;

    return-object v0
.end method

.method public static provideInstance()Lcom/amazon/kindle/download/manifest/ManifestSerializer;
    .locals 1

    .line 19
    invoke-static {}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideManifestSerializerFactory;->proxyProvideManifestSerializer()Lcom/amazon/kindle/download/manifest/ManifestSerializer;

    move-result-object v0

    return-object v0
.end method

.method public static proxyProvideManifestSerializer()Lcom/amazon/kindle/download/manifest/ManifestSerializer;
    .locals 2

    .line 28
    invoke-static {}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule;->provideManifestSerializer()Lcom/amazon/kindle/download/manifest/ManifestSerializer;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 27
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/kindle/download/manifest/ManifestSerializer;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/download/manifest/ManifestSerializer;
    .locals 1

    .line 15
    invoke-static {}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideManifestSerializerFactory;->provideInstance()Lcom/amazon/kindle/download/manifest/ManifestSerializer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideManifestSerializerFactory;->get()Lcom/amazon/kindle/download/manifest/ManifestSerializer;

    move-result-object v0

    return-object v0
.end method
