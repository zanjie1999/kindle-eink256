.class public Lcom/mobipocket/jsr75/filesystem/StandaloneFileSystemPathDescriptor;
.super Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;
.source "StandaloneFileSystemPathDescriptor.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getBookDir()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getFileObserver()Landroid/os/FileObserver;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSidecarMigrationSource()Ljava/io/File;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getExternalFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
