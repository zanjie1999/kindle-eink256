.class Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader$3;
.super Ljava/lang/Object;
.source "CurlViewBitmapLoader.java"

# interfaces
.implements Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapRecycler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->getBitmapRecycler()Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapRecycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader$3;->this$0:Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recycle(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader$3;->this$0:Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;

    invoke-static {v0}, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->access$000(Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 115
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader$3;->this$0:Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;

    invoke-static {v0}, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->access$000(Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 117
    new-instance p1, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader$3$1;

    invoke-direct {p1, p0}, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader$3$1;-><init>(Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader$3;)V

    invoke-static {p1}, Lcom/amazon/nwstd/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader$3;->this$0:Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;

    invoke-static {v0}, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->access$200(Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;)Lcom/amazon/nwstd/model/replica/BitmapProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->release(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method
