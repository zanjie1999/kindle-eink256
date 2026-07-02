.class public final Lcom/amazon/identity/auth/device/dy;
.super Ljava/lang/Object;
.source "DCP"


# direct methods
.method public static a(Ljava/net/URL;Lcom/amazon/identity/auth/device/framework/RetryLogic;Lcom/amazon/identity/auth/device/ej;Landroid/content/Context;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    .line 36
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ew;->c(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    .line 38
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_0

    .line 40
    new-instance v0, Lcom/amazon/identity/auth/device/dx;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/dx;-><init>(Ljava/net/URL;Lcom/amazon/identity/auth/device/framework/RetryLogic;Lcom/amazon/identity/auth/device/ej;Landroid/content/Context;)V

    return-object v0

    .line 42
    :cond_0
    instance-of v0, v0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 44
    new-instance v0, Lcom/amazon/identity/auth/device/dw;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/dw;-><init>(Ljava/net/URL;Lcom/amazon/identity/auth/device/framework/RetryLogic;Lcom/amazon/identity/auth/device/ej;Landroid/content/Context;)V

    return-object v0

    .line 47
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Url must be an Https or Http Url"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 33
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must Specify Retry Logic"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must Specify a URL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
