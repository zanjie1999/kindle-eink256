.class public Lcom/amazon/device/crashmanager/source/DefaultUploadArtifactSourceFactory;
.super Ljava/lang/Object;
.source "DefaultUploadArtifactSourceFactory.java"

# interfaces
.implements Lcom/amazon/device/crashmanager/source/ArtifactSourceFactory;


# instance fields
.field protected mSettingsStore:Lcom/amazon/device/crashmanager/source/SettingsStore;


# direct methods
.method public constructor <init>(Lcom/amazon/device/crashmanager/source/SettingsStore;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 15
    iput-object p1, p0, Lcom/amazon/device/crashmanager/source/DefaultUploadArtifactSourceFactory;->mSettingsStore:Lcom/amazon/device/crashmanager/source/SettingsStore;

    return-void

    .line 13
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
            "Lcom/amazon/device/crashmanager/source/ArtifactSource;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 21
    new-instance v1, Lcom/amazon/device/crashmanager/source/RamDumpArtifactSource;

    iget-object v2, p0, Lcom/amazon/device/crashmanager/source/DefaultUploadArtifactSourceFactory;->mSettingsStore:Lcom/amazon/device/crashmanager/source/SettingsStore;

    invoke-direct {v1, v2}, Lcom/amazon/device/crashmanager/source/RamDumpArtifactSource;-><init>(Lcom/amazon/device/crashmanager/source/SettingsStore;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
