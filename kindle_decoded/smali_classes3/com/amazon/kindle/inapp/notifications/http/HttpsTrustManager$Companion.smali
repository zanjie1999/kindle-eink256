.class public final Lcom/amazon/kindle/inapp/notifications/http/HttpsTrustManager$Companion;
.super Ljava/lang/Object;
.source "HttpsTrustManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/inapp/notifications/http/HttpsTrustManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/http/HttpsTrustManager$Companion;-><init>()V

    return-void
.end method

.method private final getTAG()Ljava/lang/String;
    .locals 1

    .line 21
    invoke-static {}, Lcom/amazon/kindle/inapp/notifications/http/HttpsTrustManager;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getCustomHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/http/HttpsTrustManager$Companion$getCustomHostnameVerifier$1;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/http/HttpsTrustManager$Companion$getCustomHostnameVerifier$1;

    return-object v0
.end method

.method public final getCustomSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "TLS"

    .line 25
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/amazon/kindle/inapp/notifications/http/HttpsTrustManager;

    const/4 v3, 0x0

    .line 26
    new-instance v4, Lcom/amazon/kindle/inapp/notifications/http/HttpsTrustManager;

    invoke-direct {v4}, Lcom/amazon/kindle/inapp/notifications/http/HttpsTrustManager;-><init>()V

    aput-object v4, v2, v3

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    const-string v2, "context"

    .line 27
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 29
    sget-object v2, Lcom/amazon/kindle/inapp/notifications/logging/Log;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/logging/Log;

    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/http/HttpsTrustManager$Companion;->getTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TAG"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "Fail to generate SSL socket factory."

    invoke-virtual {v2, v3, v4, v1}, Lcom/amazon/kindle/inapp/notifications/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
