.class Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher$TrustAllManager;
.super Ljava/lang/Object;
.source "AndroidRemoteConfigurationFetcher.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrustAllManager"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher$1;)V
    .locals 0

    .line 486
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher$TrustAllManager;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
