.class public interface abstract Lcom/amazon/kindle/krx/application/IApplicationManager;
.super Ljava/lang/Object;
.source "IApplicationManager.java"


# static fields
.field public static final ADP_AUTH_TOKEN:Ljava/lang/String; = "X-ADP-Authentication-Token"

.field public static final ADP_AUTH_TOKEN_DIGEST:Ljava/lang/String; = "X-ADP-Request-Digest"


# virtual methods
.method public abstract getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;
.end method

.method public abstract getAlertDialogManager()Lcom/amazon/kindle/krx/application/IAlertDialogManager;
.end method

.method public abstract getAppType()Lcom/amazon/kindle/krx/application/AppType;
.end method

.method public abstract getAssociateTag()Ljava/lang/String;
.end method

.method public abstract getAsyncTaskExecutor()Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;
.end method

.method public abstract getContentSidecarDirectory(Ljava/lang/String;Z)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getDbFriendlySidecarDirectory(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getDebugMenuPages(Landroid/content/Context;)Ljava/util/Collection;
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
.end method

.method public abstract getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;
.end method

.method public abstract getDexClassLoader()Lcom/amazon/kindle/krx/application/IDexClassLoader;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getDownloadManager()Lcom/amazon/kindle/krx/download/IKRXDownloadManager;
.end method

.method public abstract getFilesStorageDirectory(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getFilteredBookFiles(Ljava/io/FileFilter;)[Ljava/io/File;
.end method

.method public abstract getKindleVersionNumberCode()J
.end method

.method public abstract getNotificationHandler(Ljava/lang/String;)Lcom/amazon/kindle/krx/notifications/INotificationHandler;
.end method

.method public abstract getPluginServicesRepository()Lcom/amazon/kindle/krx/pluginservices/IPluginServicesRepository;
.end method

.method public abstract getPreferredScheme()Ljava/lang/String;
.end method

.method public abstract getSettingsControlManager()Lcom/amazon/kindle/krx/settings/ISettingsControlManager;
.end method

.method public abstract getSidecarDirectoryForBook(Ljava/lang/String;Z)Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract getStartupProviderRegistry(Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;)Lcom/amazon/kindle/krx/providers/IProviderRegistry;
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
.end method

.method public abstract getWebViewClient(Landroid/app/Activity;)Landroid/webkit/WebViewClient;
.end method

.method public abstract getWebViewClient(Landroid/app/Activity;Lcom/amazon/kindle/krx/application/MAPWebViewClientCallback;)Landroid/webkit/WebViewClient;
.end method

.method public abstract initAmazonWebView()Z
.end method

.method public abstract isDownloadNotificationsEnabled()Z
.end method

.method public abstract isEarlyAccessBuild()Z
.end method

.method public abstract isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z
.end method

.method public abstract performSync(Lcom/amazon/kindle/krx/application/SyncType;)V
.end method

.method public abstract registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerIntentListener(Lcom/amazon/kindle/krx/system/IBroadcastListener;Lcom/amazon/kindle/krx/system/IntentType;)V
.end method

.method public abstract registerNotificationHandler(Ljava/lang/String;Lcom/amazon/kindle/krx/notifications/INotificationHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/krx/notifications/NotificationHandlerRegistrationException;
        }
    .end annotation
.end method

.method public abstract registerSharedPreferencesForBackup(Ljava/lang/String;)V
.end method

.method public abstract registerStartupProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
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
.end method

.method public abstract registerStartupProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;)V
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
.end method

.method public abstract showDialog(Lcom/amazon/kindle/krx/application/KRXDialogType;Ljava/lang/String;)Z
.end method

.method public abstract signRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
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
.end method
