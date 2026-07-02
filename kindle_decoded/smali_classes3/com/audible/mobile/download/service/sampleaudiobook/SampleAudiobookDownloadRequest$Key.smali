.class public Lcom/audible/mobile/download/service/sampleaudiobook/SampleAudiobookDownloadRequest$Key;
.super Ljava/lang/Object;
.source "SampleAudiobookDownloadRequest.java"

# interfaces
.implements Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/download/service/sampleaudiobook/SampleAudiobookDownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# instance fields
.field private final asin:Lcom/audible/mobile/domain/Asin;

.field private final format:Lcom/audible/mobile/domain/Format;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Format;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Asin is required"

    .line 32
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Format is required"

    .line 33
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    iput-object p1, p0, Lcom/audible/mobile/download/service/sampleaudiobook/SampleAudiobookDownloadRequest$Key;->asin:Lcom/audible/mobile/domain/Asin;

    .line 35
    iput-object p2, p0, Lcom/audible/mobile/download/service/sampleaudiobook/SampleAudiobookDownloadRequest$Key;->format:Lcom/audible/mobile/domain/Format;

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

    if-eqz p1, :cond_4

    .line 53
    const-class v2, Lcom/audible/mobile/download/service/sampleaudiobook/SampleAudiobookDownloadRequest$Key;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    check-cast p1, Lcom/audible/mobile/download/service/sampleaudiobook/SampleAudiobookDownloadRequest$Key;

    .line 58
    iget-object v2, p0, Lcom/audible/mobile/download/service/sampleaudiobook/SampleAudiobookDownloadRequest$Key;->asin:Lcom/audible/mobile/domain/Asin;

    iget-object v3, p1, Lcom/audible/mobile/download/service/sampleaudiobook/SampleAudiobookDownloadRequest$Key;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 60
    :cond_2
    iget-object v2, p0, Lcom/audible/mobile/download/service/sampleaudiobook/SampleAudiobookDownloadRequest$Key;->format:Lcom/audible/mobile/domain/Format;

    iget-object p1, p1, Lcom/audible/mobile/download/service/sampleaudiobook/SampleAudiobookDownloadRequest$Key;->format:Lcom/audible/mobile/domain/Format;

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/audible/mobile/download/service/sampleaudiobook/SampleAudiobookDownloadRequest$Key;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 70
    iget-object v1, p0, Lcom/audible/mobile/download/service/sampleaudiobook/SampleAudiobookDownloadRequest$Key;->format:Lcom/audible/mobile/domain/Format;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
