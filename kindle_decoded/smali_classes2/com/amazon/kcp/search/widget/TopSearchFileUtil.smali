.class public Lcom/amazon/kcp/search/widget/TopSearchFileUtil;
.super Ljava/lang/Object;
.source "TopSearchFileUtil.java"


# static fields
.field private static final CACHE_A:Ljava/lang/String; = "cacheA"

.field private static final CACHE_B:Ljava/lang/String; = "cacheB"

.field private static final SHARED_PREFERENCE_KEY:Ljava/lang/String; = "CACHE"

.field private static final SUB_CACHE_DIR:Ljava/lang/String; = "topsearch"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cache:Ljava/lang/String;

.field private cacheDir:Ljava/io/File;

.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/kcp/search/widget/TopSearchFileUtil;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/search/widget/TopSearchFileUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazon/kcp/search/widget/TopSearchFileUtil;->context:Landroid/content/Context;

    .line 32
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "CACHE"

    const-string v1, "cacheA"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/widget/TopSearchFileUtil;->cache:Ljava/lang/String;

    return-void
.end method

.method private getAppCacheDirectory()Ljava/io/File;
    .locals 4

    .line 101
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchFileUtil;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchFileUtil;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 107
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCacheDirectory cacheDir:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized getCacheDirectory()Ljava/io/File;
    .locals 3

    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchFileUtil;->cacheDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/amazon/kcp/search/widget/TopSearchFileUtil;->getAppCacheDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "topsearch"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/amazon/kcp/search/widget/TopSearchFileUtil;->cacheDir:Ljava/io/File;

    .line 91
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchFileUtil;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchFileUtil;->cacheDir:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isUseCacheA()Z
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchFileUtil;->cache:Ljava/lang/String;

    const-string v1, "cacheA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getCacheFile()Ljava/io/File;
    .locals 4

    .line 48
    invoke-direct {p0}, Lcom/amazon/kcp/search/widget/TopSearchFileUtil;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 50
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/amazon/kcp/search/widget/TopSearchFileUtil;->cache:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 52
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCacheFile file: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v2
.end method

.method public getDownloadFile()Ljava/io/File;
    .locals 3

    .line 61
    invoke-direct {p0}, Lcom/amazon/kcp/search/widget/TopSearchFileUtil;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    invoke-direct {p0}, Lcom/amazon/kcp/search/widget/TopSearchFileUtil;->isUseCacheA()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    new-instance v1, Ljava/io/File;

    const-string v2, "cacheB"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "cacheA"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public savePreference()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchFileUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/amazon/kcp/search/widget/TopSearchFileUtil;->cache:Ljava/lang/String;

    const-string v2, "CACHE"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 79
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public shiftCacheFile()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/amazon/kcp/search/widget/TopSearchFileUtil;->isUseCacheA()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cacheB"

    .line 37
    iput-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchFileUtil;->cache:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "cacheA"

    .line 39
    iput-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchFileUtil;->cache:Ljava/lang/String;

    :goto_0
    return-void
.end method
