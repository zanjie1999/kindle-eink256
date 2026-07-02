.class public final Lcom/amazon/kindle/webservices/X509CustomTrust$Builder;
.super Ljava/lang/Object;
.source "X509CertificateUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/webservices/X509CustomTrust;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final x509Certs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/webservices/X509CustomTrust$Builder;->x509Certs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addPlatformTrustedCertificates()Lcom/amazon/kindle/webservices/X509CustomTrust$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/amazon/kindle/webservices/X509CustomTrust$Builder;->x509Certs:Ljava/util/List;

    invoke-static {}, Lcom/amazon/kindle/webservices/X509CertificateUtilsKt;->getPlatformX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v1

    const-string v2, "getPlatformX509TrustManager().acceptedIssuers"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addTrustedCertificates(Ljava/util/List;)Lcom/amazon/kindle/webservices/X509CustomTrust$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Lcom/amazon/kindle/webservices/X509CustomTrust$Builder;"
        }
    .end annotation

    const-string v0, "certificates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/amazon/kindle/webservices/X509CustomTrust$Builder;->x509Certs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final build()Lcom/amazon/kindle/webservices/X509CustomTrust;
    .locals 3

    .line 184
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/webservices/X509CustomTrust$Builder;->x509Certs:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/amazon/kindle/webservices/X509CertificateUtilsKt;->x509TrustManagerOf(Ljava/lang/String;Ljava/util/List;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 185
    invoke-static {v0}, Lcom/amazon/kindle/webservices/X509CertificateUtilsKt;->createSSLContext(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 186
    new-instance v2, Lcom/amazon/kindle/webservices/X509CustomTrust;

    invoke-direct {v2, v1, v0}, Lcom/amazon/kindle/webservices/X509CustomTrust;-><init>(Ljavax/net/ssl/SSLContext;Ljavax/net/ssl/X509TrustManager;)V

    return-object v2
.end method
