.class Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader$1;
.super Ljava/lang/Object;
.source "CurlViewBitmapLoader.java"

# interfaces
.implements Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->loadBitmap(IIILcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapObserver;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$curlBitmapID:I

.field final synthetic val$observer:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapObserver;


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapObserver;I)V
    .locals 0

    .line 75
    iput-object p2, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader$1;->val$observer:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapObserver;

    iput p3, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader$1;->val$curlBitmapID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapReady(ILcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;)V
    .locals 1

    .line 86
    iget-object p1, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader$1;->val$observer:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapObserver;

    iget v0, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader$1;->val$curlBitmapID:I

    iget-object p2, p2, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {p1, v0, p2}, Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapObserver;->onBitmapReady(ILandroid/graphics/Bitmap;)V

    return-void
.end method
