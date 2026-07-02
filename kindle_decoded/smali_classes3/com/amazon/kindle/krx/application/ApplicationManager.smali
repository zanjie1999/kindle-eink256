.class public Lcom/amazon/kindle/krx/application/ApplicationManager;
.super Lcom/amazon/kindle/krx/application/BaseApplicationManager;
.source "ApplicationManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;


# instance fields
.field private alertDialogManager:Lcom/amazon/kindle/krx/application/IAlertDialogManager;

.field private authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

.field private booksStartupProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/startup/IStartupListener;",
            "Lcom/amazon/kindle/krx/startup/StartupType;",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/startup/IStartupListener;",
            "Lcom/amazon/kindle/krx/startup/StartupType;",
            ">;>;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private debugMenuProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;",
            "Landroid/content/Context;",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;",
            "Landroid/content/Context;",
            ">;>;"
        }
    .end annotation
.end field

.field private deviceInfo:Lcom/amazon/kindle/krx/application/IDeviceInformation;

.field private dexClassLoader:Lcom/amazon/kindle/krx/application/IDexClassLoader;

.field private downloadService:Lcom/amazon/kindle/services/download/IDownloadService;

.field private factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

.field private fullStartupProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/startup/IStartupListener;",
            "Lcom/amazon/kindle/krx/startup/StartupType;",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/startup/IStartupListener;",
            "Lcom/amazon/kindle/krx/startup/StartupType;",
            ">;>;"
        }
    .end annotation
.end field

.field private intentListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/krx/system/IntentType;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/krx/system/IBroadcastListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private kRXDownloadManager:Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

.field private newsstandStartupProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/startup/IStartupListener;",
            "Lcom/amazon/kindle/krx/startup/StartupType;",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/startup/IStartupListener;",
            "Lcom/amazon/kindle/krx/startup/StartupType;",
            ">;>;"
        }
    .end annotation
.end field

.field private notificationHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/notifications/INotificationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private pathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;

.field private pluginServicesRepository:Lcom/amazon/kindle/krx/pluginservices/IPluginServicesRepository;

.field private settingsManager:Lcom/amazon/kindle/krx/settings/ISettingsControlManager;

.field private syncService:Lcom/amazon/kindle/sync/SynchronizationManager;

.field private taskExecutor:Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

.field private userAccount:Lcom/amazon/kindle/krx/application/IUserAccount;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 81
    const-class v0, Lcom/amazon/kindle/krx/application/ApplicationManager;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kindle/krx/application/ApplicationManager;->TAG:Ljava/lang/String;

    .line 108
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/application/ApplicationManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/sync/SynchronizationManager;Lcom/amazon/kindle/services/download/IDownloadService;Lcom/amazon/kindle/io/IPathDescriptor;Lcom/amazon/kcp/application/IKindleObjectFactory;)V
    .locals 1

    .line 113
    invoke-direct {p0}, Lcom/amazon/kindle/krx/application/BaseApplicationManager;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->kRXDownloadManager:Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    .line 90
    iput-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->settingsManager:Lcom/amazon/kindle/krx/settings/ISettingsControlManager;

    .line 99
    iput-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->pluginServicesRepository:Lcom/amazon/kindle/krx/pluginservices/IPluginServicesRepository;

    .line 114
    iput-object p1, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->context:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    .line 116
    iput-object p5, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->pathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;

    .line 117
    iput-object p3, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->syncService:Lcom/amazon/kindle/sync/SynchronizationManager;

    .line 118
    iput-object p4, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->downloadService:Lcom/amazon/kindle/services/download/IDownloadService;

    .line 119
    iput-object p6, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    .line 120
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 121
    new-instance p1, Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;

    invoke-direct {p1}, Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->booksStartupProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    .line 122
    new-instance p1, Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;

    invoke-direct {p1}, Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->newsstandStartupProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    .line 123
    new-instance p1, Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;

    invoke-direct {p1}, Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->fullStartupProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    .line 124
    new-instance p1, Lcom/amazon/kindle/krx/providers/ProviderRegistry;

    invoke-direct {p1}, Lcom/amazon/kindle/krx/providers/ProviderRegistry;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->debugMenuProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    return-void
