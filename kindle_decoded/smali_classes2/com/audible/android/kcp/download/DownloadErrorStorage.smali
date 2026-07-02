.class public Lcom/audible/android/kcp/download/DownloadErrorStorage;
.super Ljava/lang/Object;
.source "DownloadErrorStorage.java"


# static fields
.field private static final EBOOK_DELEMETER:Ljava/lang/String; = ","

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final mPreferencesStore:Lcom/audible/mobile/preferences/PreferenceStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/preferences/PreferenceStore<",
            "Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/download/DownloadErrorStorage;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/download/DownloadErrorStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/preferences/PreferenceStore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/preferences/PreferenceStore<",
            "Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/audible/android/kcp/download/DownloadErrorStorage;->mPreferencesStore:Lcom/audible/mobile/preferences/PreferenceStore;

    return-void
.end method

.method private getFailedAudiobooks()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/audible/android/kcp/download/DownloadErrorStorage;->mPreferencesStore:Lcom/audible/mobile/preferences/PreferenceStore;

    sget-object v1, Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;->FAILED_AUDIOBOOKS:Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/audible/mobile/preferences/PreferenceStore;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    :cond_0
    const-string v1, ","

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 84
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v1
.end method

.method private saveFailedAudiobooks(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 95
    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, ","

    invoke-static {p1, v0}, Lcom/audible/mobile/util/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 97
    iget-object v0, p0, Lcom/audible/android/kcp/download/DownloadErrorStorage;->mPreferencesStore:Lcom/audible/mobile/preferences/PreferenceStore;

    sget-object v1, Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;->FAILED_AUDIOBOOKS:Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;

    invoke-interface {v0, v1, p1}, Lcom/audible/mobile/preferences/PreferenceStore;->setString(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public removeFailedAudiobook(Lcom/audible/mobile/domain/Asin;)V
    .locals 3

    .line 66
    sget-object v0, Lcom/audible/android/kcp/download/DownloadErrorStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Removing asin %s from failed state."

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    invoke-direct {p0}, Lcom/audible/android/kcp/download/DownloadErrorStorage;->getFailedAudiobooks()Ljava/util/Set;

    move-result-object v0

    .line 69
    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 71
    invoke-direct {p0, v0}, Lcom/audible/android/kcp/download/DownloadErrorStorage;->saveFailedAudiobooks(Ljava/util/Set;)V

    return-void
.end method
