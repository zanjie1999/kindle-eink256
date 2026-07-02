.class final Lcom/amazon/kcp/home/widget/HeroCard$getImage$1;
.super Ljava/lang/Object;
.source "HeroCard.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/HeroCard;->getImage(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;

.field final synthetic $imagePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/HeroCard$getImage$1;->$imagePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/HeroCard$getImage$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 120
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/HeroCard$getImage$1;->$imagePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/HeroCard$getImage$1;->$imagePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 127
    :goto_0
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/home/widget/HeroCard$getImage$1$1;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kcp/home/widget/HeroCard$getImage$1$1;-><init>(Lcom/amazon/kcp/home/widget/HeroCard$getImage$1;Landroid/graphics/Bitmap;)V

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
