.class public final Lcom/amazon/kindle/download/ManifestProviderException$ManifestStreamingException;
.super Lcom/amazon/kindle/download/ManifestProviderException;
.source "Exceptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/download/ManifestProviderException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ManifestStreamingException"
.end annotation


# instance fields
.field private final hadInternetConnection:Z

.field private final httpResponse:Lcom/amazon/kindle/webservices/HttpResponseProperties;

.field private final payload:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/webservices/HttpResponseProperties;Ljava/lang/String;ZLjava/lang/Throwable;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p5, v0}, Lcom/amazon/kindle/download/ManifestProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/amazon/kindle/download/ManifestProviderException$ManifestStreamingException;->httpResponse:Lcom/amazon/kindle/webservices/HttpResponseProperties;

    iput-object p3, p0, Lcom/amazon/kindle/download/ManifestProviderException$ManifestStreamingException;->payload:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/amazon/kindle/download/ManifestProviderException$ManifestStreamingException;->hadInternetConnection:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/webservices/HttpResponseProperties;Ljava/lang/String;ZLjava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 16
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/download/ManifestProviderException$ManifestStreamingException;-><init>(Ljava/lang/String;Lcom/amazon/kindle/webservices/HttpResponseProperties;Ljava/lang/String;ZLjava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final getHadInternetConnection()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/amazon/kindle/download/ManifestProviderException$ManifestStreamingException;->hadInternetConnection:Z

    return v0
.end method

.method public final getHttpResponse()Lcom/amazon/kindle/webservices/HttpResponseProperties;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amazon/kindle/download/ManifestProviderException$ManifestStreamingException;->httpResponse:Lcom/amazon/kindle/webservices/HttpResponseProperties;

    return-object v0
.end method

.method public final getPayload()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amazon/kindle/download/ManifestProviderException$ManifestStreamingException;->payload:Ljava/lang/String;

    return-object v0
.end method
