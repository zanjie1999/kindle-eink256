.class public Lcom/audible/mobile/download/service/sync/PositionSyncDownloadRequest$Key;
.super Ljava/lang/Object;
.source "PositionSyncDownloadRequest.java"

# interfaces
.implements Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/download/service/sync/PositionSyncDownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# instance fields
.field private final syncACR:Lcom/audible/mobile/domain/ACR;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/domain/ACR;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/audible/mobile/download/service/sync/PositionSyncDownloadRequest$Key;->syncACR:Lcom/audible/mobile/domain/ACR;

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

    .line 38
    const-class v2, Lcom/audible/mobile/download/service/sync/PositionSyncDownloadRequest$Key;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 41
    :cond_1
    check-cast p1, Lcom/audible/mobile/download/service/sync/PositionSyncDownloadRequest$Key;

    .line 43
    iget-object v2, p0, Lcom/audible/mobile/download/service/sync/PositionSyncDownloadRequest$Key;->syncACR:Lcom/audible/mobile/domain/ACR;

    iget-object p1, p1, Lcom/audible/mobile/download/service/sync/PositionSyncDownloadRequest$Key;->syncACR:Lcom/audible/mobile/domain/ACR;

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

    .line 52
    iget-object v0, p0, Lcom/audible/mobile/download/service/sync/PositionSyncDownloadRequest$Key;->syncACR:Lcom/audible/mobile/domain/ACR;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
