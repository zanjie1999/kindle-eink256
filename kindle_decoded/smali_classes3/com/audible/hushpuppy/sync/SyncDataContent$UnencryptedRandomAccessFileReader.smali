.class final Lcom/audible/hushpuppy/sync/SyncDataContent$UnencryptedRandomAccessFileReader;
.super Lcom/audible/hushpuppy/sync/SyncDataContent$AbstractRandomAccessFileReader;
.source "SyncDataContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/sync/SyncDataContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnencryptedRandomAccessFileReader"
.end annotation


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/sync/IFile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/sync/SyncDataContent$AbstractRandomAccessFileReader;-><init>(Lcom/audible/hushpuppy/sync/IFile;)V

    return-void
.end method


# virtual methods
.method public read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/audible/hushpuppy/sync/SyncDataContent$AbstractRandomAccessFileReader;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result p1

    return p1
.end method
