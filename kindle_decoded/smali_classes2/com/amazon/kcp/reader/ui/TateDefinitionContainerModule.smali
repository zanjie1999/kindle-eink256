.class public Lcom/amazon/kcp/reader/ui/TateDefinitionContainerModule;
.super Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;
.source "TateDefinitionContainerModule.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private onLoginEventHandler:Lcom/amazon/kindle/event/IEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/event/IEventHandler<",
            "Lcom/amazon/kindle/event/AuthenticationEventPayload;",
            ">;"
        }
    .end annotation
.end field

.field private preloadedPathAdded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/amazon/kcp/reader/ui/TateDefinitionContainerModule;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/TateDefinitionContainerModule;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/TateDefinitionContainerModule;->preloadedPathAdded:Z

    .line 118
    new-instance v0, Lcom/amazon/kcp/reader/ui/TateDefinitionContainerModule$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/TateDefinitionContainerModule$1;-><init>(Lcom/amazon/kcp/reader/ui/TateDefinitionContainerModule;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/TateDefinitionContainerModule;->onLoginEventHandler:Lcom/amazon/kindle/event/IEventHandler;

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

    const-string v0, "DefinitionContainerModule"

    return-object v0
.end method

.method public handleAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 8
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 160
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne v0, v1, :cond_2

    .line 168
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v0

    .line 171
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getUser()Ljava/lang/String;

    move-result-object p1

    .line 173
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->dictionaryList:Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->getDictionaryTitles()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 174
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->libraryService:Lcom/amazon/kindle/content/LibraryContentService;

    invoke-virtual {v3}, Lcom/amazon/kindle/content/LibraryContentService;->getUserIds()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 178
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 179
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->libraryService:Lcom/amazon/kindle/content/LibraryContentService;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v4, v6}, Lcom/amazon/kindle/content/LibraryContentService;->getContentByAsin(Ljava/lang/String;ZLjava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 185
    invoke-virtual {v5}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 186
    invoke-static {v5}, Lcom/amazon/kcp/dictionary/utils/DictionaryUtils;->isPreloadedDictionary(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 188
    invoke-virtual {v5}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v7

    .line 187
    invoke-static {v0, v7}, Lcom/amazon/kindle/io/FileSystemHelper;->isWritable(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 189
    iget-object v7, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->libraryService:Lcom/amazon/kindle/content/LibraryContentService;

    invoke-virtual {v5}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5, v4, v6}, Lcom/amazon/kindle/content/LibraryContentService;->deleteItemLocally(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public handleBookEvent(Lcom/amazon/kcp/reader/ReaderControllerEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 223
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->handleBookEvent(Lcom/amazon/kcp/reader/ReaderControllerEvent;)V

    return-void
.end method

.method public handleSyncMetadataParseEvent(Lcom/amazon/kindle/webservices/SyncMetadataParseEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 229
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->handleSyncMetadataParseEvent(Lcom/amazon/kindle/webservices/SyncMetadataParseEvent;)V

    return-void
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 3

    .line 80
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->initialize(Landroid/content/Context;)V

    .line 83
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/TateDefinitionContainerModule;->preloadedPathAdded:Z

    if-nez v0, :cond_0

    .line 84
    invoke-static {}, Lcom/amazon/kindle/scan/ScanLocalContentUtilsManager;->getInstance()Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "/mnt/sdcard/Android/data/com.amazon.kindle/files/dictionaries/"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->addLocalContentPath(Ljava/lang/String;Z)V

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/TateDefinitionContainerModule;->preloadedPathAdded:Z

    .line 89
    :cond_0
    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 90
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    .line 94
    new-instance v1, Lcom/amazon/android/docviewer/yj/KRIFDictionaryDocViewerFactory;

    invoke-direct {v1}, Lcom/amazon/android/docviewer/yj/KRIFDictionaryDocViewerFactory;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/kcp/reader/IReaderController;->registerKindleDocViewerFactory(Lcom/amazon/android/docviewer/KindleDocViewerFactory;)V

    .line 95
    new-instance v1, Lcom/amazon/android/docviewer/mobi/MobiDictionaryDocViewerFactory;

    invoke-direct {v1}, Lcom/amazon/android/docviewer/mobi/MobiDictionaryDocViewerFactory;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/kcp/reader/IReaderController;->registerKindleDocViewerFactory(Lcom/amazon/android/docviewer/KindleDocViewerFactory;)V

    .line 97
    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    .line 98
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object p1

    .line 99
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TateDefinitionContainerModule;->onLoginEventHandler:Lcom/amazon/kindle/event/IEventHandler;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/event/IEventProvider;->registerHandler(Lcom/amazon/kindle/event/IEventHandler;)V

    return-void
.end method

.method public initializeDictionaries(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x1

    .line 106
    sput-boolean v0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->shouldForceFileSystem:Z

    .line 109
    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ui/TateDefinitionContainerModule;->preloadedPathAdded:Z

    if-nez v1, :cond_0

    .line 110
    invoke-static {}, Lcom/amazon/kindle/scan/ScanLocalContentUtilsManager;->getInstance()Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "/mnt/sdcard/Android/data/com.amazon.kindle/files/dictionaries/"

    invoke-virtual {v1, v3, v2}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->addLocalContentPath(Ljava/lang/String;Z)V

    .line 112
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/TateDefinitionContainerModule;->preloadedPathAdded:Z

    .line 115
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->initializeDictionaries(Landroid/content/Context;)V

    return-void
.end method

.method protected isFirstPartyChinaUser()Z
    .locals 1

    .line 152
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isChinaUser()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onContentDelete(Lcom/amazon/kindle/content/ContentDelete;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_DELETE"
    .end annotation

    .line 211
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

    .line 217
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->onContentUpdate(Ljava/util/Collection;)V

    return-void
.end method

.method public onLibraryContentAddPayload(Lcom/amazon/kindle/content/LibraryContentAddPayload;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_ADD"
    .end annotation

    .line 205
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->onLibraryContentAddPayload(Lcom/amazon/kindle/content/LibraryContentAddPayload;)V

    return-void
.end method
