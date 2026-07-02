.class Lcom/amazon/nwstd/model/replica/BitmapProvider$1;
.super Ljava/lang/Object;
.source "BitmapProvider.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/nwstd/model/replica/BitmapProvider;->asyncLoadBitmap(IIILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/nwstd/model/replica/BitmapProvider;

.field final synthetic val$bitmapID:I

.field final synthetic val$height:I

.field final synthetic val$quality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/model/replica/BitmapProvider;IIILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider$1;->this$0:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    iput p2, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider$1;->val$bitmapID:I

    iput p3, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider$1;->val$width:I

    iput p4, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider$1;->val$height:I

    iput-object p5, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider$1;->val$quality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;
    .locals 5

    .line 77
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider$1;->this$0:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    iget v1, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider$1;->val$bitmapID:I

    iget v2, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider$1;->val$width:I

    iget v3, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider$1;->val$height:I

    iget-object v4, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider$1;->val$quality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->loadBitmap(IIILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;)Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/amazon/nwstd/model/replica/BitmapProvider$1;->call()Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    move-result-object v0

    return-object v0
.end method
