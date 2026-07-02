.class final Lcom/amazon/krf/platform/KRIFBaseThumbnailPage$krxPositionRange$2;
.super Lkotlin/jvm/internal/Lambda;
.source "KRIFThumbnailPage.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/platform/KRIFBaseThumbnailPage;-><init>(Lcom/amazon/krf/platform/PageModel;)V
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
.field final synthetic this$0:Lcom/amazon/krf/platform/KRIFBaseThumbnailPage;


# direct methods
.method constructor <init>(Lcom/amazon/krf/platform/KRIFBaseThumbnailPage;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/krf/platform/KRIFBaseThumbnailPage$krxPositionRange$2;->this$0:Lcom/amazon/krf/platform/KRIFBaseThumbnailPage;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/android/docviewer/IPositionRange;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFBaseThumbnailPage$krxPositionRange$2;->this$0:Lcom/amazon/krf/platform/KRIFBaseThumbnailPage;

    invoke-static {v0}, Lcom/amazon/krf/platform/KRIFBaseThumbnailPage;->access$getPageModel$p(Lcom/amazon/krf/platform/KRIFBaseThumbnailPage;)Lcom/amazon/krf/platform/PageModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/krf/platform/PageModel;->getPositionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/KRIFUtils;->convertToKRXPositionRange(Lcom/amazon/krf/platform/PositionRange;)Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRIFBaseThumbnailPage$krxPositionRange$2;->invoke()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v0

    return-object v0
.end method
