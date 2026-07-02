.class Lcom/amazon/startactions/ui/widget/AuthorBioWidget$1;
.super Ljava/lang/Object;
.source "AuthorBioWidget.java"

# interfaces
.implements Lcom/amazon/startactions/storage/ImageBatchDownloader$BatchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/ui/widget/AuthorBioWidget;->createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/startactions/ui/widget/AuthorBioWidget;

.field final synthetic val$authorImageViews:[Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/ui/widget/AuthorBioWidget;[Landroid/widget/ImageView;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$1;->this$0:Lcom/amazon/startactions/ui/widget/AuthorBioWidget;

    iput-object p2, p0, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$1;->val$authorImageViews:[Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyImage(ILandroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 225
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$1;->val$authorImageViews:[Landroid/widget/ImageView;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 227
    :cond_0
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$1;->val$authorImageViews:[Landroid/widget/ImageView;

    aget-object p1, p2, p1

    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$1;->this$0:Lcom/amazon/startactions/ui/widget/AuthorBioWidget;

    iget-object p2, p2, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v0, Lcom/amazon/kindle/ea/R$drawable;->ic_author_photo_placeholder:I

    .line 228
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 227
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
