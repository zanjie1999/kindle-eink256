.class public Lcom/audible/mobile/downloader/policy/SharedPreferencesUserDownloadPreferencePolicyFactory;
.super Ljava/lang/Object;
.source "SharedPreferencesUserDownloadPreferencePolicyFactory.java"

# interfaces
.implements Lcom/audible/mobile/downloader/policy/NetworkStatePolicyFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/downloader/policy/SharedPreferencesUserDownloadPreferencePolicyFactory$Policy;
    }
.end annotation


# static fields
.field private static final DEFAULT_DOWNLOAD_PREFERENCE:Lcom/audible/mobile/preferences/DownloadPreference;


# instance fields
.field private final preferences:Lcom/audible/mobile/preferences/PreferenceStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/preferences/PreferenceStore<",
            "Lcom/audible/mobile/preferences/AudiblePreferenceKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    sget-object v0, Lcom/audible/mobile/preferences/DownloadPreference;->WIFI_ONLY:Lcom/audible/mobile/preferences/DownloadPreference;

    sput-object v0, Lcom/audible/mobile/downloader/policy/SharedPreferencesUserDownloadPreferencePolicyFactory;->DEFAULT_DOWNLOAD_PREFERENCE:Lcom/audible/mobile/preferences/DownloadPreference;

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/preferences/PreferenceStore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/preferences/PreferenceStore<",
            "Lcom/audible/mobile/preferences/AudiblePreferenceKey;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/audible/mobile/downloader/policy/SharedPreferencesUserDownloadPreferencePolicyFactory;->preferences:Lcom/audible/mobile/preferences/PreferenceStore;

    return-void
.end method

.method static synthetic access$000()Lcom/audible/mobile/preferences/DownloadPreference;
    .locals 1

    .line 19
    sget-object v0, Lcom/audible/mobile/downloader/policy/SharedPreferencesUserDownloadPreferencePolicyFactory;->DEFAULT_DOWNLOAD_PREFERENCE:Lcom/audible/mobile/preferences/DownloadPreference;

    return-object v0
.end method


# virtual methods
.method public getPolicy(Landroid/content/Context;)Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;
    .locals 2

    const-string v0, "connectivity"

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 35
    new-instance v0, Lcom/audible/mobile/downloader/policy/SharedPreferencesUserDownloadPreferencePolicyFactory$Policy;

    iget-object v1, p0, Lcom/audible/mobile/downloader/policy/SharedPreferencesUserDownloadPreferencePolicyFactory;->preferences:Lcom/audible/mobile/preferences/PreferenceStore;

    invoke-direct {v0, p1, v1}, Lcom/audible/mobile/downloader/policy/SharedPreferencesUserDownloadPreferencePolicyFactory$Policy;-><init>(Landroid/net/ConnectivityManager;Lcom/audible/mobile/preferences/PreferenceStore;)V

    return-object v0
.end method
