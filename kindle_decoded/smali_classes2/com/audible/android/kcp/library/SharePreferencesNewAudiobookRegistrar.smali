.class public Lcom/audible/android/kcp/library/SharePreferencesNewAudiobookRegistrar;
.super Ljava/lang/Object;
.source "SharePreferencesNewAudiobookRegistrar.java"

# interfaces
.implements Lcom/audible/android/kcp/library/NewAudiobookRegistrar;


# static fields
.field static final SHARE_PREF_KEY:Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;


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
    .locals 1

    .line 23
    sget-object v0, Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;->NEW_AUDIOBOOKS:Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;

    sput-object v0, Lcom/audible/android/kcp/library/SharePreferencesNewAudiobookRegistrar;->SHARE_PREF_KEY:Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;

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

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/audible/android/kcp/library/SharePreferencesNewAudiobookRegistrar;->mPreferencesStore:Lcom/audible/mobile/preferences/PreferenceStore;

    return-void
.end method

.method private readNewAudiobookListFromPrefs()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/audible/android/kcp/library/SharePreferencesNewAudiobookRegistrar;->mPreferencesStore:Lcom/audible/mobile/preferences/PreferenceStore;

    sget-object v1, Lcom/audible/android/kcp/library/SharePreferencesNewAudiobookRegistrar;->SHARE_PREF_KEY:Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/audible/mobile/preferences/PreferenceStore;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 66
    invoke-static {v0}, Lcom/audible/mobile/util/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ","

    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    return-object v1
.end method

.method private saveNewAudiobookListToPrefs(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 80
    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, ","

    invoke-static {p1, v0}, Lcom/audible/mobile/util/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 82
    iget-object v0, p0, Lcom/audible/android/kcp/library/SharePreferencesNewAudiobookRegistrar;->mPreferencesStore:Lcom/audible/mobile/preferences/PreferenceStore;

    sget-object v1, Lcom/audible/android/kcp/library/SharePreferencesNewAudiobookRegistrar;->SHARE_PREF_KEY:Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;

    invoke-interface {v0, v1, p1}, Lcom/audible/mobile/preferences/PreferenceStore;->setString(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addAudiobook(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 35
    :try_start_0
    invoke-direct {p0}, Lcom/audible/android/kcp/library/SharePreferencesNewAudiobookRegistrar;->readNewAudiobookListFromPrefs()Ljava/util/Set;

    move-result-object v0

    .line 36
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-direct {p0, v0}, Lcom/audible/android/kcp/library/SharePreferencesNewAudiobookRegistrar;->saveNewAudiobookListToPrefs(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isNewAudiobook(Ljava/lang/String;)Z
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/audible/android/kcp/library/SharePreferencesNewAudiobookRegistrar;->readNewAudiobookListFromPrefs()Ljava/util/Set;

    move-result-object v0

    .line 58
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized removeAudiobook(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 43
    :try_start_0
    invoke-direct {p0}, Lcom/audible/android/kcp/library/SharePreferencesNewAudiobookRegistrar;->readNewAudiobookListFromPrefs()Ljava/util/Set;

    move-result-object v0

    .line 44
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 45
    invoke-direct {p0, v0}, Lcom/audible/android/kcp/library/SharePreferencesNewAudiobookRegistrar;->saveNewAudiobookListToPrefs(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
