.class public Lcom/amazon/whispersync/device/crashmanager/DefaultUploadArtifactSourceFactory;
.super Ljava/lang/Object;
.source "DefaultUploadArtifactSourceFactory.java"

# interfaces
.implements Lcom/amazon/whispersync/device/crashmanager/ArtifactSourceFactory;


# instance fields
.field protected mSettingsStore:Lcom/amazon/whispersync/device/crashmanager/SettingsStore;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/device/crashmanager/SettingsStore;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 14
    iput-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultUploadArtifactSourceFactory;->mSettingsStore:Lcom/amazon/whispersync/device/crashmanager/SettingsStore;

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SettingsStore must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public constructArtifactSources()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/device/crashmanager/ArtifactSource;",
            ">;"
        }
    .end annotation

    .line 18
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 20
    new-instance v1, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactSource;

    iget-object v2, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultUploadArtifactSourceFactory;->mSettingsStore:Lcom/amazon/whispersync/device/crashmanager/SettingsStore;

    invoke-direct {v1, v2}, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactSource;-><init>(Lcom/amazon/whispersync/device/crashmanager/SettingsStore;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
