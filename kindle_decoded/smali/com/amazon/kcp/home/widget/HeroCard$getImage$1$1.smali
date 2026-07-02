.class final Lcom/amazon/kcp/home/widget/HeroCard$getImage$1$1;
.super Ljava/lang/Object;
.source "HeroCard.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/HeroCard$getImage$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $bitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/amazon/kcp/home/widget/HeroCard$getImage$1;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/widget/HeroCard$getImage$1;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/HeroCard$getImage$1$1;->this$0:Lcom/amazon/kcp/home/widget/HeroCard$getImage$1;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/HeroCard$getImage$1$1;->$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/HeroCard$getImage$1$1;->this$0:Lcom/amazon/kcp/home/widget/HeroCard$getImage$1;

    iget-object v0, v0, Lcom/amazon/kcp/home/widget/HeroCard$getImage$1;->$callback:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/HeroCard$getImage$1$1;->$bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
