.class public Lcom/audible/mobile/downloader/BaseStatefulRequest;
.super Ljava/lang/Object;
.source "BaseStatefulRequest.java"

# interfaces
.implements Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Request::",
        "Lcom/audible/mobile/downloader/interfaces/DownloadRequest<",
        "TKey;>;Key::",
        "Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest<",
        "TRequest;TKey;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final key:Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TKey;"
        }
    .end annotation
.end field

.field private final request:Lcom/audible/mobile/downloader/interfaces/DownloadRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequest;"
        }
    .end annotation
.end field

.field private state:Lcom/audible/mobile/downloader/DownloadStatus;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/downloader/interfaces/DownloadRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequest;)V"
        }
    .end annotation

    .line 36
    invoke-interface {p1}, Lcom/audible/mobile/downloader/interfaces/DownloadRequest;->getKey()Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/audible/mobile/downloader/BaseStatefulRequest;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadRequest;Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;)V

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/downloader/interfaces/DownloadRequest;Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequest;TKey;)V"
        }
    .end annotation

    .line 41
    sget-object v0, Lcom/audible/mobile/downloader/DownloadStatus;->QUEUED:Lcom/audible/mobile/downloader/DownloadStatus;

    invoke-direct {p0, p1, p2, v0}, Lcom/audible/mobile/downloader/BaseStatefulRequest;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadRequest;Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;Lcom/audible/mobile/downloader/DownloadStatus;)V

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/downloader/interfaces/DownloadRequest;Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;Lcom/audible/mobile/downloader/DownloadStatus;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequest;TKey;",
            "Lcom/audible/mobile/downloader/DownloadStatus;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Key cannot be null in base stateful request"

    .line 46
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    iput-object p1, p0, Lcom/audible/mobile/downloader/BaseStatefulRequest;->request:Lcom/audible/mobile/downloader/interfaces/DownloadRequest;

    .line 48
    iput-object p2, p0, Lcom/audible/mobile/downloader/BaseStatefulRequest;->key:Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;

    .line 49
    iput-object p3, p0, Lcom/audible/mobile/downloader/BaseStatefulRequest;->state:Lcom/audible/mobile/downloader/DownloadStatus;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 79
    instance-of v0, p1, Lcom/audible/mobile/downloader/BaseStatefulRequest;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/audible/mobile/downloader/BaseStatefulRequest;->key:Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;

    check-cast p1, Lcom/audible/mobile/downloader/BaseStatefulRequest;

    iget-object p1, p1, Lcom/audible/mobile/downloader/BaseStatefulRequest;->key:Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getDownloadStatus()Lcom/audible/mobile/downloader/DownloadStatus;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/audible/mobile/downloader/BaseStatefulRequest;->state:Lcom/audible/mobile/downloader/DownloadStatus;

    return-object v0
.end method

.method public getKey()Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TKey;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/audible/mobile/downloader/BaseStatefulRequest;->key:Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;

    return-object v0
.end method

.method public getRequest()Lcom/audible/mobile/downloader/interfaces/DownloadRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRequest;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/audible/mobile/downloader/BaseStatefulRequest;->request:Lcom/audible/mobile/downloader/interfaces/DownloadRequest;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/audible/mobile/downloader/BaseStatefulRequest;->key:Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setDownloadStatus(Lcom/audible/mobile/downloader/DownloadStatus;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/audible/mobile/downloader/BaseStatefulRequest;->state:Lcom/audible/mobile/downloader/DownloadStatus;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/audible/mobile/downloader/BaseStatefulRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [ Key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/downloader/BaseStatefulRequest;->key:Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/downloader/BaseStatefulRequest;->state:Lcom/audible/mobile/downloader/DownloadStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
