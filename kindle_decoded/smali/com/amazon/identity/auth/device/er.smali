.class final Lcom/amazon/identity/auth/device/er;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final lJ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/amazon/identity/auth/device/er;->lJ:Z

    return-void
.end method

.method static a(Ljava/net/Socket;)V
    .locals 3

    .line 33
    instance-of v0, p0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 38
    check-cast p0, Ljavax/net/ssl/SSLSocket;

    invoke-static {p0}, Lcom/amazon/identity/auth/device/er;->a(Ljavax/net/ssl/SSLSocket;)V

    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "SSLSocket is required, %s is not supported"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(Ljavax/net/ssl/SSLSocket;)V
    .locals 8

    .line 48
    sget-boolean v0, Lcom/amazon/identity/auth/device/er;->lJ:Z

    if-eqz v0, :cond_4

    .line 50
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    .line 51
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 53
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v6, v0, v4

    const-string v7, "TLSv1"

    .line 60
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "TLSv1.1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "TLSv1.2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    add-int/lit8 v7, v5, 0x1

    .line 62
    aput-object v6, v1, v5

    move v5, v7

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    .line 71
    new-array v0, v5, [Ljava/lang/String;

    .line 72
    invoke-static {v1, v3, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    goto :goto_1

    .line 68
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Device does not support TLS"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    return-void
.end method
