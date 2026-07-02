.class final Lcom/audible/hushpuppy/sync/SimpleSyncDataBuilder;
.super Ljava/lang/Object;
.source "SimpleSyncDataBuilder.java"

# interfaces
.implements Lcom/audible/hushpuppy/sync/ISyncDataBuilder;


# instance fields
.field private aes:Lcom/audible/hushpuppy/sync/AES;

.field private asinId:Ljava/lang/String;

.field private blockSize:I

.field private cipher:Ljavax/crypto/Cipher;

.field private numSearchesBeforeBinarySearch:I

.field private syncFile:Lcom/audible/hushpuppy/sync/IFile;

.field private trace:Z

.field private useHeader:Z


# direct methods
.method public constructor <init>(Lcom/audible/hushpuppy/sync/IFile;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/audible/hushpuppy/sync/AES;

    invoke-direct {v0}, Lcom/audible/hushpuppy/sync/AES;-><init>()V

    iput-object v0, p0, Lcom/audible/hushpuppy/sync/SimpleSyncDataBuilder;->aes:Lcom/audible/hushpuppy/sync/AES;

    const v0, 0xfa00

    .line 21
    iput v0, p0, Lcom/audible/hushpuppy/sync/SimpleSyncDataBuilder;->blockSize:I

    const/4 v0, 0x3

    .line 22
    iput v0, p0, Lcom/audible/hushpuppy/sync/SimpleSyncDataBuilder;->numSearchesBeforeBinarySearch:I

    .line 31
    iput-object p1, p0, Lcom/audible/hushpuppy/sync/SimpleSyncDataBuilder;->syncFile:Lcom/audible/hushpuppy/sync/IFile;

    return-void
.end method


# virtual methods
.method public create()Lcom/audible/hushpuppy/sync/ISyncData;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/audible/hushpuppy/sync/SyncDataHeaderException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/audible/hushpuppy/sync/SimpleSyncDataBuilder;->syncFile:Lcom/audible/hushpuppy/sync/IFile;

    if-eqz v0, :cond_2

    .line 140
    iget-boolean v1, p0, Lcom/audible/hushpuppy/sync/SimpleSyncDataBuilder;->useHeader:Z

    if-eqz v1, :cond_0

    .line 141
    new-instance v1, Lcom/audible/hushpuppy/sync/SyncDataHeader;

    invoke-direct {v1, v0}, Lcom/audible/hushpuppy/sync/SyncDataHeader;-><init>(Lcom/audible/hushpuppy/sync/IFile;)V

    .line 142
    invoke-interface {v1}, Lcom/audible/hushpuppy/sync/ISyncData$Header;->getHeaderLength()I

    move-result v0

    move v4, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 149
    :goto_0
    iget v6, p0, Lcom/audible/hushpuppy/sync/SimpleSyncDataBuilder;->numSearchesBeforeBinarySearch:I

    .line 151
    iget-object v0, p0, Lcom/audible/hushpuppy/sync/SimpleSyncDataBuilder;->cipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_1

    .line 152
    new-instance v0, Lcom/audible/hushpuppy/sync/SyncDataContent;

    iget-object v3, p0, Lcom/audible/hushpuppy/sync/SimpleSyncDataBuilder;->syncFile:Lcom/audible/hushpuppy/sync/IFile;

    iget v5, p0, Lcom/audible/hushpuppy/sync/SimpleSyncDataBuilder;->blockSize:I

    iget-object v7, p0, Lcom/audible/hushpuppy/sync/SimpleSyncDataBuilder;->cipher:Ljavax/crypto/Cipher;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/audible/hushpuppy/sync/SyncDataContent;-><init>(Lcom/audible/hushpuppy/sync/IFile;IIILjavax/crypto/Cipher;)V

    goto :goto_1

    .line 154
    :cond_1
    new-instance v0, Lcom/audible/hushpuppy/sync/SyncDataContent;

    iget-object v2, p0, Lcom/audible/hushpuppy/sync/SimpleSyncDataBuilder;->syncFile:Lcom/audible/hushpuppy/sync/IFile;

    iget v3, p0, Lcom/audible/hushpuppy/sync/SimpleSyncDataBuilder;->blockSize:I

    invoke-direct {v0, v2, v4, v3, v6}, Lcom/audible/hushpuppy/sync/SyncDataContent;-><init>(Lcom/audible/hushpuppy/sync/IFile;III)V

    .line 157
    :goto_1
    iget-boolean v2, p0, Lcom/audible/hushpuppy/sync/SimpleSyncDataBuilder;->trace:Z

    invoke-virtual {v0, v2}, Lcom/audible/hushpuppy/sync/SyncDataContent;->setTrace(Z)V

    .line 158
    iget-object v2, p0, Lcom/audible/hushpuppy/sync/SimpleSyncDataBuilder;->asinId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/audible/hushpuppy/sync/SyncDataContent;->setAsinId(Ljava/lang/String;)V

    .line 160
    new-instance v2, Lcom/audible/hushpuppy/sync/SimpleSyncDataBuilder$1;

    invoke-direct {v2, p0, v1}, Lcom/audible/hushpuppy/sync/SimpleSyncDataBuilder$1;-><init>(Lcom/audible/hushpuppy/sync/SimpleSyncDataBuilder;Lcom/audible/hushpuppy/sync/ISyncData$Header;)V

    .line 166
    new-instance v1, Lcom/audible/hushpuppy/sync/SyncData;

    invoke-direct {v1, v2, v0}, Lcom/audible/hushpuppy/sync/SyncData;-><init>(Lcom/audible/hushpuppy/sync/SyncData$HasHeader;Lcom/audible/hushpuppy/sync/SyncDataContent;)V

    return-object v1

    .line 134
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "You must set the \'syncFile\' attribute by calling syncFile(File)"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAsinId(Ljava/lang/String;)Lcom/audible/hushpuppy/sync/ISyncDataBuilder;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/audible/hushpuppy/sync/SimpleSyncDataBuilder;->asinId:Ljava/lang/String;

    return-object p0
.end method
