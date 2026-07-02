.class public Lcom/audible/mobile/download/service/coverart/CoverArtDownloadRequest$Key;
.super Ljava/lang/Object;
.source "CoverArtDownloadRequest.java"

# interfaces
.implements Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/download/service/coverart/CoverArtDownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# instance fields
.field private final asin:Lcom/audible/mobile/domain/Asin;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/domain/Asin;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/audible/mobile/download/service/coverart/CoverArtDownloadRequest$Key;->asin:Lcom/audible/mobile/domain/Asin;

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

    if-eqz p1, :cond_3

    .line 43
    const-class v2, Lcom/audible/mobile/download/service/coverart/CoverArtDownloadRequest$Key;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 46
    :cond_1
    check-cast p1, Lcom/audible/mobile/download/service/coverart/CoverArtDownloadRequest$Key;

    .line 48
    iget-object v2, p0, Lcom/audible/mobile/download/service/coverart/CoverArtDownloadRequest$Key;->asin:Lcom/audible/mobile/domain/Asin;

    iget-object p1, p1, Lcom/audible/mobile/download/service/coverart/CoverArtDownloadRequest$Key;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/audible/mobile/download/service/coverart/CoverArtDownloadRequest$Key;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