.end method


# virtual methods
.method public getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->userAccount:Lcom/amazon/kindle/krx/application/IUserAccount;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/amazon/kindle/krx/application/UserAccount;

    iget-object v1, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/application/UserAccount;-><init>(Lcom/amazon/kcp/application/IAuthenticationManager;)V

    iput-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->userAccount:Lcom/amazon/kindle/krx/application/IUserAccount;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->userAccount:Lcom/amazon/kindle/krx/application/IUserAccount;

    return-object v0
.end method

.method public getAlertDialogManager()Lcom/amazon/kindle/krx/application/IAlertDialogManager;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->alertDialogManager:Lcom/amazon/kindle/krx/application/IAlertDialogManager;

    if-nez v0, :cond_0

    .line 346
    new-instance v0, Lcom/amazon/kindle/krx/application/AlertDialogManager;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/application/AlertDialogManager;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->alertDialogManager:Lcom/amazon/kindle/krx/application/IAlertDialogManager;

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->alertDialogManager:Lcom/amazon/kindle/krx/application/IAlertDialogManager;

    return-object v0
.end method

.method public getAppType()Lcom/amazon/kindle/krx/application/AppType;
    .locals 1

    .line 416
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->getAppType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/krx/application/AppType;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/application/AppType;

    move-result-object v0

    return-object v0
.end method

.method public getAssociateTag()Ljava/lang/String;
    .locals 1

    .line 354
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAssociateInformationProvider()Lcom/amazon/kcp/application/IAssociateInformationProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAssociateInformationProvider;->getAssociateTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsyncTaskExecutor()Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->taskExecutor:Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Lcom/amazon/kindle/krx/application/AsyncTaskExecutor;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/application/AsyncTaskExecutor;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->taskExecutor:Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->taskExecutor:Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    return-object v0
.end method

.method public getContentSidecarDirectory(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 187
    invoke-static {p1}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    .line 188
    iget-object p2, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->pathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/io/IPathDescriptor;->getBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDbFriendlySidecarDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 229
    invoke-static {p1}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->pathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/io/IPathDescriptor;->getDbFriendlySidecarDirectory(Lcom/amazon/kindle/model/content/IBookID;)Ljava/io/File;

    move-result-object p1

    return-object p1

    .line 231
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid bookId"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDebugMenuPages(Landroid/content/Context;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;",
            ">;"
        }
    .end annotation

    .line 201
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->debugMenuProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->getAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->deviceInfo:Lcom/amazon/kindle/krx/application/IDeviceInformation;

    if-nez v0, :cond_0

    .line 140
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDeviceInformation(Lcom/amazon/kcp/application/IAuthenticationManager;)Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->deviceInfo:Lcom/amazon/kindle/krx/application/IDeviceInformation;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->deviceInfo:Lcom/amazon/kindle/krx/application/IDeviceInformation;

    return-object v0
.end method

.method public getDexClassLoader()Lcom/amazon/kindle/krx/application/IDexClassLoader;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->dexClassLoader:Lcom/amazon/kindle/krx/application/IDexClassLoader;

    if-nez v0, :cond_0

    .line 337
    new-instance v0, Lcom/amazon/kindle/krx/application/KrxDexClassLoader;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/application/KrxDexClassLoader;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->dexClassLoader:Lcom/amazon/kindle/krx/application/IDexClassLoader;

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->dexClassLoader:Lcom/amazon/kindle/krx/application/IDexClassLoader;

    return-object v0
.end method

