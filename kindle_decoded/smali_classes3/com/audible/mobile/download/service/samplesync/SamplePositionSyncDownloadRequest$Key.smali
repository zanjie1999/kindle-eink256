.class public Lcom/audible/mobile/download/service/samplesync/SamplePositionSyncDownloadRequest$Key;
.super Ljava/lang/Object;
.source "SamplePositionSyncDownloadRequest.java"

# interfaces
.implements Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/download/service/samplesync/SamplePositionSyncDownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# instance fields
.field private final audiobookAsin:Lcom/audible/mobile/domain/Asin;

.field private final ebookACR:Lcom/audible/mobile/domain/ACR;

.field private final format:Lcom/audible/mobile/domain/Format;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Format;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Asin is required"

    .line 31
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Format is required"

    .line 32
    invoke-static {p3, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "ebook ACR is required"

    .line 33
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    iput-object p1, p0, Lcom/audible/mobile/download/service/samplesync/SamplePositionSyncDownloadRequest$Key;->ebookACR:Lcom/audible/mobile/domain/ACR;

    .line 35
    iput-object p2, p0, Lcom/audible/mobile/download/service/samplesync/SamplePositionSyncDownloadRequest$Key;->audiobookAsin:Lcom/audible/mobile/domain/Asin;

    .line 36
    iput-object p3, p0, Lcom/audible/mobile/download/service/samplesync/SamplePositionSyncDownloadRequest$Key;->format:Lcom/audible/mobile/domain/Format;

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

    if-eqz p1, :cond_8

    .line 54
    const-class v2, Lcom/audible/mobile/download/service/samplesync/SamplePositionSyncDownloadRequest$Key;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 56
    :cond_1
    check-cast p1, Lcom/audible/mobile/download/service/samplesync/SamplePositionSyncDownloadRequest$Key;

    .line 58
    iget-object v2, p0, Lcom/audible/mobile/download/service/samplesync/SamplePositionSyncDownloadRequest$Key;->audiobookAsin:Lcom/audible/mobile/domain/Asin;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/audible/mobile/download/service/samplesync/SamplePositionSyncDownloadRequest$Key;->audiobookAsin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/audible/mobile/download/service/samplesync/SamplePositionSyncDownloadRequest$Key;->audiobookAsin:Lcom/audible/mobile/domain/Asin;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 60
    :cond_3
    iget-object v2, p0, Lcom/audible/mobile/download/service/samplesync/SamplePositionSyncDownloadRequest$Key;->ebookACR:Lcom/audible/mobile/domain/ACR;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/audible/mobile/download/service/samplesync/SamplePositionSyncDownloadRequest$Key;->ebookACR:Lcom/audible/mobile/domain/ACR;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lcom/audible/mobile/download/service/samplesync/SamplePositionSyncDownloadRequest$Key;->ebookACR:Lcom/audible/mobile/domain/ACR;

    if-eqz v2, :cond_5

    :goto_1
    return v1

    .line 62
    :cond_5
    iget-object v2, p0, Lcom/audible/mobile/download/service/samplesync/SamplePositionSyncDownloadRequest$Key;->format:Lcom/audible/mobile/domain/Format;

    iget-object p1, p1, Lcom/audible/mobile/download/service/samplesync/SamplePositionSyncDownloadRequest$Key;->format:Lcom/audible/mobile/domain/Format;

    if-eqz v2, :cond_6

    invoke-virtual {v2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    :goto_2
    return v1

    :cond_7
    return v0

    :cond_8
    :goto_3
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/audible/mobile/download/service/samplesync/SamplePositionSyncDownloadRequest$Key;->ebookACR:Lcom/audible/mobile/domain/ACR;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 70
    iget-object v2, p0, Lcom/audible/mobile/download/service/samplesync/SamplePositionSyncDownloadRequest$Key;->audiobookAsin:Lcom/audible/mobile/domain/Asin;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 71
    iget-object v2, p0, Lcom/audible/mobile/download/service/samplesync/SamplePositionSyncDownloadRequest$Key;->format:Lcom/audible/mobile/domain/Format;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method
