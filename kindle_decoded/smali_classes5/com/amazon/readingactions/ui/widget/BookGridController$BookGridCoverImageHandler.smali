.class final Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridCoverImageHandler;
.super Ljava/lang/Object;
.source "BookGridController.kt"

# interfaces
.implements Lcom/amazon/readingactions/helpers/KUImageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/BookGridController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BookGridCoverImageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;


# direct methods
.method public constructor <init>(Lcom/amazon/readingactions/ui/widget/BookGridController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 286
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridCoverImageHandler;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateAndReloadBookImage(I)V
    .locals 5

    .line 288
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridCoverImageHandler;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getBookGridView$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Lcom/amazon/readingactions/ui/widget/BookGridView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridCoverImageHandler;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getBookGridView$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Lcom/amazon/readingactions/ui/widget/BookGridView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 292
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridCoverImageHandler;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v1}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getRecommendationsBookCoverImageHelper$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridCoverImageHandler;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v2}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getResources$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "resources"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->getCoverDrawable(ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 293
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridCoverImageHandler;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v2}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getRecommendationsBookCoverImageHelper$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    move-result-object v2

    iget-object v4, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridCoverImageHandler;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v4}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getResources$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1, v4}, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->getCoverContentDescription(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    .line 291
    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/readingactions/ui/widget/BookGridView;->reloadCover(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method
