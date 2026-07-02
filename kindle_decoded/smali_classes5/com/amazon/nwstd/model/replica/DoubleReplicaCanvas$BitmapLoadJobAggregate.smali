.class Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$BitmapLoadJobAggregate;
.super Ljava/lang/Object;
.source "DoubleReplicaCanvas.java"

# interfaces
.implements Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapLoadJobAggregate"
.end annotation


# instance fields
.field private job1:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

.field private job2:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;)V
    .locals 0

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    iput-object p2, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$BitmapLoadJobAggregate;->job1:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    .line 483
    iput-object p3, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$BitmapLoadJobAggregate;->job2:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    .line 490
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$BitmapLoadJobAggregate;->job1:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    if-eqz v0, :cond_0

    .line 491
    invoke-interface {v0}, Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;->cancel()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 494
    :goto_0
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$BitmapLoadJobAggregate;->job2:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    if-eqz v1, :cond_1

    .line 495
    invoke-interface {v1}, Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;->cancel()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_1
    return v0
.end method
