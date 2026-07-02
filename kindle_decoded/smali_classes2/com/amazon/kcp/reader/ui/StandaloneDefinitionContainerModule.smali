.class public Lcom/amazon/kcp/reader/ui/StandaloneDefinitionContainerModule;
.super Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;
.source "StandaloneDefinitionContainerModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;-><init>()V

    return-void
.end method


# virtual methods
.method public getDependentModules()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "StandaloneDefinitionContainerModule"

    return-object v0
.end method

.method public handleBookEvent(Lcom/amazon/kcp/reader/ReaderControllerEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 110
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->handleBookEvent(Lcom/amazon/kcp/reader/ReaderControllerEvent;)V

    return-void
.end method

.method public handleSyncMetadataParseEvent(Lcom/amazon/kindle/webservices/SyncMetadataParseEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 116
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->handleSyncMetadataParseEvent(Lcom/amazon/kindle/webservices/SyncMetadataParseEvent;)V

    return-void
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->initialize(Landroid/content/Context;)V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/application/ReddingApplication;

    .line 68
    invoke-virtual {p1}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    .line 70
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;->initialize(Lcom/amazon/kcp/library/ILibraryController;)V

    .line 71
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    .line 75
    new-instance v0, Lcom/amazon/android/docviewer/yj/KRIFDictionaryDocViewerFactory;

    invoke-direct {v0}, Lcom/amazon/android/docviewer/yj/KRIFDictionaryDocViewerFactory;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kcp/reader/IReaderController;->registerKindleDocViewerFactory(Lcom/amazon/android/docviewer/KindleDocViewerFactory;)V

    .line 76
    new-instance v0, Lcom/amazon/android/docviewer/mobi/MobiDictionaryDocViewerFactory;

    invoke-direct {v0}, Lcom/amazon/android/docviewer/mobi/MobiDictionaryDocViewerFactory;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kcp/reader/IReaderController;->registerKindleDocViewerFactory(Lcom/amazon/android/docviewer/KindleDocViewerFactory;)V

    return-void
.end method

.method public onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 81
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGIN:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 82
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->initializeDictionaries(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onContentDelete(Lcom/amazon/kindle/content/ContentDelete;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_DELETE"
    .end annotation

    .line 98
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->onContentDelete(Lcom/amazon/kindle/content/ContentDelete;)V

    return-void
.end method

.method public onContentUpdate(Ljava/util/Collection;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_UPDATE"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentUpdate;",
            ">;)V"
        }
    .end annotation

    .line 104
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->onContentUpdate(Ljava/util/Collection;)V

    return-void
.end method

.method public onLibraryContentAddPayload(Lcom/amazon/kindle/content/LibraryContentAddPayload;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_ADD"
    .end annotation

    .line 92
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->onLibraryContentAddPayload(Lcom/amazon/kindle/content/LibraryContentAddPayload;)V

    return-void
.end method
