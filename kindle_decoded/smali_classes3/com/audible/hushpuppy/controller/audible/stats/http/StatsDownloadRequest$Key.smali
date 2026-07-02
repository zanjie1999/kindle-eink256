.class public final Lcom/audible/hushpuppy/controller/audible/stats/http/StatsDownloadRequest$Key;
.super Ljava/lang/Object;
.source "StatsDownloadRequest.java"

# interfaces
.implements Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/controller/audible/stats/http/StatsDownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation


# instance fields
.field private final command:Lcom/audible/mobile/downloader/interfaces/DownloadCommand;


# direct methods
.method constructor <init>(Lcom/audible/mobile/downloader/interfaces/DownloadCommand;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsDownloadRequest$Key;->command:Lcom/audible/mobile/downloader/interfaces/DownloadCommand;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 59
    const-class v0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsDownloadRequest$Key;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 63
    :cond_1
    check-cast p1, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsDownloadRequest$Key;

    .line 65
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsDownloadRequest$Key;->command:Lcom/audible/mobile/downloader/interfaces/DownloadCommand;

    iget-object p1, p1, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsDownloadRequest$Key;->command:Lcom/audible/mobile/downloader/interfaces/DownloadCommand;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsDownloadRequest$Key;->command:Lcom/audible/mobile/downloader/interfaces/DownloadCommand;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key{command="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsDownloadRequest$Key;->command:Lcom/audible/mobile/downloader/interfaces/DownloadCommand;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
