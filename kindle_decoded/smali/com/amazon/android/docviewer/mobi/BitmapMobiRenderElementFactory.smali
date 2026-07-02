.class public Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElementFactory;
.super Ljava/lang/Object;
.source "BitmapMobiRenderElementFactory.java"

# interfaces
.implements Lcom/amazon/android/docviewer/mobi/IMobiRenderElementFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/amazon/android/docviewer/mobi/IMobiRenderElement;
    .locals 1

    .line 10
    new-instance v0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;

    invoke-direct {v0}, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;-><init>()V

    return-object v0
.end method

.method public releaseCache(I)V
    .locals 0

    .line 20
    invoke-static {p1}, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->releaseBitmapCache(I)V

    return-void
.end method
