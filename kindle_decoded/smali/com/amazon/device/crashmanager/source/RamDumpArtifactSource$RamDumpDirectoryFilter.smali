.class Lcom/amazon/device/crashmanager/source/RamDumpArtifactSource$RamDumpDirectoryFilter;
.super Ljava/lang/Object;
.source "RamDumpArtifactSource.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/crashmanager/source/RamDumpArtifactSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RamDumpDirectoryFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/crashmanager/source/RamDumpArtifactSource;


# direct methods
.method private constructor <init>(Lcom/amazon/device/crashmanager/source/RamDumpArtifactSource;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/amazon/device/crashmanager/source/RamDumpArtifactSource$RamDumpDirectoryFilter;->this$0:Lcom/amazon/device/crashmanager/source/RamDumpArtifactSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/device/crashmanager/source/RamDumpArtifactSource;Lcom/amazon/device/crashmanager/source/RamDumpArtifactSource$1;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/amazon/device/crashmanager/source/RamDumpArtifactSource$RamDumpDirectoryFilter;-><init>(Lcom/amazon/device/crashmanager/source/RamDumpArtifactSource;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .line 75
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    sget-object p1, Lcom/amazon/device/crashmanager/source/RamDumpArtifactSource;->RAMDUMP_FOLDER_NAMES:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
