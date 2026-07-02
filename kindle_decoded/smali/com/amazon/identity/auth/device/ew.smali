.class public final Lcom/amazon/identity/auth/device/ew;
.super Ljava/lang/Object;
.source "DCP"


# direct methods
.method public static c(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 35
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    .line 37
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->ce()Z

    .line 39
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ey;->a(Ljava/net/URLConnection;)V

    return-object p0

    .line 32
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null url is not allowed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
