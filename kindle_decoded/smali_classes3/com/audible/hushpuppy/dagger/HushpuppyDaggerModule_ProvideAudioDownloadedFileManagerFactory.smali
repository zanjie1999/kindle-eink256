.class public final Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudioDownloadedFileManagerFactory;
.super Ljava/lang/Object;
.source "HushpuppyDaggerModule_ProvideAudioDownloadedFileManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final kindleReaderSDKProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

.field private final serviceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            ">;"
        }
    .end annotation
.end field

.field private final syncFileManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/ISyncFileManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/ISyncFileManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudioDownloadedFileManagerFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    .line 28
    iput-object p2, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudioDownloadedFileManagerFactory;->syncFileManagerProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudioDownloadedFileManagerFactory;->serviceProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p4, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudioDownloadedFileManagerFactory;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudioDownloadedFileManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/ISyncFileManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;)",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudioDownloadedFileManagerFactory;"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudioDownloadedFileManagerFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudioDownloadedFileManagerFactory;-><init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/ISyncFileManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;)",
            "Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;"
        }
    .end annotation

    .line 46
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/relationship/controller/ISyncFileManager;

    .line 47
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 48
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 44
    invoke-static {p0, p1, p2, p3}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudioDownloadedFileManagerFactory;->proxyProvideAudioDownloadedFileManager(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Lcom/audible/relationship/controller/ISyncFileManager;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideAudioDownloadedFileManager(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Lcom/audible/relationship/controller/ISyncFileManager;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;
    .locals 0

    .line 66
    invoke-virtual {p0, p1, p2, p3}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;->provideAudioDownloadedFileManager(Lcom/audible/relationship/controller/ISyncFileManager;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 65
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;
    .locals 4

    .line 35
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudioDownloadedFileManagerFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudioDownloadedFileManagerFactory;->syncFileManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudioDownloadedFileManagerFactory;->serviceProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudioDownloadedFileManagerFactory;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudioDownloadedFileManagerFactory;->provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudioDownloadedFileManagerFactory;->get()Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;

    move-result-object v0

    return-object v0
.end method
