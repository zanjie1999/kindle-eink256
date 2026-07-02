.class Landroidx/exifinterface/media/ExifInterfaceUtils$Api23Impl;
.super Ljava/lang/Object;
.source "ExifInterfaceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/exifinterface/media/ExifInterfaceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23Impl"
.end annotation


# direct methods
.method static setDataSource(Landroid/media/MediaMetadataRetriever;Landroid/media/MediaDataSource;)V
    .locals 0

    .line 189
    invoke-virtual {p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/media/MediaDataSource;)V

    return-void
.end method
