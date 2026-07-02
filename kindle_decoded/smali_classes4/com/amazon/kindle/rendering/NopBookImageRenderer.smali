.class public Lcom/amazon/kindle/rendering/NopBookImageRenderer;
.super Ljava/lang/Object;
.source "NopBookImageRenderer.java"

# interfaces
.implements Lcom/amazon/kindle/rendering/IBookImageRenderer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPageClip(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPageThumbnail(IIIZ)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPageThumbnailView(Lcom/amazon/kindle/krx/reader/IPosition;II)Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "II)",
            "Lcom/amazon/kindle/krx/content/images/KRXDisposableObject<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public reset()V
    .locals 0

    return-void
.end method
