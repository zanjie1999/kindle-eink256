.class final Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$fetchManifest$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "WorkflowUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt;->fetchManifest(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lcom/amazon/kindle/download/manifest/ManifestRepo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.amazon.kindle.download.workflow.WorkflowUtilsKt"
    f = "WorkflowUtils.kt"
    l = {
        0xa7
    }
    m = "fetchManifest"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$fetchManifest$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$fetchManifest$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$fetchManifest$1;->label:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt;->fetchManifest(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lcom/amazon/kindle/download/manifest/ManifestRepo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