.method public getDownloadManager()Lcom/amazon/kindle/krx/download/IKRXDownloadManager;
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->kRXDownloadManager:Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXDownloadManager;

    iget-object v1, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->context:Landroid/content/Context;

    .line 178
    invoke-static {v1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->downloadService:Lcom/amazon/kindle/services/download/IDownloadService;

    invoke-direct {v0, v1, p0, v2}, Lcom/amazon/kindle/krx/download/KRXDownloadManager;-><init>(Lcom/amazon/kcp/application/IKindleObjectFactory;Lcom/amazon/kindle/krx/application/IApplicationManager;Lcom/amazon/kindle/services/download/IDownloadService;)V

    iput-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->kRXDownloadManager:Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->kRXDownloadManager:Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    return-object v0
.end method

.method public getFilesStorageDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 244
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->pathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;

    invoke-interface {v1}, Lcom/amazon/kindle/io/IPathDescriptor;->getBooksDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 245
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "subDirectory cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFilteredBookFiles(Ljava/io/FileFilter;)[Ljava/io/File;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->pathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/io/IPathDescriptor;->getFilteredBookFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getKindleVersionNumberCode()J
    .locals 2

    .line 147
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getInternalVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNotificationHandler(Ljava/lang/String;)Lcom/amazon/kindle/krx/notifications/INotificationHandler;
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->notificationHandlerMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 533
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/notifications/INotificationHandler;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPluginServicesRepository()Lcom/amazon/kindle/krx/pluginservices/IPluginServicesRepository;
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->pluginServicesRepository:Lcom/amazon/kindle/krx/pluginservices/IPluginServicesRepository;

    if-nez v0, :cond_0

    .line 483
    new-instance v0, Lcom/amazon/kindle/krx/pluginservices/PluginServicesRepository;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/pluginservices/PluginServicesRepository;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->pluginServicesRepository:Lcom/amazon/kindle/krx/pluginservices/IPluginServicesRepository;

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->pluginServicesRepository:Lcom/amazon/kindle/krx/pluginservices/IPluginServicesRepository;

    return-object v0
.end method

.method public getPreferredScheme()Ljava/lang/String;
    .locals 1

    .line 368
    invoke-static {}, Lcom/amazon/kcp/application/KindleProtocol;->getPreferredScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSettingsControlManager()Lcom/amazon/kindle/krx/settings/ISettingsControlManager;
    .locals 1

    .line 265
    new-instance v0, Lcom/amazon/kindle/krx/application/ApplicationManager$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/krx/application/ApplicationManager$1;-><init>(Lcom/amazon/kindle/krx/application/ApplicationManager;)V

    return-object v0
.end method

.method public getSidecarDirectoryForBook(Ljava/lang/String;Z)Ljava/io/File;
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 211
    invoke-static {p1}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 216
    instance-of p2, p1, Lcom/amazon/kindle/model/content/SideloadBookID;

    if-eqz p2, :cond_0

    .line 219
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->pathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/amazon/kindle/io/IPathDescriptor;->getDocumentPath(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 222
    :cond_0
    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->pathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/io/IPathDescriptor;->getBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 213
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid Book Id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getStartupProviderRegistry(Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;)Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;",
            ")",
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/startup/IStartupListener;",
            "Lcom/amazon/kindle/krx/startup/StartupType;",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/startup/IStartupListener;",
            "Lcom/amazon/kindle/krx/startup/StartupType;",
            ">;>;"
        }
    .end annotation

    .line 403
    sget-object v0, Lcom/amazon/kindle/krx/application/ApplicationManager$2;->$SwitchMap$com$amazon$kindle$krx$ui$ILibraryUIManager$LibraryMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 410
    iget-object p1, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->fullStartupProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    return-object p1

    .line 407
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->newsstandStartupProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    return-object p1

    .line 405
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->booksStartupProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    return-object p1
.end method

.method public getWebViewClient(Landroid/app/Activity;)Landroid/webkit/WebViewClient;
    .locals 1

    const/4 v0, 0x0

    .line 157
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/krx/application/ApplicationManager;->getWebViewClient(Landroid/app/Activity;Lcom/amazon/kindle/krx/application/MAPWebViewClientCallback;)Landroid/webkit/WebViewClient;

    move-result-object p1

    return-object p1
.end method

.method public getWebViewClient(Landroid/app/Activity;Lcom/amazon/kindle/krx/application/MAPWebViewClientCallback;)Landroid/webkit/WebViewClient;
    .locals 1

    .line 162
    new-instance v0, Lcom/amazon/kindle/krx/application/MAPWebViewClientWithCallback;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kindle/krx/application/MAPWebViewClientWithCallback;-><init>(Landroid/app/Activity;Lcom/amazon/kindle/krx/application/MAPWebViewClientCallback;)V

    return-object v0
.end method

.method public initAmazonWebView()Z
    .locals 1

    .line 152
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAWVFactory()Lcom/amazon/android/webkit/AmazonWebKitFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDownloadNotificationsEnabled()Z
    .locals 1

    .line 373
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isDownloadNotificationsEnabled()Z

    move-result v0

    return v0
.end method

.method public isEarlyAccessBuild()Z
    .locals 1

    .line 548
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEarlyAccessBuild()Z

    move-result v0

    return v0
.end method

.method public isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z
    .locals 2

    .line 491
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v0

    .line 492
    sget-object v1, Lcom/amazon/kindle/krx/application/ApplicationManager$2;->$SwitchMap$com$amazon$kindle$krx$application$ApplicationFeature:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    .line 511
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempted to detect unrecognized feature."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 509
    :pswitch_0
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNewtronNotebookAdditionEnabled()Z

    move-result p1

    return p1

    .line 504
    :pswitch_1
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNewtronTOCEnabled()Z

    move-result p1

    return p1

    .line 502
    :pswitch_2
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInPlugin()Z

    move-result p1

    return p1

    .line 500
    :pswitch_3
    invoke-static {v0}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapEndActionsExpandoEnabled(Lcom/amazon/kcp/application/Marketplace;)Z

    move-result p1

    return p1

    .line 498
    :pswitch_4
    invoke-static {v0}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapEndActionsNISEnabled(Lcom/amazon/kcp/application/Marketplace;)Z

    move-result p1

    return p1

    .line 496
    :pswitch_5
    invoke-static {}, Lcom/amazon/kindle/autoshelf/AutoShelfUtils;->isIsAutoShelfFeatureEnabled()Z

    move-result p1

    return p1

    .line 494
    :pswitch_6
    invoke-static {}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->isNonLinearNavigationEnabled()Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onIntentReceived(Lcom/amazon/android/system/IntentEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    if-eqz p1, :cond_2

    .line 459
    invoke-virtual {p1}, Lcom/amazon/android/system/IntentEvent;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 460
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/krx/system/IntentType;->getIntentTypeFromAction(Ljava/lang/String;)Lcom/amazon/kindle/krx/system/IntentType;

    move-result-object v0

    .line 461
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 465
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->intentListeners:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 466
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 468
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " receiver(s) listening for this intent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 472
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/system/IBroadcastListener;

    .line 473
    invoke-interface {v1, p1}, Lcom/amazon/kindle/krx/system/IBroadcastListener;->onReceiveIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onTokenFetchedEvent(Lcom/amazon/kindle/services/authentication/TokenFetchedEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 359
    invoke-virtual {p1}, Lcom/amazon/kindle/services/authentication/TokenFetchedEvent;->getKey()Lcom/amazon/kindle/services/authentication/TokenKey;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->COR:Lcom/amazon/kindle/services/authentication/TokenKey;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/services/authentication/TokenFetchedEvent;->getKey()Lcom/amazon/kindle/services/authentication/TokenKey;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    if-ne v0, v1, :cond_1

    .line 360
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/application/ApplicationManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kindle/krx/events/PFMCORChangedEvent;

    invoke-virtual {p1}, Lcom/amazon/kindle/services/authentication/TokenFetchedEvent;->getAccount()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/amazon/kindle/krx/events/PFMCORChangedEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_1
    return-void
.end method

.method public performSync(Lcom/amazon/kindle/krx/application/SyncType;)V
    .locals 13

    .line 291
    sget-object v0, Lcom/amazon/kindle/krx/application/ApplicationManager$2;->$SwitchMap$com$amazon$kindle$krx$application$SyncType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    .line 303
    :cond_0
    new-instance p1, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->UPLOAD_JOURNAL:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/model/content/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/foundation/internal/IBooleanCallback;)V

    goto :goto_0

    .line 298
    :cond_1
    new-instance p1, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v8, Lcom/amazon/kcp/application/sync/internal/SyncType;->TODO_SYNC:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, p1

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/model/content/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/foundation/internal/IBooleanCallback;)V

    goto :goto_0

    .line 293
    :cond_2
    new-instance p1, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncType;->SYNCMETADATA_ONLY:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/model/content/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/foundation/internal/IBooleanCallback;)V

    .line 309
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->syncService:Lcom/amazon/kindle/sync/SynchronizationManager;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/sync/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    return-void
.end method

