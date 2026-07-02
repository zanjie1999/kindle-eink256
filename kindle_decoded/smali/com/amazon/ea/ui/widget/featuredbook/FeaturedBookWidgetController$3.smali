.class Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController$3;
.super Ljava/lang/Object;
.source "FeaturedBookWidgetController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->onCompletion(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;

.field final synthetic val$image:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController$3;->this$0:Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;

    iput-object p2, p0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController$3;->val$image:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 194
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController$3;->val$image:Landroid/graphics/Bitmap;

    const/4 v1, 0x2

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController$3;->this$0:Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->access$200(Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;)Landroid/view/View;

    move-result-object v0

    sget v3, Lcom/amazon/kindle/ea/R$id;->downloaded_cover:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 196
    iget-object v3, p0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController$3;->val$image:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 197
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 198
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController$3;->this$0:Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;

    invoke-static {v1}, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->access$300(Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController$3;->this$0:Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->access$200(Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$id;->default_cover:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController$3;->this$0:Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->access$200(Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;)Landroid/view/View;

    move-result-object v0

    sget v3, Lcom/amazon/kindle/ea/R$id;->default_cover:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 203
    iget-object v3, p0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController$3;->this$0:Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;

    invoke-static {v3}, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->access$100(Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;)Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    move-result-object v3

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->title:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController$3;->this$0:Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;

    invoke-static {v4}, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->access$100(Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;)Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    move-result-object v4

    iget-object v4, v4, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->authors:Ljava/util/List;

    iget-object v5, p0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController$3;->this$0:Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;

    .line 204
    invoke-static {v5}, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->access$400(Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 203
    invoke-static {v0, v3, v4, v5}, Lcom/amazon/ea/util/OfflineUtil;->populateOfflineBookImage(Landroid/widget/TextView;Ljava/lang/String;Ljava/util/List;Landroid/content/res/Resources;)V

    .line 205
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 206
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController$3;->this$0:Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;

    invoke-static {v1}, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->access$300(Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController$3;->this$0:Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->access$200(Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$id;->downloaded_cover:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 210
    :goto_0
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController$3;->this$0:Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->access$200(Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$id;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
