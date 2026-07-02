.class final Lcom/amazon/kcp/home/widget/HeroCard$bindView$$inlined$let$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HeroCard.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/HeroCard;->bindView(Landroid/view/View;Lcom/amazon/kindle/home/action/HomeActionManager;)V
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
.field final synthetic $imageView$inlined:Landroid/widget/ImageView;

.field final synthetic $imageZone:Lcom/amazon/kindle/home/model/ThemedImageZone;

.field final synthetic this$0:Lcom/amazon/kcp/home/widget/HeroCard;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/home/model/ThemedImageZone;Lcom/amazon/kcp/home/widget/HeroCard;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/HeroCard$bindView$$inlined$let$lambda$1;->$imageZone:Lcom/amazon/kindle/home/model/ThemedImageZone;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/HeroCard$bindView$$inlined$let$lambda$1;->this$0:Lcom/amazon/kcp/home/widget/HeroCard;

    iput-object p3, p0, Lcom/amazon/kcp/home/widget/HeroCard$bindView$$inlined$let$lambda$1;->$imageView$inlined:Landroid/widget/ImageView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/home/widget/HeroCard$bindView$$inlined$let$lambda$1;->invoke(Landroid/graphics/Bitmap;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/graphics/Bitmap;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/HeroCard$bindView$$inlined$let$lambda$1;->$imageView$inlined:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 88
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/HeroCard$bindView$$inlined$let$lambda$1;->$imageView$inlined:Landroid/widget/ImageView;

    const-string v0, "imageView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/HeroCard$bindView$$inlined$let$lambda$1;->$imageZone:Lcom/amazon/kindle/home/model/ThemedImageZone;

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/ThemedImageZone;->getImageAltText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
