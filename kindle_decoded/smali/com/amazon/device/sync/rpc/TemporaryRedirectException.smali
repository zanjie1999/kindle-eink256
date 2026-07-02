.class public Lcom/amazon/device/sync/rpc/TemporaryRedirectException;
.super Lcom/amazon/device/sync/rpc/RPCException;
.source "TemporaryRedirectException.java"


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "Temporary Redirect"

    const/16 v1, 0x133

    .line 14
    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/device/sync/rpc/RPCException;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    return-void
.end method
