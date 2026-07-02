.class public abstract Lcom/audible/mobile/downloader/AbstractDownloadRequest;
.super Ljava/lang/Object;
.source "AbstractDownloadRequest.java"

# interfaces
.implements Lcom/audible/mobile/downloader/interfaces/DownloadRequest;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/audible/mobile/downloader/interfaces/DownloadRequest<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mCommand:Lcom/audible/mobile/downloader/interfaces/DownloadCommand;

.field private final mDownloadHandler:Lcom/audible/mobile/downloader/interfaces/DownloadHandler;

.field private final mKey:Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mNetworkPolicy:Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;

.field private final mRetryPolicy:Lcom/audible/mobile/downloader/policy/RetryPolicy;

.field private final requiresAuthentication:Z


# direct methods
.method public constructor <init>(Lcom/audible/mobile/downloader/interfaces/DownloadCommand;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/downloader/interfaces/DownloadCommand;",
            "Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;",
            "Lcom/audible/mobile/downloader/policy/RetryPolicy;",
            "Lcom/audible/mobile/downloader/interfaces/DownloadHandler;",
            "TT;)V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 34
    invoke-direct/range {v0 .. v6}, Lcom/audible/mobile/downloader/AbstractDownloadRequest;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadCommand;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;Lcom/audible/mobile/downloader/policy/RetryPolicy;ZLcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;)V

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/downloader/interfaces/DownloadCommand;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;Lcom/audible/mobile/downloader/policy/RetryPolicy;ZLcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/downloader/interfaces/DownloadCommand;",
            "Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;",
            "Lcom/audible/mobile/downloader/policy/RetryPolicy;",
            "Z",
            "Lcom/audible/mobile/downloader/interfaces/DownloadHandler;",
            "TT;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/audible/mobile/downloader/AbstractDownloadRequest;->mCommand:Lcom/audible/mobile/downloader/interfaces/DownloadCommand;

    .line 40
    iput-object p2, p0, Lcom/audible/mobile/downloader/AbstractDownloadRequest;->mNetworkPolicy:Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;

    .line 41
    iput-object p3, p0, Lcom/audible/mobile/downloader/AbstractDownloadRequest;->mRetryPolicy:Lcom/audible/mobile/downloader/policy/RetryPolicy;

    .line 42
    iput-object p5, p0, Lcom/audible/mobile/downloader/AbstractDownloadRequest;->mDownloadHandler:Lcom/audible/mobile/downloader/interfaces/DownloadHandler;

    const-string p1, "Key must not be null"

    .line 43
    invoke-static {p6, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    iput-object p6, p0, Lcom/audible/mobile/downloader/AbstractDownloadRequest;->mKey:Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;

    .line 45
    iput-boolean p4, p0, Lcom/audible/mobile/downloader/AbstractDownloadRequest;->requiresAuthentication:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 87
    instance-of v0, p1, Lcom/audible/mobile/downloader/AbstractDownloadRequest;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 90
    :cond_0
    check-cast p1, Lcom/audible/mobile/downloader/AbstractDownloadRequest;

    .line 91
    iget-object v0, p0, Lcom/audible/mobile/downloader/AbstractDownloadRequest;->mKey:Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;

    iget-object p1, p1, Lcom/audible/mobile/downloader/AbstractDownloadRequest;->mKey:Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCommand()Lcom/audible/mobile/downloader/interfaces/DownloadCommand;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/audible/mobile/downloader/AbstractDownloadRequest;->mCommand:Lcom/audible/mobile/downloader/interfaces/DownloadCommand;

    return-object v0
.end method

.method public getHandler()Lcom/audible/mobile/downloader/interfaces/DownloadHandler;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/audible/mobile/downloader/AbstractDownloadRequest;->mDownloadHandler:Lcom/audible/mobile/downloader/interfaces/DownloadHandler;

    return-object v0
.end method

.method public getKey()Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/audible/mobile/downloader/AbstractDownloadRequest;->mKey:Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;

    return-object v0
.end method

.method public getNetworkPolicy()Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/audible/mobile/downloader/AbstractDownloadRequest;->mNetworkPolicy:Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;

    return-object v0
.end method

.method public getRetryPolicy()Lcom/audible/mobile/downloader/policy/RetryPolicy;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/audible/mobile/downloader/AbstractDownloadRequest;->mRetryPolicy:Lcom/audible/mobile/downloader/policy/RetryPolicy;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/audible/mobile/downloader/AbstractDownloadRequest;->mKey:Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public requiresAuthentication()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/audible/mobile/downloader/AbstractDownloadRequest;->requiresAuthentication:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/downloader/AbstractDownloadRequest;->mKey:Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
