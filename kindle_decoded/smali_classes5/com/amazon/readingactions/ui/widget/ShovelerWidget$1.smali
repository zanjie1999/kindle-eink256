.class Lcom/amazon/readingactions/ui/widget/ShovelerWidget$1;
.super Ljava/lang/Object;
.source "ShovelerWidget.java"

# interfaces
.implements Lcom/amazon/startactions/storage/ImageBatchDownloader$BatchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/ShovelerWidget;->createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/ShovelerWidget;

.field final synthetic val$covers:[Landroid/widget/ImageView;

.field final synthetic val$paddingBetweenBooks:I


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/widget/ShovelerWidget;[Landroid/widget/ImageView;I)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/ShovelerWidget$1;->this$0:Lcom/amazon/readingactions/ui/widget/ShovelerWidget;

    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/ShovelerWidget$1;->val$covers:[Landroid/widget/ImageView;

    iput p3, p0, Lcom/amazon/readingactions/ui/widget/ShovelerWidget$1;->val$paddingBetweenBooks:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyImage(ILandroid/graphics/Bitmap;)V
    .locals 4

    if-eqz p2, :cond_0

    .line 125
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/ShovelerWidget$1;->this$0:Lcom/amazon/readingactions/ui/widget/ShovelerWidget;

    invoke-static {v1}, Lcom/amazon/readingactions/ui/widget/ShovelerWidget;->access$000(Lcom/amazon/readingactions/ui/widget/ShovelerWidget;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/ShovelerWidget$1;->this$0:Lcom/amazon/readingactions/ui/widget/ShovelerWidget;

    invoke-static {p2}, Lcom/amazon/readingactions/ui/widget/ShovelerWidget;->access$100(Lcom/amazon/readingactions/ui/widget/ShovelerWidget;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object p2

    check-cast p2, Lcom/amazon/readingactions/sidecar/def/widgets/ShovelerWidgetDef;

    iget-object p2, p2, Lcom/amazon/readingactions/sidecar/def/widgets/ShovelerWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    .line 128
    new-instance v0, Lcom/amazon/ea/ui/PlaceholderCoverDrawable;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/ShovelerWidget$1;->this$0:Lcom/amazon/readingactions/ui/widget/ShovelerWidget;

    invoke-static {v1}, Lcom/amazon/readingactions/ui/widget/ShovelerWidget;->access$200(Lcom/amazon/readingactions/ui/widget/ShovelerWidget;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p2, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->title:Ljava/lang/String;

    iget-object p2, p2, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->authors:Ljava/util/List;

    .line 129
    invoke-static {p2}, Lcom/amazon/ea/util/AuthorNameFormatterUtil;->formatAuthorList(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, v2, p2}, Lcom/amazon/ea/ui/PlaceholderCoverDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :goto_0
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/ShovelerWidget$1;->val$covers:[Landroid/widget/ImageView;

    aget-object p2, p2, p1

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/ShovelerWidget$1;->this$0:Lcom/amazon/readingactions/ui/widget/ShovelerWidget;

    invoke-static {p2}, Lcom/amazon/readingactions/ui/widget/ShovelerWidget;->access$300(Lcom/amazon/readingactions/ui/widget/ShovelerWidget;)I

    move-result p2

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/ShovelerWidget$1;->this$0:Lcom/amazon/readingactions/ui/widget/ShovelerWidget;

    invoke-static {v1}, Lcom/amazon/readingactions/ui/widget/ShovelerWidget;->access$400(Lcom/amazon/readingactions/ui/widget/ShovelerWidget;)I

    move-result v1

    invoke-static {v0, p2, v1}, Lcom/amazon/startactions/ui/helpers/ImageUtil;->getScaleFitCenter(Landroid/graphics/drawable/Drawable;II)F

    move-result p2

    .line 135
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/ShovelerWidget$1;->this$0:Lcom/amazon/readingactions/ui/widget/ShovelerWidget;

    invoke-static {v3}, Lcom/amazon/readingactions/ui/widget/ShovelerWidget;->access$400(Lcom/amazon/readingactions/ui/widget/ShovelerWidget;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 136
    iget v3, p0, Lcom/amazon/readingactions/ui/widget/ShovelerWidget$1;->val$paddingBetweenBooks:I

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, v3, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 137
    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/ShovelerWidget$1;->val$covers:[Landroid/widget/ImageView;

    aget-object v3, v3, p1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/ShovelerWidget$1;->val$covers:[Landroid/widget/ImageView;

    aget-object p1, v1, p1

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/ShovelerWidget$1;->this$0:Lcom/amazon/readingactions/ui/widget/ShovelerWidget;

    invoke-static {v1}, Lcom/amazon/readingactions/ui/widget/ShovelerWidget;->access$400(Lcom/amazon/readingactions/ui/widget/ShovelerWidget;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    sub-float/2addr v1, v0

    float-to-int p2, v1

    invoke-virtual {p1, v2, p2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-void
.end method
