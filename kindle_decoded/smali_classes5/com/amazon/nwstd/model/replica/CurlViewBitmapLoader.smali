.class public Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;
.super Ljava/lang/Object;
.source "CurlViewBitmapLoader.java"

# interfaces
.implements Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;
.implements Lcom/amazon/nwstd/model/replica/BitmapProviderUpdateObserver;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private curlView:Lcom/amazon/kindle/pagecurl/CurlView;

.field private final mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

.field private mOrientation:I

.field private mUpsellBitmapList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpsellController:Lcom/amazon/nwstd/upsell/UpsellController;

.field private provider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

.field private recycler:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapRecycler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/pagecurl/CurlView;Lcom/amazon/nwstd/model/replica/BitmapProvider;Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;Lcom/amazon/nwstd/upsell/UpsellController;I)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->mUpsellBitmapList:Ljava/util/Set;

    .line 42
    iput-object p2, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->provider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    .line 43
    iput-object p1, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    .line 44
    iput-object p3, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    .line 45
    iput-object p4, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->mUpsellController:Lcom/amazon/nwstd/upsell/UpsellController;

    .line 46
    iput p5, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->mOrientation:I

    .line 47
    invoke-virtual {p2, p0}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->registerBitmapObserver(Lcom/amazon/nwstd/model/replica/BitmapProviderUpdateObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;)Ljava/util/Set;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->mUpsellBitmapList:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;)Lcom/amazon/nwstd/upsell/UpsellController;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->mUpsellController:Lcom/amazon/nwstd/upsell/UpsellController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;)Lcom/amazon/nwstd/model/replica/BitmapProvider;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->provider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    return-object p0
.end method

.method private getUpsellBitmap(III)Landroid/graphics/Bitmap;
    .locals 7

    .line 149
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->mUpsellController:Lcom/amazon/nwstd/upsell/UpsellController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 150
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->mUpsellController:Lcom/amazon/nwstd/upsell/UpsellController;

    if-nez v0, :cond_1

    .line 151
    sget-object p1, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->TAG:Ljava/lang/String;

    const/16 p2, 0x10

    const-string p3, "Upsell controller is null"

    invoke-static {p1, p2, p3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 154
    :cond_1
    sget-object v0, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;->PORTRAIT:Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;

    .line 155
    iget v1, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 156
    rem-int/2addr p1, v2

    if-nez p1, :cond_2

    .line 157
    sget-object v0, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;->LANDSCAPE_RIGHT:Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;

    goto :goto_1

    .line 159
    :cond_2
    sget-object v0, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;->LANDSCAPE_LEFT:Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;

    :cond_3
    :goto_1
    move-object v3, v0

    .line 163
    iget-object p1, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->mUpsellController:Lcom/amazon/nwstd/upsell/UpsellController;

    iget-object p1, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->provider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    invoke-virtual {p1}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->getReferenceImageRatio()F

    move-result v6

    move v4, p2

    move v5, p3

    invoke-static/range {v1 .. v6}, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;->createBitmap(Landroid/content/Context;Lcom/amazon/nwstd/upsell/UpsellController;Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;IIF)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 164
    iget-object p2, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->mUpsellBitmapList:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private isNormalContentPage(I)Z
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    iget v1, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->mOrientation:I

    invoke-interface {v0, p1, v1}, Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;->getContentPageIndexFromDisplayedPosition(II)Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object p1

    .line 174
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getPageType()Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    move-result-object p1

    sget-object v0, Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;->NORMAL:Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private mapContentPageIndexFromDisplayedPosition(I)I
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    iget v1, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->mOrientation:I

    invoke-interface {v0, p1, v1}, Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;->getContentPageIndexFromDisplayedPosition(II)Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result p1

    return p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->provider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    invoke-virtual {v0, p0}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->unregisterBitmapObserver(Lcom/amazon/nwstd/model/replica/BitmapProviderUpdateObserver;)V

    .line 61
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->mUpsellBitmapList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    return-void
.end method

.method public getBitmapCount()I
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    iget v1, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;->getDisplayedPageCount(I)I

    move-result v0

    return v0
.end method

.method public getBitmapRecycler()Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapRecycler;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->recycler:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapRecycler;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader$3;

    invoke-direct {v0, p0}, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader$3;-><init>(Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;)V

    iput-object v0, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->recycler:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapRecycler;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->recycler:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapRecycler;

    return-object v0
.end method

.method public loadBitmap(IIILcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapObserver;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;
    .locals 8

    .line 72
    invoke-direct {p0, p1}, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->isNormalContentPage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-direct {p0, p1}, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->mapContentPageIndexFromDisplayedPosition(I)I

    move-result v2

    .line 75
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->provider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    sget-object v5, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Default:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    new-instance v6, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader$1;

    invoke-direct {v6, p0, p4, p1}, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader$1;-><init>(Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapObserver;I)V

    sget-object v7, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;->High:Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->asyncLoadBitmap(IIILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    move-result-object p1

    return-object p1

    .line 91
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->getUpsellBitmap(III)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 92
    invoke-interface {p4, p1, p2}, Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapObserver;->onBitmapReady(ILandroid/graphics/Bitmap;)V

    .line 93
    new-instance p1, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader$2;

    invoke-direct {p1, p0}, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader$2;-><init>(Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;)V

    return-object p1
.end method

.method public onBitmapUpdate(ILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;)V
    .locals 1

    .line 135
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    sget-object v0, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Medium:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-le p2, v0, :cond_0

    return-void

    .line 138
    :cond_0
    iget-object p2, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    new-instance v0, Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-direct {v0, p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;-><init>(I)V

    iget p1, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->mOrientation:I

    invoke-interface {p2, v0, p1}, Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;->getDisplayedPositionFromContentPageIndex(Lcom/amazon/android/docviewer/mapper/PageIndex;I)I

    move-result p1

    .line 139
    iget-object p2, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {p2, p1}, Lcom/amazon/kindle/pagecurl/CurlView;->invalidatePage(I)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->mOrientation:I

    return-void
.end method
