.class public Lcom/amazon/kindle/krx/application/BaseApplicationManager;
.super Ljava/lang/Object;
.source "BaseApplicationManager.java"

# interfaces
.implements Lcom/amazon/kindle/krx/application/IApplicationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;
    .locals 1

    .line 36
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAlertDialogManager()Lcom/amazon/kindle/krx/application/IAlertDialogManager;
    .locals 1

    .line 145
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAppType()Lcom/amazon/kindle/krx/application/AppType;
    .locals 1

    .line 205
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAssociateTag()Ljava/lang/String;
    .locals 1

    .line 151
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAsyncTaskExecutor()Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;
    .locals 1

    .line 99
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getContentSidecarDirectory(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 67
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getDbFriendlySidecarDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 80
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getDebugMenuPages(Landroid/content/Context;)Ljava/util/Collection;
    .locals 0
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

    .line 188
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;
    .locals 1

    .line 42
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getDexClassLoader()Lcom/amazon/kindle/krx/application/IDexClassLoader;
    .locals 1

    .line 139
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getDownloadManager()Lcom/amazon/kindle/krx/download/IKRXDownloadManager;
    .locals 1

    .line 61
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFilesStorageDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 87
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getFilteredBookFiles(Ljava/io/FileFilter;)[Ljava/io/File;
    .locals 0

    .line 93
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getKindleVersionNumberCode()J
    .locals 1

    .line 48
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNotificationHandler(Ljava/lang/String;)Lcom/amazon/kindle/krx/notifications/INotificationHandler;
    .locals 0

    .line 235
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getPluginServicesRepository()Lcom/amazon/kindle/krx/pluginservices/IPluginServicesRepository;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreferredScheme()Ljava/lang/String;
    .locals 1

    .line 157
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSettingsControlManager()Lcom/amazon/kindle/krx/settings/ISettingsControlManager;
    .locals 1

    .line 105
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSidecarDirectoryForBook(Ljava/lang/String;Z)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 73
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getStartupProviderRegistry(Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;)Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .locals 0
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

    .line 194
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getWebViewClient(Landroid/app/Activity;)Landroid/webkit/WebViewClient;
    .locals 0

    .line 122
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getWebViewClient(Landroid/app/Activity;Lcom/amazon/kindle/krx/application/MAPWebViewClientCallback;)Landroid/webkit/WebViewClient;
    .locals 0

    .line 127
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public initAmazonWebView()Z
    .locals 1

    .line 117
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isDownloadNotificationsEnabled()Z
    .locals 1

    .line 163
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isEarlyAccessBuild()Z
    .locals 1

    .line 241
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z
    .locals 0

    .line 223
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public performSync(Lcom/amazon/kindle/krx/application/SyncType;)V
    .locals 0

    .line 111
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 182
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerIntentListener(Lcom/amazon/kindle/krx/system/IBroadcastListener;Lcom/amazon/kindle/krx/system/IntentType;)V
    .locals 0

    .line 199
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerNotificationHandler(Ljava/lang/String;Lcom/amazon/kindle/krx/notifications/INotificationHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/krx/notifications/NotificationHandlerRegistrationException;
        }
    .end annotation

    .line 229
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerSharedPreferencesForBackup(Ljava/lang/String;)V
    .locals 0

    .line 211
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerStartupProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .locals 0
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

    .line 170
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerStartupProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;)V
    .locals 0
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

    .line 176
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public showDialog(Lcom/amazon/kindle/krx/application/KRXDialogType;Ljava/lang/String;)Z
    .locals 0

    .line 133
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
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

    .line 55
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
