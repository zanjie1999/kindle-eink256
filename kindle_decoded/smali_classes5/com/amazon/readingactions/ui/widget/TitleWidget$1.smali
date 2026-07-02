.class Lcom/amazon/readingactions/ui/widget/TitleWidget$1;
.super Ljava/lang/Object;
.source "TitleWidget.java"

# interfaces
.implements Lcom/amazon/startactions/storage/ImageBatchDownloader$BatchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/TitleWidget;->setImageAndHeaderGradient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/TitleWidget;

.field final synthetic val$bookCoverContainer:Landroid/widget/FrameLayout;

.field final synthetic val$bookCoverImage:Landroid/widget/ImageView;

.field final synthetic val$titleWidget:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/widget/TitleWidget;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget$1;->this$0:Lcom/amazon/readingactions/ui/widget/TitleWidget;

    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget$1;->val$bookCoverImage:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget$1;->val$titleWidget:Landroid/widget/RelativeLayout;

    iput-object p4, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget$1;->val$bookCoverContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyImage(ILandroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 133
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget$1;->val$bookCoverImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 134
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget$1;->this$0:Lcom/amazon/readingactions/ui/widget/TitleWidget;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget$1;->val$titleWidget:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2, v0}, Lcom/amazon/readingactions/ui/widget/TitleWidget;->setHeaderGradient(Landroid/graphics/Bitmap;Landroid/widget/RelativeLayout;)V

    .line 135
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget$1;->val$bookCoverContainer:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
