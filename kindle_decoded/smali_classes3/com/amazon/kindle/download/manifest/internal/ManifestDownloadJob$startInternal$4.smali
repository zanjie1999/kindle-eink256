.class final synthetic Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$startInternal$4;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "ManifestDownloadJob.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->startInternal$com_amazon_kindle_dm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/lang/String;",
        "Lcom/amazon/kindle/webservices/HttpResponseProperties;",
        "Lcom/amazon/kindle/webservices/IManifestWebRequest;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;)V
    .locals 7

    const-class v3, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;

    const/4 v1, 0x3

    const-string v4, "handleManifestResponse"

    const-string v5, "handleManifestResponse(Ljava/lang/String;Lcom/amazon/kindle/webservices/HttpResponseProperties;Lcom/amazon/kindle/webservices/IManifestWebRequest;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/amazon/kindle/webservices/HttpResponseProperties;

    check-cast p3, Lcom/amazon/kindle/webservices/IManifestWebRequest;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$startInternal$4;->invoke(Ljava/lang/String;Lcom/amazon/kindle/webservices/HttpResponseProperties;Lcom/amazon/kindle/webservices/IManifestWebRequest;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;Lcom/amazon/kindle/webservices/HttpResponseProperties;Lcom/amazon/kindle/webservices/IManifestWebRequest;)V
    .locals 1

    const-string v0, "p1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p3"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;

    .line 243
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->handleManifestResponse(Ljava/lang/String;Lcom/amazon/kindle/webservices/HttpResponseProperties;Lcom/amazon/kindle/webservices/IManifestWebRequest;)V

    return-void
.end method
