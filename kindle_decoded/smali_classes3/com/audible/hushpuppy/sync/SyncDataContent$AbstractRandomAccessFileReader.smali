.class abstract Lcom/audible/hushpuppy/sync/SyncDataContent$AbstractRandomAccessFileReader;
.super Ljava/lang/Object;
.source "SyncDataContent.java"

# interfaces
.implements Lcom/audible/hushpuppy/sync/SyncDataContent$RandomAccessFileReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/sync/SyncDataContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractRandomAccessFileReader"
.end annotation


# instance fields
.field protected final file:Ljava/io/RandomAccessFile;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/sync/IFile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-interface {p1}, Lcom/audible/hushpuppy/sync/IFile;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/audible/hushpuppy/sync/SyncDataContent$AbstractRandomAccessFileReader;->file:Ljava/io/RandomAccessFile;

    return-void
.end method


# virtual methods
.method public final length()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/audible/hushpuppy/sync/SyncDataContent$AbstractRandomAccessFileReader;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public final seek(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/audible/hushpuppy/sync/SyncDataContent$AbstractRandomAccessFileReader;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method
