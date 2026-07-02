.class Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader$3$1;
.super Ljava/lang/Object;
.source "CurlViewBitmapLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader$3;->recycle(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader$3;


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader$3;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader$3$1;->this$1:Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader$3$1;->this$1:Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader$3;

    iget-object v0, v0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader$3;->this$0:Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;

    invoke-static {v0}, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->access$100(Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;)Lcom/amazon/nwstd/upsell/UpsellController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/nwstd/upsell/UpsellController;->decreaseUpsellFullPageViewRetainCount()V

    return-void
.end method
