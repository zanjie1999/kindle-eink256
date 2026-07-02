.class final Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$fetch$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "MDSManifestProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;->fetch(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.amazon.kindle.download.manifest.providers.MDSManifestProvider"
    f = "MDSManifestProvider.kt"
    l = {
        0x29
    }
    m = "fetch"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$fetch$1;->this$0:Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$fetch$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$fetch$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$fetch$1;->label:I

    iget-object p1, p0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$fetch$1;->this$0:Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;->fetch(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
