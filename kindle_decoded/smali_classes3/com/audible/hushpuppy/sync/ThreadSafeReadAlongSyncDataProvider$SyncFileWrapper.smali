.class final Lcom/audible/hushpuppy/sync/ThreadSafeReadAlongSyncDataProvider$SyncFileWrapper;
.super Ljava/lang/Object;
.source "ThreadSafeReadAlongSyncDataProvider.java"

# interfaces
.implements Lcom/audible/hushpuppy/sync/IFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/sync/ThreadSafeReadAlongSyncDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SyncFileWrapper"
.end annotation


# instance fields
.field private final syncFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/audible/hushpuppy/sync/ThreadSafeReadAlongSyncDataProvider$SyncFileWrapper;->syncFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/audible/hushpuppy/sync/ThreadSafeReadAlongSyncDataProvider$SyncFileWrapper;->syncFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public open()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/audible/hushpuppy/sync/ThreadSafeReadAlongSyncDataProvider$SyncFileWrapper;->syncFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method
