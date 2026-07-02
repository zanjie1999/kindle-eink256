.class final Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController$onCompletion$1;
.super Ljava/lang/Object;
.source "FeaturedBookWidgetController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->onCompletion(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $image:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController$onCompletion$1;->this$0:Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;

    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController$onCompletion$1;->$image:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 166
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController$onCompletion$1;->$image:Landroid/graphics/Bitmap;

    const-string v1, "null cannot be cast to non-null type android.widget.ImageView"

    const-string v2, "null cannot be cast to non-null type android.widget.TextView"

    const/4 v3, 0x2

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    .line 167
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController$onCompletion$1;->this$0:Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->access$getView$p(Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    sget v6, Lcom/amazon/kindle/ea/R$id;->downloaded_cover:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/widget/ImageView;

    .line 168
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController$onCompletion$1;->$image:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 169
    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 170
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController$onCompletion$1;->this$0:Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;

    invoke-static {v1}, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->access$getSeeInStoreBookCoverListener$p(Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController$onCompletion$1;->this$0:Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->access$getView$p(Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v1, Lcom/amazon/kindle/ea/R$id;->default_cover:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v5

    .line 167
    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v5

    .line 174
    :cond_4
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController$onCompletion$1;->this$0:Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->access$getView$p(Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    sget v6, Lcom/amazon/kindle/ea/R$id;->default_cover:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    check-cast v0, Landroid/widget/TextView;

    .line 175
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController$onCompletion$1;->this$0:Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;

    invoke-static {v2}, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->access$getRecommendation$p(Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;)Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    move-result-object v2

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->title:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController$onCompletion$1;->this$0:Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;

    invoke-static {v6}, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->access$getRecommendation$p(Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;)Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    move-result-object v6

    iget-object v6, v6, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->authors:Ljava/util/List;

    .line 176
    iget-object v7, p0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController$onCompletion$1;->this$0:Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;

    invoke-static {v7}, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->access$getActivity$p(Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 175
    invoke-static {v0, v2, v6, v7}, Lcom/amazon/ea/util/OfflineUtil;->populateOfflineBookImage(Landroid/widget/TextView;Ljava/lang/String;Ljava/util/List;Landroid/content/res/Resources;)V

    .line 177
    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 178
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController$onCompletion$1;->this$0:Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;

    invoke-static {v2}, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->access$getSeeInStoreBookCoverListener$p(Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController$onCompletion$1;->this$0:Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->access$getView$p(Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    sget v2, Lcom/amazon/kindle/ea/R$id;->downloaded_cover:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    :goto_0
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController$onCompletion$1;->this$0:Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->access$getView$p(Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    sget v1, Lcom/amazon/kindle/ea/R$id;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.ProgressBar"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v5

    .line 180
    :cond_7
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v5

    .line 174
    :cond_9
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v5
.end method
