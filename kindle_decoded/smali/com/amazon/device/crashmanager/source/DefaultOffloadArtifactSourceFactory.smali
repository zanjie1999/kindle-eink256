.class public Lcom/amazon/device/crashmanager/source/DefaultOffloadArtifactSourceFactory;
.super Ljava/lang/Object;
.source "DefaultOffloadArtifactSourceFactory.java"

# interfaces
.implements Lcom/amazon/device/crashmanager/source/ArtifactSourceFactory;


# instance fields
.field private final mCrashTimestampUtil:Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;

.field private final mDropBoxManager:Landroid/os/DropBoxManager;

.field private final mDropBoxTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/device/crashmanager/source/SettingsStore;Landroid/os/DropBoxManager;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/crashmanager/source/SettingsStore;",
            "Landroid/os/DropBoxManager;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 29
    iput-object p2, p0, Lcom/amazon/device/crashmanager/source/DefaultOffloadArtifactSourceFactory;->mDropBoxManager:Landroid/os/DropBoxManager;

    .line 30
    iput-object p3, p0, Lcom/amazon/device/crashmanager/source/DefaultOffloadArtifactSourceFactory;->mDropBoxTags:Ljava/util/Set;

    .line 31
    invoke-static {p1}, Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;->getInstance(Lcom/amazon/device/crashmanager/source/SettingsStore;)Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/crashmanager/source/DefaultOffloadArtifactSourceFactory;->mCrashTimestampUtil:Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;

    return-void

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "dropBoxTags must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DropBoxManager must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SettingsStore must not be null."

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

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 37
    new-instance v1, Lcom/amazon/device/crashmanager/source/DropBoxArtifactSource;

    iget-object v2, p0, Lcom/amazon/device/crashmanager/source/DefaultOffloadArtifactSourceFactory;->mDropBoxManager:Landroid/os/DropBoxManager;

    iget-object v3, p0, Lcom/amazon/device/crashmanager/source/DefaultOffloadArtifactSourceFactory;->mCrashTimestampUtil:Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;

    iget-object v4, p0, Lcom/amazon/device/crashmanager/source/DefaultOffloadArtifactSourceFactory;->mDropBoxTags:Ljava/util/Set;

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/device/crashmanager/source/DropBoxArtifactSource;-><init>(Landroid/os/DropBoxManager;Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
