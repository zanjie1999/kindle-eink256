.class Lcom/amazon/android/widget/ThumbnailItem$1;
.super Ljava/lang/Object;
.source "ThumbnailItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/widget/ThumbnailItem;->onBitmapReady(ILcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/widget/ThumbnailItem;

.field final synthetic val$bitmapID:I

.field final synthetic val$bitmapInfo:Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

.field final synthetic val$idx:I


# direct methods
.method constructor <init>(Lcom/amazon/android/widget/ThumbnailItem;ILcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;I)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/amazon/android/widget/ThumbnailItem$1;->this$0:Lcom/amazon/android/widget/ThumbnailItem;

    iput p2, p0, Lcom/amazon/android/widget/ThumbnailItem$1;->val$bitmapID:I

    iput-object p3, p0, Lcom/amazon/android/widget/ThumbnailItem$1;->val$bitmapInfo:Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    iput p4, p0, Lcom/amazon/android/widget/ThumbnailItem$1;->val$idx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 74
    invoke-static {}, Lcom/amazon/android/widget/ThumbnailItem;->access$000()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/android/widget/ThumbnailItem;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onBitmapReady.post bitmapID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/amazon/android/widget/ThumbnailItem$1;->val$bitmapID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/widget/ThumbnailItem$1;->val$bitmapInfo:Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 77
    iget-object v0, p0, Lcom/amazon/android/widget/ThumbnailItem$1;->this$0:Lcom/amazon/android/widget/ThumbnailItem;

    invoke-static {v0}, Lcom/amazon/android/widget/ThumbnailItem;->access$200(Lcom/amazon/android/widget/ThumbnailItem;)[Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    move-result-object v0

    iget v4, p0, Lcom/amazon/android/widget/ThumbnailItem$1;->val$idx:I

    aget-object v0, v0, v4

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 79
    iget-object v0, p0, Lcom/amazon/android/widget/ThumbnailItem$1;->this$0:Lcom/amazon/android/widget/ThumbnailItem;

    invoke-static {v0}, Lcom/amazon/android/widget/ThumbnailItem;->access$300(Lcom/amazon/android/widget/ThumbnailItem;)[Lcom/amazon/android/widget/ThumbnailImageView;

    move-result-object v0

    iget v2, p0, Lcom/amazon/android/widget/ThumbnailItem$1;->val$idx:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/amazon/android/widget/ThumbnailItem$1;->val$bitmapInfo:Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    iget-object v2, v2, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/amazon/android/widget/ThumbnailImageView;->setThumbnailImage(Landroid/graphics/Bitmap;)V

    .line 81
    invoke-static {}, Lcom/amazon/android/widget/ThumbnailItem;->access$000()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/amazon/android/widget/ThumbnailItem;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onBitmapReady.jobdone bitmapID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/amazon/android/widget/ThumbnailItem$1;->val$bitmapID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/amazon/android/widget/ThumbnailItem$1;->this$0:Lcom/amazon/android/widget/ThumbnailItem;

    invoke-static {v0}, Lcom/amazon/android/widget/ThumbnailItem;->access$200(Lcom/amazon/android/widget/ThumbnailItem;)[Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    move-result-object v0

    iget v1, p0, Lcom/amazon/android/widget/ThumbnailItem$1;->val$idx:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 83
    iget-object v0, p0, Lcom/amazon/android/widget/ThumbnailItem$1;->this$0:Lcom/amazon/android/widget/ThumbnailItem;

    invoke-static {v0}, Lcom/amazon/android/widget/ThumbnailItem;->access$400(Lcom/amazon/android/widget/ThumbnailItem;)[Ljava/lang/Runnable;

    move-result-object v0

    iget v1, p0, Lcom/amazon/android/widget/ThumbnailItem$1;->val$idx:I

    aput-object v2, v0, v1

    return-void
.end method
