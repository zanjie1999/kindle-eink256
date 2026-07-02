.class public final Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Failure;
.super Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result;
.source "IManifestDownloadJob.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Failure"
.end annotation


# instance fields
.field private final errorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

.field private final httpResponse:Lcom/amazon/kindle/webservices/HttpResponseProperties;

.field private final payload:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;Lcom/amazon/kindle/webservices/HttpResponseProperties;Ljava/lang/String;)V
    .locals 1

    const-string v0, "errorDescriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, v0}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Failure;->errorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    iput-object p2, p0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Failure;->httpResponse:Lcom/amazon/kindle/webservices/HttpResponseProperties;

    iput-object p3, p0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Failure;->payload:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Failure;->errorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    return-object v0
.end method

.method public final getHttpCode()Ljava/lang/Integer;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Failure;->httpResponse:Lcom/amazon/kindle/webservices/HttpResponseProperties;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/HttpResponseProperties;->getResponseStatus()Lcom/amazon/kindle/webservices/HTTPResponseStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/HTTPResponseStatus;->getHttpCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getHttpResponse()Lcom/amazon/kindle/webservices/HttpResponseProperties;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Failure;->httpResponse:Lcom/amazon/kindle/webservices/HttpResponseProperties;

    return-object v0
.end method

.method public final getPayload()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Failure;->payload:Ljava/lang/String;

    return-object v0
.end method
