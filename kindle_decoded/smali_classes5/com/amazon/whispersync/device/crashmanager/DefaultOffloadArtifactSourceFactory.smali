.class public Lcom/amazon/whispersync/device/crashmanager/DefaultOffloadArtifactSourceFactory;
.super Ljava/lang/Object;
.source "DefaultOffloadArtifactSourceFactory.java"

# interfaces
.implements Lcom/amazon/whispersync/device/crashmanager/ArtifactSourceFactory;


# instance fields
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

.field private final mSettingsStore:Lcom/amazon/whispersync/device/crashmanager/SettingsStore;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/device/crashmanager/SettingsStore;Landroid/os/DropBoxManager;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/device/crashmanager/SettingsStore;",
            "Landroid/os/DropBoxManager;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 26
    iput-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultOffloadArtifactSourceFactory;->mSettingsStore:Lcom/amazon/whispersync/device/crashmanager/SettingsStore;

    .line 27
    iput-object p2, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultOffloadArtifactSourceFactory;->mDropBoxManager:Landroid/os/DropBoxManager;

    .line 28
    iput-object p3, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultOffloadArtifactSourceFactory;->mDropBoxTags:Ljava/util/Set;

    return-void

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "dropBoxTags must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DropBoxManager must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
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
            "Lcom/amazon/whispersync/device/crashmanager/ArtifactSource;",
            ">;"
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 34
    new-instance v1, Lcom/amazon/whispersync/device/crashmanager/DropBoxArtifactSource;

    iget-object v2, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultOffloadArtifactSourceFactory;->mDropBoxManager:Landroid/os/DropBoxManager;

    iget-object v3, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultOffloadArtifactSourceFactory;->mSettingsStore:Lcom/amazon/whispersync/device/crashmanager/SettingsStore;

    iget-object v4, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultOffloadArtifactSourceFactory;->mDropBoxTags:Ljava/util/Set;

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/whispersync/device/crashmanager/DropBoxArtifactSource;-><init>(Landroid/os/DropBoxManager;Lcom/amazon/whispersync/device/crashmanager/SettingsStore;Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
