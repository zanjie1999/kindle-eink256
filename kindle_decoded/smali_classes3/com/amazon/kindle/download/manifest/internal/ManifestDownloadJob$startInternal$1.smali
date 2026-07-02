.class final synthetic Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$startInternal$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "ManifestDownloadJob.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


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
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;)V
    .locals 7

    const-class v3, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;

    const/4 v1, 0x0

    const-string v4, "handleRequestComplete"

    const-string v5, "handleRequestComplete()V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$startInternal$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;

    .line 241
    invoke-virtual {v0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->handleRequestComplete()V

    return-void
.end method
