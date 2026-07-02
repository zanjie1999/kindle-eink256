.class final Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget$bindView$1;
.super Ljava/lang/Object;
.source "FalkorDiscoverWidget.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget;->bindView(Landroid/view/View;Lcom/amazon/kindle/home/action/HomeActionManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $image:Landroid/widget/ImageView;

.field final synthetic $imagePath:Ljava/lang/String;

.field final synthetic $themedImageZone:Lcom/amazon/kindle/home/model/ThemedImageZone;

.field final synthetic $view:Landroid/view/View;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/widget/ImageView;Lcom/amazon/kindle/home/model/ThemedImageZone;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget$bindView$1;->$imagePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget$bindView$1;->$image:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget$bindView$1;->$themedImageZone:Lcom/amazon/kindle/home/model/ThemedImageZone;

    iput-object p4, p0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget$bindView$1;->$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 81
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget$bindView$1;->$imagePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget$bindView$1;->$imagePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 87
    :goto_0
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget$bindView$1$1;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget$bindView$1$1;-><init>(Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget$bindView$1;Landroid/graphics/Bitmap;)V

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
