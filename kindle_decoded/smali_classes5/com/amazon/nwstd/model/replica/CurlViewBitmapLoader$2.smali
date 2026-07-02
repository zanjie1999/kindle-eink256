.class Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader$2;
.super Ljava/lang/Object;
.source "CurlViewBitmapLoader.java"

# interfaces
.implements Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->loadBitmap(IIILcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapObserver;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
