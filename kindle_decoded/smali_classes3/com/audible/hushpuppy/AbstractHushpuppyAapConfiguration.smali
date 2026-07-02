.class public abstract Lcom/audible/hushpuppy/AbstractHushpuppyAapConfiguration;
.super Ljava/lang/Object;
.source "AbstractHushpuppyAapConfiguration.java"

# interfaces
.implements Lcom/audible/mobile/framework/Configuration;


# instance fields
.field protected logger:Lcom/audible/hushpuppy/common/logging/ILogger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/AbstractHushpuppyAapConfiguration;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method


# virtual methods
.method public final configure(Landroid/content/Context;Lcom/audible/mobile/framework/ComponentRegistry;)V
    .locals 4

    .line 50
    iget-object v0, p0, Lcom/audible/hushpuppy/AbstractHushpuppyAapConfiguration;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Calling #onBeforeConfiguration ..."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/audible/hushpuppy/AbstractHushpuppyAapConfiguration;->onBeforeConfiguration(Landroid/content/Context;Lcom/audible/mobile/framework/ComponentRegistry;)V

    .line 54
    iget-object v0, p0, Lcom/audible/hushpuppy/AbstractHushpuppyAapConfiguration;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Inject default download on wifi or wan policy"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/audible/mobile/preferences/AudibleAndroidPreferencesStore;

    invoke-direct {v0, p1}, Lcom/audible/mobile/preferences/AudibleAndroidPreferencesStore;-><init>(Landroid/content/Context;)V

    .line 56
    sget-object v1, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->DOWNLOAD_NETWORK_PREFERENCE:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    sget-object v2, Lcom/audible/mobile/preferences/DownloadPreference;->WIFI_OR_WAN:Lcom/audible/mobile/preferences/DownloadPreference;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/audible/mobile/preferences/PreferenceStore;->setString(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v1, Lcom/audible/mobile/downloader/policy/SharedPreferencesUserDownloadPreferencePolicyFactory;

    invoke-direct {v1, v0}, Lcom/audible/mobile/downloader/policy/SharedPreferencesUserDownloadPreferencePolicyFactory;-><init>(Lcom/audible/mobile/preferences/PreferenceStore;)V

    invoke-static {v1}, Lcom/audible/mobile/downloader/policy/NetworkPolicyController;->injectDefaultPolicy(Lcom/audible/mobile/downloader/policy/NetworkStatePolicyFactory;)V

    .line 60
    iget-object v0, p0, Lcom/audible/hushpuppy/AbstractHushpuppyAapConfiguration;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Inject default retry policy"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcom/audible/mobile/downloader/policy/TryNTimesPolicyFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/audible/mobile/downloader/policy/TryNTimesPolicyFactory;-><init>(I)V

    invoke-static {v0}, Lcom/audible/mobile/downloader/policy/RetryPolicyController;->injectDefaultPolicy(Lcom/audible/mobile/downloader/policy/RetryPolicyFactory;)V

    .line 63
    iget-object v0, p0, Lcom/audible/hushpuppy/AbstractHushpuppyAapConfiguration;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Setting user agent to have app information"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/audible/mobile/downloader/NetworkingDefaults;->getInstance()Lcom/audible/mobile/downloader/NetworkingDefaults;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/audible/mobile/downloader/NetworkingDefaults;->injectAppInfoIntoUserAgent(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;

    invoke-direct {v0, p1}, Lcom/audible/mobile/identity/MAPBasedIdentityManager;-><init>(Landroid/content/Context;)V

    .line 68
    iget-object v1, p0, Lcom/audible/hushpuppy/AbstractHushpuppyAapConfiguration;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Registering IdentityManager"

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 69
    const-class v1, Lcom/audible/mobile/identity/IdentityManager;

    invoke-virtual {p2, v1, v0}, Lcom/audible/mobile/framework/ComponentRegistry;->registerComponent(Ljava/lang/Class;Ljava/lang/Object;)Z

    .line 71
    iget-object v1, p0, Lcom/audible/hushpuppy/AbstractHushpuppyAapConfiguration;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Registering DownloaderFactory"

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 72
    const-class v1, Lcom/audible/mobile/downloader/factory/DownloaderFactory;

    new-instance v2, Lcom/audible/mobile/downloader/factory/HttpDownloaderFactoryImpl;

    invoke-direct {v2, v0}, Lcom/audible/mobile/downloader/factory/HttpDownloaderFactoryImpl;-><init>(Lcom/audible/mobile/identity/IdentityManager;)V

    invoke-virtual {p2, v1, v2}, Lcom/audible/mobile/framework/ComponentRegistry;->registerComponent(Ljava/lang/Class;Ljava/lang/Object;)Z

    .line 74
    iget-object v1, p0, Lcom/audible/hushpuppy/AbstractHushpuppyAapConfiguration;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Registering UriTranslator"

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 75
    const-class v1, Lcom/audible/mobile/framework/UriTranslator;

    new-instance v2, Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;

    new-instance v3, Lcom/audible/mobile/network/framework/MarketplaceUriTranslatorImpl;

    invoke-direct {v3, v0}, Lcom/audible/mobile/network/framework/MarketplaceUriTranslatorImpl;-><init>(Lcom/audible/mobile/identity/IdentityManager;)V

    invoke-direct {v2, v3}, Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;-><init>(Lcom/audible/mobile/framework/UriTranslator;)V

    invoke-virtual {p2, v1, v2}, Lcom/audible/mobile/framework/ComponentRegistry;->registerComponent(Ljava/lang/Class;Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/audible/hushpuppy/AbstractHushpuppyAapConfiguration;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Calling #onAfterConfiguration ..."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/audible/hushpuppy/AbstractHushpuppyAapConfiguration;->onAfterConfiguration(Landroid/content/Context;Lcom/audible/mobile/framework/ComponentRegistry;)V

    return-void
.end method

.method protected abstract onAfterConfiguration(Landroid/content/Context;Lcom/audible/mobile/framework/ComponentRegistry;)V
.end method

.method protected abstract onBeforeConfiguration(Landroid/content/Context;Lcom/audible/mobile/framework/ComponentRegistry;)V
.end method
