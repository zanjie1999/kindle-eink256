.class final synthetic Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$downloadManifest$2$delegate$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "MDSManifestProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;->downloadManifest(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;",
        "Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Success;",
        "Lcom/amazon/kindle/download/manifest/MDSManifest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;)V
    .locals 7

    const-class v3, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;

    const/4 v1, 0x2

    const-string v4, "handleManifestPayload"

    const-string v5, "handleManifestPayload(Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Success;)Lcom/amazon/kindle/download/manifest/MDSManifest;"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Success;)Lcom/amazon/kindle/download/manifest/MDSManifest;
    .locals 1

    const-string v0, "p1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;

    .line 47
    invoke-static {v0, p1, p2}, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;->access$handleManifestPayload(Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Success;)Lcom/amazon/kindle/download/manifest/MDSManifest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p1, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;

    check-cast p2, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Success;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$downloadManifest$2$delegate$1;->invoke(Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Success;)Lcom/amazon/kindle/download/manifest/MDSManifest;

    move-result-object p1

    return-object p1
.end method
