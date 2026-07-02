.class public Lcom/audible/android/kcp/download/receiver/SyncFileDownloadRequestProvider;
.super Ljava/lang/Object;
.source "SyncFileDownloadRequestProvider.java"

# interfaces
.implements Lcom/audible/android/kcp/download/receiver/DownloadRequestProvider;


# instance fields
.field private final mAudiobookAsin:Lcom/audible/mobile/domain/Asin;

.field private final mSyncFileAcr:Lcom/audible/mobile/domain/ACR;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p2, p0, Lcom/audible/android/kcp/download/receiver/SyncFileDownloadRequestProvider;->mSyncFileAcr:Lcom/audible/mobile/domain/ACR;

    .line 23
    iput-object p1, p0, Lcom/audible/android/kcp/download/receiver/SyncFileDownloadRequestProvider;->mAudiobookAsin:Lcom/audible/mobile/domain/Asin;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 45
    const-class v2, Lcom/audible/android/kcp/download/receiver/SyncFileDownloadRequestProvider;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 48
    :cond_1
    check-cast p1, Lcom/audible/android/kcp/download/receiver/SyncFileDownloadRequestProvider;

    .line 50
    iget-object v2, p0, Lcom/audible/android/kcp/download/receiver/SyncFileDownloadRequestProvider;->mAudiobookAsin:Lcom/audible/mobile/domain/Asin;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/audible/android/kcp/download/receiver/SyncFileDownloadRequestProvider;->mAudiobookAsin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/audible/android/kcp/download/receiver/SyncFileDownloadRequestProvider;->mAudiobookAsin:Lcom/audible/mobile/domain/Asin;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 52
    :cond_3
    iget-object v2, p0, Lcom/audible/android/kcp/download/receiver/SyncFileDownloadRequestProvider;->mSyncFileAcr:Lcom/audible/mobile/domain/ACR;

    iget-object p1, p1, Lcom/audible/android/kcp/download/receiver/SyncFileDownloadRequestProvider;->mSyncFileAcr:Lcom/audible/mobile/domain/ACR;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    :goto_1
    return v1

    :cond_5
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public getDownloadType()Lcom/audible/android/kcp/download/receiver/AirDownloadType;
    .locals 1

    .line 37
    sget-object v0, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->SYNC_FILE:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    return-object v0
.end method

.method public getRequest()Lcom/audible/mobile/download/Request;
    .locals 4

    .line 29
    new-instance v0, Lcom/audible/mobile/domain/ImmutableCustomerIdImpl;

    const-string v1, "LEGACY"

    invoke-direct {v0, v1}, Lcom/audible/mobile/domain/ImmutableCustomerIdImpl;-><init>(Ljava/lang/String;)V

    .line 30
    new-instance v1, Lcom/audible/mobile/download/Request;

    sget-object v2, Lcom/audible/mobile/download/ContentType;->PositionSync:Lcom/audible/mobile/download/ContentType;

    iget-object v3, p0, Lcom/audible/android/kcp/download/receiver/SyncFileDownloadRequestProvider;->mAudiobookAsin:Lcom/audible/mobile/domain/Asin;

    invoke-direct {v1, v2, v0, v3}, Lcom/audible/mobile/download/Request;-><init>(Lcom/audible/mobile/download/ContentType;Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/domain/Asin;)V

    .line 31
    iget-object v0, p0, Lcom/audible/android/kcp/download/receiver/SyncFileDownloadRequestProvider;->mSyncFileAcr:Lcom/audible/mobile/domain/ACR;

    invoke-interface {v0}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/audible/mobile/download/Request;->setOptionalPayload(Ljava/lang/String;)V

    return-object v1
.end method

.method public hashCode()I
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/audible/android/kcp/download/receiver/SyncFileDownloadRequestProvider;->mAudiobookAsin:Lcom/audible/mobile/domain/Asin;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 62
    iget-object v2, p0, Lcom/audible/android/kcp/download/receiver/SyncFileDownloadRequestProvider;->mSyncFileAcr:Lcom/audible/mobile/domain/ACR;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method