.method public registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 194
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->debugMenuProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->register(Lcom/amazon/kindle/krx/providers/IProvider;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized registerIntentListener(Lcom/amazon/kindle/krx/system/IBroadcastListener;Lcom/amazon/kindle/krx/system/IntentType;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 423
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->intentListeners:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 424
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->intentListeners:Ljava/util/Map;

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->intentListeners:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_1

    .line 430
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 431
    iget-object v1, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->intentListeners:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 435
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 438
    :cond_2
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized registerNotificationHandler(Ljava/lang/String;Lcom/amazon/kindle/krx/notifications/INotificationHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/krx/notifications/NotificationHandlerRegistrationException;
        }
    .end annotation

    monitor-enter p0

    .line 517
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->notificationHandlerMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 518
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->notificationHandlerMap:Ljava/util/Map;

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->notificationHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->notificationHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    monitor-exit p0

    return-void

    .line 523
    :cond_1
    :try_start_1
    new-instance p2, Lcom/amazon/kindle/krx/notifications/NotificationHandlerRegistrationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot register another handler for this notificationType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazon/kindle/krx/notifications/NotificationHandlerRegistrationException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerSharedPreferencesForBackup(Ljava/lang/String;)V
    .locals 1

    .line 443
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    invoke-static {p1}, Lcom/amazon/kindle/persistence/KindleBackupAgentHelper;->registerSharedPreferencesForBackup(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public registerStartupProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/startup/IStartupListener;",
            "Lcom/amazon/kindle/krx/startup/StartupType;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 381
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->fullStartupProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->register(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 382
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->booksStartupProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->register(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 383
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->newsstandStartupProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->register(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method public registerStartupProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/startup/IStartupListener;",
            "Lcom/amazon/kindle/krx/startup/StartupType;",
            ">;",
            "Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;",
            ")V"
        }
    .end annotation

    .line 388
    sget-object v0, Lcom/amazon/kindle/krx/application/ApplicationManager$2;->$SwitchMap$com$amazon$kindle$krx$ui$ILibraryUIManager$LibraryMode:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 397
    iget-object p2, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->fullStartupProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->register(Lcom/amazon/kindle/krx/providers/IProvider;)V

    goto :goto_0

    .line 393
    :cond_0
    iget-object p2, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->newsstandStartupProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->register(Lcom/amazon/kindle/krx/providers/IProvider;)V

    goto :goto_0

    .line 390
    :cond_1
    iget-object p2, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->booksStartupProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->register(Lcom/amazon/kindle/krx/providers/IProvider;)V

    :goto_0
    return-void
.end method

.method public showDialog(Lcom/amazon/kindle/krx/application/KRXDialogType;Ljava/lang/String;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 318
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/application/KRXDialogType;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/application/KRXDialogType;

    if-ne p1, v0, :cond_2

    .line 319
    iget-object p1, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    const-string v0, "ConnectionError"

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadErrorActivityClass()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 320
    iget-object p2, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/amazon/kcp/redding/AlertActivity;->createAlertIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x40000000    # 2.0f

    .line 321
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 322
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x8000000

    .line 323
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 324
    iget-object p2, p0, Lcom/amazon/kindle/krx/application/ApplicationManager;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 326
    :cond_1
    sget-object p1, Lcom/amazon/kindle/krx/application/ApplicationManager;->TAG:Ljava/lang/String;

    const-string v1, "factory was null or factory.getDownloadErrorActivityClass() was null in KRX ApplicationManager. Using custom dialog"

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Lcom/amazon/kcp/application/IUIMessaging;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public signRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 169
    sget-object p1, Lcom/amazon/kindle/krx/application/ApplicationManager;->TAG:Ljava/lang/String;

    const-string p2, "This is no longer necessary, request will be signed automatically"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-object p4
.end method
