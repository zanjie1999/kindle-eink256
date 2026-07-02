.class public final Lcom/amazon/kindle/download/ManifestProviderException$ManifestParsingException;
.super Lcom/amazon/kindle/download/ManifestProviderException;
.source "Exceptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/download/ManifestProviderException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ManifestParsingException"
.end annotation


# instance fields
.field private final cause:Ljava/lang/Throwable;

.field private final httpResponse:Lcom/amazon/kindle/webservices/HttpResponseProperties;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/webservices/HttpResponseProperties;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cause"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p3, v0}, Lcom/amazon/kindle/download/ManifestProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/amazon/kindle/download/ManifestProviderException$ManifestParsingException;->httpResponse:Lcom/amazon/kindle/webservices/HttpResponseProperties;

    iput-object p3, p0, Lcom/amazon/kindle/download/ManifestProviderException$ManifestParsingException;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/kindle/download/ManifestProviderException$ManifestParsingException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final getHttpResponse()Lcom/amazon/kindle/webservices/HttpResponseProperties;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/kindle/download/ManifestProviderException$ManifestParsingException;->httpResponse:Lcom/amazon/kindle/webservices/HttpResponseProperties;

    return-object v0
.end method
