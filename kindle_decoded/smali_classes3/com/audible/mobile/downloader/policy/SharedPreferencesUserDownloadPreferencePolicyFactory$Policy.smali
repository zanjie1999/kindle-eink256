.class public Lcom/audible/mobile/downloader/policy/SharedPreferencesUserDownloadPreferencePolicyFactory$Policy;
.super Ljava/lang/Object;
.source "SharedPreferencesUserDownloadPreferencePolicyFactory.java"

# interfaces
.implements Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/downloader/policy/SharedPreferencesUserDownloadPreferencePolicyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Policy"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final transient cMgr:Landroid/net/ConnectivityManager;

.field private final transient preferences:Lcom/audible/mobile/preferences/PreferenceStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/preferences/PreferenceStore<",
            "Lcom/audible/mobile/preferences/AudiblePreferenceKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager;Lcom/audible/mobile/preferences/PreferenceStore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/ConnectivityManager;",
            "Lcom/audible/mobile/preferences/PreferenceStore<",
            "Lcom/audible/mobile/preferences/AudiblePreferenceKey;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/audible/mobile/downloader/policy/SharedPreferencesUserDownloadPreferencePolicyFactory$Policy;->cMgr:Landroid/net/ConnectivityManager;

    .line 47
    iput-object p2, p0, Lcom/audible/mobile/downloader/policy/SharedPreferencesUserDownloadPreferencePolicyFactory$Policy;->preferences:Lcom/audible/mobile/preferences/PreferenceStore;

    return-void
.end method

.method private isWAN(Landroid/net/NetworkInfo;)Z
    .locals 0

    .line 86
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isWifi(Landroid/net/NetworkInfo;)Z
    .locals 1

    .line 81
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 97
    invoke-static {}, Lcom/audible/mobile/downloader/policy/NetworkPolicyController;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "NetworkPolicyController was not prepopulated with the app context!"

    .line 98
    invoke-static {v0, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    new-instance v1, Lcom/audible/mobile/preferences/AudibleAndroidPreferencesStore;

    invoke-direct {v1, v0}, Lcom/audible/mobile/preferences/AudibleAndroidPreferencesStore;-><init>(Landroid/content/Context;)V

    .line 102
    new-instance v2, Lcom/audible/mobile/downloader/policy/SharedPreferencesUserDownloadPreferencePolicyFactory$Policy;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-direct {v2, v0, v1}, Lcom/audible/mobile/downloader/policy/SharedPreferencesUserDownloadPreferencePolicyFactory$Policy;-><init>(Landroid/net/ConnectivityManager;Lcom/audible/mobile/preferences/PreferenceStore;)V

    return-object v2
.end method


# virtual methods
.method public canDownload()Z
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/audible/mobile/downloader/policy/SharedPreferencesUserDownloadPreferencePolicyFactory$Policy;->cMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 56
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 58
    iget-object v1, p0, Lcom/audible/mobile/downloader/policy/SharedPreferencesUserDownloadPreferencePolicyFactory$Policy;->preferences:Lcom/audible/mobile/preferences/PreferenceStore;

    sget-object v2, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->DOWNLOAD_NETWORK_PREFERENCE:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    .line 60
    invoke-static {}, Lcom/audible/mobile/downloader/policy/SharedPreferencesUserDownloadPreferencePolicyFactory;->access$000()Lcom/audible/mobile/preferences/DownloadPreference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 59
    invoke-interface {v1, v2, v3}, Lcom/audible/mobile/preferences/PreferenceStore;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {v1}, Lcom/audible/mobile/preferences/DownloadPreference;->valueOf(Ljava/lang/String;)Lcom/audible/mobile/preferences/DownloadPreference;

    move-result-object v1

    .line 62
    sget-object v2, Lcom/audible/mobile/downloader/policy/SharedPreferencesUserDownloadPreferencePolicyFactory$1;->$SwitchMap$com$audible$mobile$preferences$DownloadPreference:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    invoke-direct {p0, v0}, Lcom/audible/mobile/downloader/policy/SharedPreferencesUserDownloadPreferencePolicyFactory$Policy;->isWifi(Landroid/net/NetworkInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/audible/mobile/downloader/policy/SharedPreferencesUserDownloadPreferencePolicyFactory$Policy;->isWAN(Landroid/net/NetworkInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    return v2

    .line 64
    :cond_2
    invoke-direct {p0, v0}, Lcom/audible/mobile/downloader/policy/SharedPreferencesUserDownloadPreferencePolicyFactory$Policy;->isWifi(Landroid/net/NetworkInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
