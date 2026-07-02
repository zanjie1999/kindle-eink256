.class public Lcom/audible/mobile/download/service/isma/ISMADownloadRequest$Key;
.super Ljava/lang/Object;
.source "ISMADownloadRequest.java"

# interfaces
.implements Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/download/service/isma/ISMADownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# instance fields
.field private final acr:Lcom/audible/mobile/domain/ACR;

.field private final asin:Lcom/audible/mobile/domain/Asin;

.field private final bitrate:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;I)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/audible/mobile/download/service/isma/ISMADownloadRequest$Key;->asin:Lcom/audible/mobile/domain/Asin;

    .line 31
    iput-object p2, p0, Lcom/audible/mobile/download/service/isma/ISMADownloadRequest$Key;->acr:Lcom/audible/mobile/domain/ACR;

    .line 32
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/download/service/isma/ISMADownloadRequest$Key;->bitrate:Ljava/lang/Integer;

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

    if-eqz p1, :cond_5

    .line 55
    const-class v2, Lcom/audible/mobile/download/service/isma/ISMADownloadRequest$Key;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    check-cast p1, Lcom/audible/mobile/download/service/isma/ISMADownloadRequest$Key;

    .line 60
    iget-object v2, p0, Lcom/audible/mobile/download/service/isma/ISMADownloadRequest$Key;->asin:Lcom/audible/mobile/domain/Asin;

    iget-object v3, p1, Lcom/audible/mobile/download/service/isma/ISMADownloadRequest$Key;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 63
    :cond_2
    iget-object v2, p0, Lcom/audible/mobile/download/service/isma/ISMADownloadRequest$Key;->acr:Lcom/audible/mobile/domain/ACR;

    iget-object v3, p1, Lcom/audible/mobile/download/service/isma/ISMADownloadRequest$Key;->acr:Lcom/audible/mobile/domain/ACR;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 66
    :cond_3
    iget-object v2, p0, Lcom/audible/mobile/download/service/isma/ISMADownloadRequest$Key;->bitrate:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/audible/mobile/download/service/isma/ISMADownloadRequest$Key;->bitrate:Ljava/lang/Integer;

    invoke-virtual {v2, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/audible/mobile/download/service/isma/ISMADownloadRequest$Key;->asin:Lcom/audible/mobile/domain/Asin;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 76
    iget-object v2, p0, Lcom/audible/mobile/download/service/isma/ISMADownloadRequest$Key;->acr:Lcom/audible/mobile/domain/ACR;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 77
    iget-object v2, p0, Lcom/audible/mobile/download/service/isma/ISMADownloadRequest$Key;->bitrate:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method
