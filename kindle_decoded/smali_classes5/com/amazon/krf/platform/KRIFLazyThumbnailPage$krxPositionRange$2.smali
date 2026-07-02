.class final Lcom/amazon/krf/platform/KRIFLazyThumbnailPage$krxPositionRange$2;
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
        "Lcom/amazon/android/docviewer/IPositionRange;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;


# direct methods
.method constructor <init>(Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage$krxPositionRange$2;->this$0:Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/android/docviewer/IPositionRange;
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage$krxPositionRange$2;->this$0:Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;

    invoke-static {v0}, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;->access$getPageModel$p(Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;)Lcom/amazon/krf/platform/PageModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Lcom/amazon/krf/platform/PageModel;->getPositionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/KRIFUtils;->convertToKRXPositionRange(Lcom/amazon/krf/platform/PositionRange;)Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "com.amazon.krf.platform.KRIFThumbnailPage"

    const-string v1, "null PageModel. Returning invalid range."

    .line 93
    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BasePage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage$krxPositionRange$2;->this$0:Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;

    invoke-static {v1}, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;->access$getBasePage$p(Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;)Lcom/amazon/krf/platform/PageModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage$krxPositionRange$2;->this$0:Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;

    invoke-static {v1}, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;->access$getBpOffset$p(Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    new-instance v0, Lcom/amazon/android/docviewer/IntPositionRange;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(II)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage$krxPositionRange$2;->invoke()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v0

    return-object v0
.end method
