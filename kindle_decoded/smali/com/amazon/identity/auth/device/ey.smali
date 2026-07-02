.class public final Lcom/amazon/identity/auth/device/ey;
.super Ljava/lang/Object;
.source "DCP"


# direct methods
.method static a(Ljava/net/URLConnection;)V
    .locals 1

    .line 36
    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 38
    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v0, Lcom/amazon/identity/auth/device/ev;->lM:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_0
    return-void
.end method
