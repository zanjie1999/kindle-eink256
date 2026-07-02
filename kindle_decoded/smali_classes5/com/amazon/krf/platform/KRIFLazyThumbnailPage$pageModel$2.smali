.class final Lcom/amazon/krf/platform/KRIFLazyThumbnailPage$pageModel$2;
.super Lkotlin/jvm/internal/Lambda;
.source "KRIFThumbnailPage.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;-><init>(Lcom/amazon/krf/platform/KRIFPageManager;Lcom/amazon/krf/platform/PageModel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/krf/platform/PageModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;


# direct methods
.method constructor <init>(Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage$pageModel$2;->this$0:Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/krf/platform/PageModel;
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage$pageModel$2;->this$0:Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;

    invoke-static {v0}, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;->access$getPageManager$p(Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;)Lcom/amazon/krf/platform/KRIFPageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const-string v2, "KRIFLazyThumbnailPage get page model for offset page"

    .line 76
    invoke-static {v2, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 77
    iget-object v1, p0, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage$pageModel$2;->this$0:Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;

    invoke-static {v1}, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;->access$getBasePage$p(Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;)Lcom/amazon/krf/platform/PageModel;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage$pageModel$2;->this$0:Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;

    invoke-static {v3}, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;->access$getBpOffset$p(Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/amazon/krf/platform/KRIFPageManager;->getPageModel(Lcom/amazon/krf/platform/PageModel;I)Lcom/amazon/krf/platform/PageModel;

    move-result-object v0

    const/4 v1, 0x0

    .line 78
    invoke-static {v2, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage$pageModel$2;->invoke()Lcom/amazon/krf/platform/PageModel;

    move-result-object v0

    return-object v0
.end method
