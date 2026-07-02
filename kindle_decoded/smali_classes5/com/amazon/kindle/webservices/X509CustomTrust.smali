.class public final Lcom/amazon/kindle/webservices/X509CustomTrust;
.super Ljava/lang/Object;
.source "X509CertificateUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/webservices/X509CustomTrust$Builder;
    }
.end annotation


# instance fields
.field private final sslContext:Ljavax/net/ssl/SSLContext;

.field private final trustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLContext;Ljavax/net/ssl/X509TrustManager;)V
    .locals 1

    const-string/jumbo v0, "sslContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "trustManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/webservices/X509CustomTrust;->sslContext:Ljavax/net/ssl/SSLContext;

    iput-object p2, p0, Lcom/amazon/kindle/webservices/X509CustomTrust;->trustManager:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kindle/webservices/X509CustomTrust;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/webservices/X509CustomTrust;

    iget-object v0, p0, Lcom/amazon/kindle/webservices/X509CustomTrust;->sslContext:Ljavax/net/ssl/SSLContext;

    iget-object v1, p1, Lcom/amazon/kindle/webservices/X509CustomTrust;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/webservices/X509CustomTrust;->trustManager:Ljavax/net/ssl/X509TrustManager;

    iget-object p1, p1, Lcom/amazon/kindle/webservices/X509CustomTrust;->trustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getSslContext()Ljavax/net/ssl/SSLContext;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/amazon/kindle/webservices/X509CustomTrust;->sslContext:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method public final getTrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/amazon/kindle/webservices/X509CustomTrust;->trustManager:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/webservices/X509CustomTrust;->sslContext:Ljavax/net/ssl/SSLContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/webservices/X509CustomTrust;->trustManager:Ljavax/net/ssl/X509TrustManager;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "X509CustomTrust(sslContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/webservices/X509CustomTrust;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trustManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/webservices/X509CustomTrust;->trustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
