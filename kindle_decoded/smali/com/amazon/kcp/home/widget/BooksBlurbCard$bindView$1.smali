.class final Lcom/amazon/kcp/home/widget/BooksBlurbCard$bindView$1;
.super Ljava/lang/Object;
.source "BooksBlurbCard.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/BooksBlurbCard;->bindView(Landroid/view/View;Lcom/amazon/kindle/home/action/HomeActionManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBooksBlurbCard.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BooksBlurbCard.kt\ncom/amazon/kcp/home/widget/BooksBlurbCard$bindView$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,276:1\n1#2:277\n*E\n"
.end annotation


# instance fields
.field final synthetic $image:Landroid/widget/ImageView;

.field final synthetic $imagePath:Ljava/lang/String;

.field final synthetic $imageZone:Lcom/amazon/kindle/home/model/ThemedImageZone;

.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lcom/amazon/kcp/home/widget/BooksBlurbCard;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/widget/BooksBlurbCard;Ljava/lang/String;Landroid/view/View;Landroid/widget/ImageView;Lcom/amazon/kindle/home/model/ThemedImageZone;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard$bindView$1;->this$0:Lcom/amazon/kcp/home/widget/BooksBlurbCard;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard$bindView$1;->$imagePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard$bindView$1;->$view:Landroid/view/View;

    iput-object p4, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard$bindView$1;->$image:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard$bindView$1;->$imageZone:Lcom/amazon/kindle/home/model/ThemedImageZone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 104
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard$bindView$1;->$imagePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 105
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard$bindView$1;->$view:Landroid/view/View;

    check-cast v1, Lcom/amazon/kcp/home/ui/HomeCardView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/librarymodule/R$dimen;->bl_blurb_icon_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 106
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard$bindView$1;->$image:Landroid/widget/ImageView;

    .line 107
    sget-object v3, Lcom/amazon/kcp/library/HomeUtils;->INSTANCE:Lcom/amazon/kcp/library/HomeUtils;

    .line 108
    iget-object v4, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard$bindView$1;->$imagePath:Ljava/lang/String;

    .line 107
    invoke-virtual {v3, v4, v1, v1}, Lcom/amazon/kcp/library/HomeUtils;->decodeImageFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 106
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 113
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard$bindView$1;->$image:Landroid/widget/ImageView;

    const-string v2, "image"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard$bindView$1;->$imageZone:Lcom/amazon/kindle/home/model/ThemedImageZone;

    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/ThemedImageZone;->getImageAltText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard$bindView$1;->$view:Landroid/view/View;

    check-cast v1, Lcom/amazon/kcp/home/ui/HomeCardView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz v0, :cond_1

    goto :goto_1

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard$bindView$1;->$view:Landroid/view/View;

    check-cast v0, Lcom/amazon/kcp/home/ui/HomeCardView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 117
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    return-void
.end method
