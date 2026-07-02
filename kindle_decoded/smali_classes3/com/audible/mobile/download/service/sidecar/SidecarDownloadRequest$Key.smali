.class public Lcom/audible/mobile/download/service/sidecar/SidecarDownloadRequest$Key;
.super Ljava/lang/Object;
.source "SidecarDownloadRequest.java"

# interfaces
.implements Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/download/service/sidecar/SidecarDownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# instance fields
.field private final asin:Lcom/audible/mobile/domain/Asin;

.field private final customerId:Lcom/audible/mobile/domain/CustomerId;

.field private final format:Lcom/audible/mobile/domain/Format;

.field private final guid:Lcom/audible/mobile/domain/GUID;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/GUID;Lcom/audible/mobile/domain/Format;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/audible/mobile/download/service/sidecar/SidecarDownloadRequest$Key;->customerId:Lcom/audible/mobile/domain/CustomerId;

    .line 34
    iput-object p2, p0, Lcom/audible/mobile/download/service/sidecar/SidecarDownloadRequest$Key;->asin:Lcom/audible/mobile/domain/Asin;

    .line 35
    iput-object p3, p0, Lcom/audible/mobile/download/service/sidecar/SidecarDownloadRequest$Key;->guid:Lcom/audible/mobile/domain/GUID;

    .line 36
    iput-object p4, p0, Lcom/audible/mobile/download/service/sidecar/SidecarDownloadRequest$Key;->format:Lcom/audible/mobile/domain/Format;

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

    .line 44
    const-class v2, Lcom/audible/mobile/download/service/sidecar/SidecarDownloadRequest$Key;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 47
    :cond_1
    check-cast p1, Lcom/audible/mobile/download/service/sidecar/SidecarDownloadRequest$Key;

    .line 49
    iget-object v2, p0, Lcom/audible/mobile/download/service/sidecar/SidecarDownloadRequest$Key;->asin:Lcom/audible/mobile/domain/Asin;

    iget-object v3, p1, Lcom/audible/mobile/download/service/sidecar/SidecarDownloadRequest$Key;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 51
    :cond_2
    iget-object v2, p0, Lcom/audible/mobile/download/service/sidecar/SidecarDownloadRequest$Key;->guid:Lcom/audible/mobile/domain/GUID;

    iget-object v3, p1, Lcom/audible/mobile/download/service/sidecar/SidecarDownloadRequest$Key;->guid:Lcom/audible/mobile/domain/GUID;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 53
    :cond_3
    iget-object v2, p0, Lcom/audible/mobile/download/service/sidecar/SidecarDownloadRequest$Key;->customerId:Lcom/audible/mobile/domain/CustomerId;

    iget-object v3, p1, Lcom/audible/mobile/download/service/sidecar/SidecarDownloadRequest$Key;->customerId:Lcom/audible/mobile/domain/CustomerId;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 55
    :cond_4
    iget-object v2, p0, Lcom/audible/mobile/download/service/sidecar/SidecarDownloadRequest$Key;->format:Lcom/audible/mobile/domain/Format;

    iget-object p1, p1, Lcom/audible/mobile/download/service/sidecar/SidecarDownloadRequest$Key;->format:Lcom/audible/mobile/domain/Format;

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/audible/mobile/download/service/sidecar/SidecarDownloadRequest$Key;->customerId:Lcom/audible/mobile/domain/CustomerId;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 65
    iget-object v1, p0, Lcom/audible/mobile/download/service/sidecar/SidecarDownloadRequest$Key;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 66
    iget-object v1, p0, Lcom/audible/mobile/download/service/sidecar/SidecarDownloadRequest$Key;->guid:Lcom/audible/mobile/domain/GUID;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 67
    iget-object v1, p0, Lcom/audible/mobile/download/service/sidecar/SidecarDownloadRequest$Key;->format:Lcom/audible/mobile/domain/Format;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
