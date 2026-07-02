.class public final Lcom/audible/hushpuppy/plugin/LibraryPlugin_MembersInjector;
.super Ljava/lang/Object;
.source "LibraryPlugin_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/audible/hushpuppy/plugin/LibraryPlugin;",
        ">;"
    }
.end annotation


# instance fields
.field private final audioDownloadHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final libraryContextualActionButtonProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/library/LibraryContextualActionButtonProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final libraryControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ILibraryController;",
            ">;"
        }
    .end annotation
.end field

.field private final libraryLeftNavProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final libraryPersistentPlayerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final storageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static injectAudioDownloadHandler(Lcom/audible/hushpuppy/plugin/LibraryPlugin;Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/LibraryPlugin;->audioDownloadHandler:Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler;

    return-void
.end method

.method public static injectLibraryContextualActionButtonProvider(Lcom/audible/hushpuppy/plugin/LibraryPlugin;Lcom/audible/hushpuppy/view/library/LibraryContextualActionButtonProvider;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/LibraryPlugin;->libraryContextualActionButtonProvider:Lcom/audible/hushpuppy/view/library/LibraryContextualActionButtonProvider;

    return-void
.end method

.method public static injectLibraryController(Lcom/audible/hushpuppy/plugin/LibraryPlugin;Lcom/audible/hushpuppy/controller/ILibraryController;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/LibraryPlugin;->libraryController:Lcom/audible/hushpuppy/controller/ILibraryController;

    return-void
.end method

.method public static injectLibraryLeftNavProvider(Lcom/audible/hushpuppy/plugin/LibraryPlugin;Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/LibraryPlugin;->libraryLeftNavProvider:Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;

    return-void
.end method

.method public static injectLibraryPersistentPlayerProvider(Lcom/audible/hushpuppy/plugin/LibraryPlugin;Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/LibraryPlugin;->libraryPersistentPlayerProvider:Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;

    return-void
.end method

.method public static injectStorage(Lcom/audible/hushpuppy/plugin/LibraryPlugin;Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/LibraryPlugin;->storage:Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

    return-void
.end method
