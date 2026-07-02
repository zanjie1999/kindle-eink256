.class public Lcom/amazon/device/sync/rpc/RPCException;
.super Ljava/lang/RuntimeException;
.source "RPCException.java"


# instance fields
.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHttpStatus:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 23
    iput p2, p0, Lcom/amazon/device/sync/rpc/RPCException;->mHttpStatus:I

    if-nez p3, :cond_0

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/sync/rpc/RPCException;->mHeaders:Ljava/util/Map;

    goto :goto_0

    .line 30
    :cond_0
    iput-object p3, p0, Lcom/amazon/device/sync/rpc/RPCException;->mHeaders:Ljava/util/Map;

    :goto_0
    return-void
.end method


# virtual methods
.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 48
    invoke-virtual {p0}, Lcom/amazon/device/sync/rpc/RPCException;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 49
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 51
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/amazon/device/sync/rpc/RPCException;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getHttpStatus()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/amazon/device/sync/rpc/RPCException;->mHttpStatus:I

    return v0
.end method
