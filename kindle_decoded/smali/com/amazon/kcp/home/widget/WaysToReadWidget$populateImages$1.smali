.class final Lcom/amazon/kcp/home/widget/WaysToReadWidget$populateImages$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WaysToReadWidget.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/WaysToReadWidget;->populateImages(Landroid/widget/ImageView;Lcom/amazon/kindle/home/model/WaysToReadBlock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/graphics/Bitmap;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $cardImageView:Landroid/widget/ImageView;

.field final synthetic $waysToReadBlock:Lcom/amazon/kindle/home/model/WaysToReadBlock;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Lcom/amazon/kindle/home/model/WaysToReadBlock;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget$populateImages$1;->$cardImageView:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget$populateImages$1;->$waysToReadBlock:Lcom/amazon/kindle/home/model/WaysToReadBlock;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 51
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/home/widget/WaysToReadWidget$populateImages$1;->invoke(Landroid/graphics/Bitmap;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget$populateImages$1;->$cardImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 199
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget$populateImages$1;->$cardImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget$populateImages$1;->$waysToReadBlock:Lcom/amazon/kindle/home/model/WaysToReadBlock;

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/WaysToReadBlock;->getImageAltText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
