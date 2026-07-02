.class Lcom/amazon/device/ads/AmazonOOAuthenticatedWebRequest;
.super Lcom/amazon/device/ads/HttpURLConnectionWebRequest;
.source "AmazonOOAuthenticatedWebRequest.java"


# instance fields
.field private final authMethod:Lcom/amazon/identity/auth/device/api/AuthenticationMethod;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/api/AuthenticationMethod;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/amazon/device/ads/HttpURLConnectionWebRequest;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/device/ads/AmazonOOAuthenticatedWebRequest;->authMethod:Lcom/amazon/identity/auth/device/api/AuthenticationMethod;

    return-void
.end method


# virtual methods
.method protected openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonOOAuthenticatedWebRequest;->authMethod:Lcom/amazon/identity/auth/device/api/AuthenticationMethod;

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->openConnection(Ljava/net/URL;Lcom/amazon/identity/auth/device/api/AuthenticationMethod;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method
