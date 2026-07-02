.class public Lcom/amazon/device/crashmanager/source/DefaultNotBootupUploadArtifactSourceFactory;
.super Lcom/amazon/device/crashmanager/source/DefaultUploadArtifactSourceFactory;
.source "DefaultNotBootupUploadArtifactSourceFactory.java"


# instance fields
.field private final mCrashTimestampUtil:Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;

.field private mDropBoxManager:Landroid/os/DropBoxManager;

.field private final mDropBoxTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWhitelistedAppPatternsPerTag:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/device/crashmanager/source/SettingsStore;Landroid/os/DropBoxManager;Ljava/util/Set;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/crashmanager/source/SettingsStore;",
            "Landroid/os/DropBoxManager;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1}, Lcom/amazon/device/crashmanager/source/DefaultUploadArtifactSourceFactory;-><init>(Lcom/amazon/device/crashmanager/source/SettingsStore;)V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 31
    iput-object p2, p0, Lcom/amazon/device/crashmanager/source/DefaultNotBootupUploadArtifactSourceFactory;->mDropBoxManager:Landroid/os/DropBoxManager;

    .line 32
    iput-object p3, p0, Lcom/amazon/device/crashmanager/source/DefaultNotBootupUploadArtifactSourceFactory;->mDropBoxTags:Ljava/util/Set;

    .line 33
    iput-object p4, p0, Lcom/amazon/device/crashmanager/source/DefaultNotBootupUploadArtifactSourceFactory;->mWhitelistedAppPatternsPerTag:Ljava/util/Map;

    .line 34
    invoke-static {p1}, Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;->getInstance(Lcom/amazon/device/crashmanager/source/SettingsStore;)Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/crashmanager/source/DefaultNotBootupUploadArtifactSourceFactory;->mCrashTimestampUtil:Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;

    return-void

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "dropBoxTags must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DropBoxManager must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public constructArtifactSources()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/device/crashmanager/source/ArtifactSource;",
            ">;"
        }
    .end annotation

    .line 38
    invoke-super {p0}, Lcom/amazon/device/crashmanager/source/DefaultUploadArtifactSourceFactory;->constructArtifactSources()Ljava/util/List;

    move-result-object v0

    .line 40
    new-instance v1, Lcom/amazon/device/crashmanager/source/DropBoxArtifactSource;

    iget-object v2, p0, Lcom/amazon/device/crashmanager/source/DefaultNotBootupUploadArtifactSourceFactory;->mDropBoxManager:Landroid/os/DropBoxManager;

    iget-object v3, p0, Lcom/amazon/device/crashmanager/source/DefaultNotBootupUploadArtifactSourceFactory;->mCrashTimestampUtil:Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;

    iget-object v4, p0, Lcom/amazon/device/crashmanager/source/DefaultNotBootupUploadArtifactSourceFactory;->mDropBoxTags:Ljava/util/Set;

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/device/crashmanager/source/DropBoxArtifactSource;-><init>(Landroid/os/DropBoxManager;Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v1, Lcom/amazon/device/crashmanager/source/WhitelistAppArtifactSource;

    iget-object v2, p0, Lcom/amazon/device/crashmanager/source/DefaultNotBootupUploadArtifactSourceFactory;->mDropBoxManager:Landroid/os/DropBoxManager;

    iget-object v3, p0, Lcom/amazon/device/crashmanager/source/DefaultNotBootupUploadArtifactSourceFactory;->mCrashTimestampUtil:Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;

    iget-object v4, p0, Lcom/amazon/device/crashmanager/source/DefaultNotBootupUploadArtifactSourceFactory;->mWhitelistedAppPatternsPerTag:Ljava/util/Map;

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/device/crashmanager/source/WhitelistAppArtifactSource;-><init>(Landroid/os/DropBoxManager;Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
