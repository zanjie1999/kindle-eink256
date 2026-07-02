.class final Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbCardCoverImageHandler;
.super Ljava/lang/Object;
.source "BlurbCardController.kt"

# interfaces
.implements Lcom/amazon/readingactions/helpers/KUImageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/BlurbCardController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BlurbCardCoverImageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;


# direct methods
.method public constructor <init>(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 210
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbCardCoverImageHandler;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateAndReloadBookImage(I)V
    .locals 4

    .line 212
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbCardCoverImageHandler;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getCoverImageList$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbCardCoverImageHandler;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {v1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getRecommendationsBookCoverImageHelper$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbCardCoverImageHandler;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {v2}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getResources$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "resources"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->getCoverDrawable(ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 212
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbCardCoverImageHandler;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getBlurbAdapter$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method
