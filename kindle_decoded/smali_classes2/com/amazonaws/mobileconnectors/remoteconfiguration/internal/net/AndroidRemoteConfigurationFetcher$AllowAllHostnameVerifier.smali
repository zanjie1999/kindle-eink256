.class Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher$AllowAllHostnameVerifier;
.super Ljava/lang/Object;
.source "AndroidRemoteConfigurationFetcher.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AllowAllHostnameVerifier"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher$1;)V
    .locals 0

    .line 508
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher$AllowAllHostnameVerifier;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
