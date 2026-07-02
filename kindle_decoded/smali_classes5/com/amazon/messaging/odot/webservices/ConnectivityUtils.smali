.class public final Lcom/amazon/messaging/odot/webservices/ConnectivityUtils;
.super Ljava/lang/Object;
.source "ConnectivityUtils.java"


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v3, 0x4

    .line 15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/4 v4, 0x5

    .line 16
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v1, v7

    .line 17
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x3

    aput-object v6, v1, v8

    .line 18
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v3

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    .line 14
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    new-array v0, v8, [Ljava/lang/Integer;

    .line 21
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x7

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x9

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    .line 21
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    return-void
.end method

.method public static isConnected(Lcom/amazon/messaging/odot/webservices/ConnectivityManagerWrapper;I)Z
    .locals 2

    .line 59
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/ConnectivityManagerWrapper;->getActiveNetworkInfo()Lcom/amazon/messaging/odot/webservices/util/NetworkInfoWrapper;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 60
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/util/NetworkInfoWrapper;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/util/NetworkInfoWrapper;->getType()I

    move-result p0

    if-ne p1, p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method
