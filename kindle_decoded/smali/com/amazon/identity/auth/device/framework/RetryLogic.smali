.class public abstract Lcom/amazon/identity/auth/device/framework/RetryLogic;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;,
        Lcom/amazon/identity/auth/device/framework/RetryLogic$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RetryLogic"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/net/URL;Lcom/amazon/identity/auth/device/ej;)V
    .locals 4

    if-lez p0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    int-to-double v2, p0

    div-double/2addr v0, v2

    .line 101
    invoke-static {p1}, Lcom/amazon/identity/auth/device/mm;->j(Ljava/net/URL;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0, v0, v1}, Lcom/amazon/identity/auth/device/ej;->incrementCounter(Ljava/lang/String;D)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/net/URL;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/kcpsdk/common/BackoffException;
        }
    .end annotation

    .line 122
    invoke-static {p0}, Lcom/amazon/identity/auth/device/lq;->f(Ljava/net/URL;)Lcom/amazon/identity/auth/device/lp;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/lp;->is()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    invoke-static {p0}, Lcom/amazon/identity/auth/device/lq;->f(Ljava/net/URL;)Lcom/amazon/identity/auth/device/lp;

    move-result-object v1

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 129
    sget-object v3, Lcom/amazon/identity/auth/device/framework/RetryLogic;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const-string v8, "Host is %s not available and MAP is applying backoff"

    invoke-static {v4, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 130
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "BackoffException:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/lp;->iq()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 134
    new-instance v3, Lcom/amazon/identity/kcpsdk/common/BackoffException;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v6, v7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v6, v5

    const-string p0, "Service %s is unavailable and MAP is applying backoff, please retry after %d ms."

    invoke-static {v4, p0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0, v0}, Lcom/amazon/identity/kcpsdk/common/BackoffException;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/lp;)V

    throw v3

    .line 141
    :cond_0
    new-instance v1, Lcom/amazon/identity/kcpsdk/common/BackoffException;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v5, [Ljava/lang/Object;

    .line 142
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v7

    const-string p0, "MAP run in to a rare race condition during backoff interval, this call is backed off but %s server is back to available after this point."

    .line 141
    invoke-static {v2, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/amazon/identity/kcpsdk/common/BackoffException;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/lp;)V

    throw v1

    :cond_1
    return-void
.end method

.method public static b(Ljava/net/URL;)Z
    .locals 0

    .line 150
    invoke-static {p0}, Lcom/amazon/identity/auth/device/lq;->f(Ljava/net/URL;)Lcom/amazon/identity/auth/device/lp;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Ljava/net/HttpURLConnection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/framework/RetryLogic;->a(Ljava/net/URL;)V

    .line 113
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 115
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/amazon/identity/auth/device/lq;->a(ILjava/net/URL;)Lcom/amazon/identity/auth/device/lp;

    return v0
.end method

.method public static e(Ljava/net/HttpURLConnection;)V
    .locals 3

    .line 155
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/lq;->f(Ljava/net/URL;)Lcom/amazon/identity/auth/device/lp;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/lp;->ir()I

    move-result v0

    if-lez v0, :cond_1

    .line 162
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->bc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "x-amzn-identity-retry-attempt"

    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static j(I)Z
    .locals 1

    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_0

    const/16 v0, 0x257

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public abstract a(Ljava/net/HttpURLConnection;ILcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/framework/RetryLogic$a;
.end method

.method public abstract cR()I
.end method
