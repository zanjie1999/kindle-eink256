.class final Lcom/amazon/readingactions/ui/widget/ShovelerController$createView$1;
.super Ljava/lang/Object;
.source "ShovelerController.kt"

# interfaces
.implements Lcom/amazon/startactions/storage/ImageBatchDownloader$BatchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/ShovelerController;->createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $covers:[Landroid/widget/ImageView;

.field final synthetic $paddingBetweenBooks:I

.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/ShovelerController;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/widget/ShovelerController;[Landroid/widget/ImageView;I)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/ShovelerController$createView$1;->this$0:Lcom/amazon/readingactions/ui/widget/ShovelerController;

    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/ShovelerController$createView$1;->$covers:[Landroid/widget/ImageView;

    iput p3, p0, Lcom/amazon/readingactions/ui/widget/ShovelerController$createView$1;->$paddingBetweenBooks:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyImage(ILandroid/graphics/Bitmap;)V
    .locals 4

    if-eqz p2, :cond_0

    .line 133
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/ShovelerController$createView$1;->this$0:Lcom/amazon/readingactions/ui/widget/ShovelerController;

    invoke-static {v1}, Lcom/amazon/readingactions/ui/widget/ShovelerController;->access$getResources$p(Lcom/amazon/readingactions/ui/widget/ShovelerController;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/ShovelerController$createView$1;->this$0:Lcom/amazon/readingactions/ui/widget/ShovelerController;

    invoke-static {p2}, Lcom/amazon/readingactions/ui/widget/ShovelerController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/ShovelerController;)Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;

    move-result-object p2

    iget-object p2, p2, Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    .line 136
    new-instance v0, Lcom/amazon/ea/ui/PlaceholderCoverDrawable;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/ShovelerController$createView$1;->this$0:Lcom/amazon/readingactions/ui/widget/ShovelerController;

    invoke-static {v1}, Lcom/amazon/readingactions/ui/widget/ShovelerController;->access$getContext$p(Lcom/amazon/readingactions/ui/widget/ShovelerController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p2, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->title:Ljava/lang/String;

    .line 137
    iget-object p2, p2, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->authors:Ljava/util/List;

    invoke-static {p2}, Lcom/amazon/ea/util/AuthorNameFormatterUtil;->formatAuthorList(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    .line 136
    invoke-direct {v0, v1, v2, p2}, Lcom/amazon/ea/ui/PlaceholderCoverDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :goto_0
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/ShovelerController$createView$1;->$covers:[Landroid/widget/ImageView;

    aget-object p2, p2, p1

    if-eqz p2, :cond_1

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    :cond_1
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/ShovelerController$createView$1;->this$0:Lcom/amazon/readingactions/ui/widget/ShovelerController;

    invoke-static {p2}, Lcom/amazon/readingactions/ui/widget/ShovelerController;->access$getImageWidth$p(Lcom/amazon/readingactions/ui/widget/ShovelerController;)I

    move-result p2

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/ShovelerController$createView$1;->this$0:Lcom/amazon/readingactions/ui/widget/ShovelerController;

    invoke-static {v1}, Lcom/amazon/readingactions/ui/widget/ShovelerController;->access$getImageHeight$p(Lcom/amazon/readingactions/ui/widget/ShovelerController;)I

    move-result v1

    invoke-static {v0, p2, v1}, Lcom/amazon/startactions/ui/helpers/ImageUtil;->getScaleFitCenter(Landroid/graphics/drawable/Drawable;II)F

    move-result p2

    .line 143
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    float-to-int v2, v2

    .line 144
    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/ShovelerController$createView$1;->this$0:Lcom/amazon/readingactions/ui/widget/ShovelerController;

    invoke-static {v3}, Lcom/amazon/readingactions/ui/widget/ShovelerController;->access$getImageHeight$p(Lcom/amazon/readingactions/ui/widget/ShovelerController;)I

    move-result v3

    .line 143
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 145
    iget v3, p0, Lcom/amazon/readingactions/ui/widget/ShovelerController$createView$1;->$paddingBetweenBooks:I

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, v3, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 146
    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/ShovelerController$createView$1;->$covers:[Landroid/widget/ImageView;

    aget-object v3, v3, p1

    if-eqz v3, :cond_3

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    :cond_3
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/ShovelerController$createView$1;->$covers:[Landroid/widget/ImageView;

    aget-object p1, v1, p1

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/ShovelerController$createView$1;->this$0:Lcom/amazon/readingactions/ui/widget/ShovelerController;

    invoke-static {v1}, Lcom/amazon/readingactions/ui/widget/ShovelerController;->access$getImageHeight$p(Lcom/amazon/readingactions/ui/widget/ShovelerController;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    sub-float/2addr v1, v0

    float-to-int p2, v1

    invoke-virtual {p1, v2, p2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_4
    return-void
.end method
