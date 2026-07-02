.class public Lcom/amazon/android/widget/ThumbnailItem;
.super Landroid/widget/RelativeLayout;
.source "ThumbnailItem.java"

# interfaces
.implements Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;


# static fields
.field private static DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private count:I

.field private lastSelectedViewIndex:I

.field private mActivateAsyncLoad:Z

.field private mBitmapLoadJob:[Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

.field private mBitmapReadyRunnable:[Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mImageLoader:Lcom/amazon/nwstd/model/replica/BitmapProvider;

.field private mImgViews:[Lcom/amazon/android/widget/ThumbnailImageView;

.field private mOrientation:I

.field private mPgNumber:[Landroid/widget/TextView;

.field private mPlaceHolder:Landroid/graphics/drawable/Drawable;

.field private mSelectedPage:I

.field private mToggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

.field private mToggleCallback:Lcom/amazon/foundation/IIntCallback;

.field private startIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/amazon/android/widget/ThumbnailItem;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/widget/ThumbnailItem;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 58
    sput-boolean v0, Lcom/amazon/android/widget/ThumbnailItem;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 99
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/amazon/android/widget/ThumbnailItem;->mToggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    .line 56
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/widget/ThumbnailItem;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 100
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setWillNotDraw(Z)V

    .line 101
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/newsstand/core/R$drawable;->thumbnail_placeholder:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/widget/ThumbnailItem;->mPlaceHolder:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/amazon/android/widget/ThumbnailItem;->mToggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    .line 56
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/widget/ThumbnailItem;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 94
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setWillNotDraw(Z)V

    .line 95
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/newsstand/core/R$drawable;->thumbnail_placeholder:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/widget/ThumbnailItem;->mPlaceHolder:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 36
    sget-boolean v0, Lcom/amazon/android/widget/ThumbnailItem;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/amazon/android/widget/ThumbnailItem;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/android/widget/ThumbnailItem;)[Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/android/widget/ThumbnailItem;->mBitmapLoadJob:[Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/android/widget/ThumbnailItem;)[Lcom/amazon/android/widget/ThumbnailImageView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/android/widget/ThumbnailItem;->mImgViews:[Lcom/amazon/android/widget/ThumbnailImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/android/widget/ThumbnailItem;)[Ljava/lang/Runnable;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/android/widget/ThumbnailItem;->mBitmapReadyRunnable:[Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$502(Lcom/amazon/android/widget/ThumbnailItem;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/amazon/android/widget/ThumbnailItem;->lastSelectedViewIndex:I

    return p1
.end method

.method static synthetic access$600(Lcom/amazon/android/widget/ThumbnailItem;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/amazon/android/widget/ThumbnailItem;->startIndex:I

    return p0
.end method

.method static synthetic access$700(Lcom/amazon/android/widget/ThumbnailItem;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/amazon/android/widget/ThumbnailItem;->count:I

    return p0
.end method

.method static synthetic access$800(Lcom/amazon/android/widget/ThumbnailItem;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/amazon/android/widget/ThumbnailItem;->updateBookmarkVisibility()V

    return-void
.end method

.method private asyncLoadBitmaps()V
    .locals 8

    .line 281
    iget-object v0, p0, Lcom/amazon/android/widget/ThumbnailItem;->mImageLoader:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 283
    :goto_0
    iget v1, p0, Lcom/amazon/android/widget/ThumbnailItem;->count:I

    if-ge v0, v1, :cond_3

    .line 284
    iget-object v1, p0, Lcom/amazon/android/widget/ThumbnailItem;->mBitmapLoadJob:[Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amazon/android/widget/ThumbnailItem;->mImgViews:[Lcom/amazon/android/widget/ThumbnailImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/amazon/android/widget/ThumbnailImageView;->getThumbnailImage()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_2

    .line 285
    sget-boolean v1, Lcom/amazon/android/widget/ThumbnailItem;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/amazon/android/widget/ThumbnailItem;->TAG:Ljava/lang/String;

    const/16 v2, 0x8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "asyncLoadBitmapsForUnselectedItem bitmapID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/amazon/android/widget/ThumbnailItem;->startIndex:I

    add-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 286
    :cond_1
    iget-object v1, p0, Lcom/amazon/android/widget/ThumbnailItem;->mBitmapLoadJob:[Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    iget-object v2, p0, Lcom/amazon/android/widget/ThumbnailItem;->mImageLoader:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    iget v3, p0, Lcom/amazon/android/widget/ThumbnailItem;->startIndex:I

    add-int/2addr v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Thumbnail:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    move-object v7, p0

    invoke-virtual/range {v2 .. v7}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->asyncLoadBitmap(IIILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    move-result-object v2

    aput-object v2, v1, v0

    .line 289
    iget-object v1, p0, Lcom/amazon/android/widget/ThumbnailItem;->mImgViews:[Lcom/amazon/android/widget/ThumbnailImageView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/amazon/android/widget/ThumbnailItem;->mPlaceHolder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private cleanUpBeforeInitialization()V
    .locals 3

    .line 270
    invoke-virtual {p0}, Lcom/amazon/android/widget/ThumbnailItem;->releaseBitmaps()V

    .line 273
    iget-object v0, p0, Lcom/amazon/android/widget/ThumbnailItem;->mImgViews:[Lcom/amazon/android/widget/ThumbnailImageView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 274
    :goto_0
    iget-object v1, p0, Lcom/amazon/android/widget/ThumbnailItem;->mImgViews:[Lcom/amazon/android/widget/ThumbnailImageView;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 275
    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private highlight_(I)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 450
    iget p1, p0, Lcom/amazon/android/widget/ThumbnailItem;->count:I

    if-ne p1, v0, :cond_1

    .line 451
    iget-object p1, p0, Lcom/amazon/android/widget/ThumbnailItem;->mImgViews:[Lcom/amazon/android/widget/ThumbnailImageView;

    aget-object p1, p1, v2

    sget-object v0, Lcom/amazon/android/widget/ThumbnailImageView$PageBorder;->LEFT:Lcom/amazon/android/widget/ThumbnailImageView$PageBorder;

    invoke-virtual {p1, v0}, Lcom/amazon/android/widget/ThumbnailImageView;->setPageBorder(Lcom/amazon/android/widget/ThumbnailImageView$PageBorder;)V

    .line 452
    iget-object p1, p0, Lcom/amazon/android/widget/ThumbnailItem;->mImgViews:[Lcom/amazon/android/widget/ThumbnailImageView;

    aget-object p1, p1, v1

    sget-object v0, Lcom/amazon/android/widget/ThumbnailImageView$PageBorder;->RIGHT:Lcom/amazon/android/widget/ThumbnailImageView$PageBorder;

    invoke-virtual {p1, v0}, Lcom/amazon/android/widget/ThumbnailImageView;->setPageBorder(Lcom/amazon/android/widget/ThumbnailImageView$PageBorder;)V

    goto :goto_1

    .line 455
    :cond_1
    iget-object p1, p0, Lcom/amazon/android/widget/ThumbnailItem;->mImgViews:[Lcom/amazon/android/widget/ThumbnailImageView;

    aget-object p1, p1, v2

    sget-object v0, Lcom/amazon/android/widget/ThumbnailImageView$PageBorder;->BOTH:Lcom/amazon/android/widget/ThumbnailImageView$PageBorder;

    invoke-virtual {p1, v0}, Lcom/amazon/android/widget/ThumbnailImageView;->setPageBorder(Lcom/amazon/android/widget/ThumbnailImageView$PageBorder;)V

    goto :goto_1

    .line 459
    :cond_2
    iget p1, p0, Lcom/amazon/android/widget/ThumbnailItem;->mSelectedPage:I

    iget v3, p0, Lcom/amazon/android/widget/ThumbnailItem;->startIndex:I

    if-ne p1, v3, :cond_3

    .line 460
    iget-object p1, p0, Lcom/amazon/android/widget/ThumbnailItem;->mImgViews:[Lcom/amazon/android/widget/ThumbnailImageView;

    aget-object p1, p1, v2

    sget-object v0, Lcom/amazon/android/widget/ThumbnailImageView$PageBorder;->BOTH:Lcom/amazon/android/widget/ThumbnailImageView$PageBorder;

    invoke-virtual {p1, v0}, Lcom/amazon/android/widget/ThumbnailImageView;->setPageBorder(Lcom/amazon/android/widget/ThumbnailImageView$PageBorder;)V

    goto :goto_1

    .line 462
    :cond_3
    iget v2, p0, Lcom/amazon/android/widget/ThumbnailItem;->count:I

    if-ne v2, v0, :cond_4

    add-int/2addr v3, v1

    if-ne p1, v3, :cond_4

    .line 463
    iget-object p1, p0, Lcom/amazon/android/widget/ThumbnailItem;->mImgViews:[Lcom/amazon/android/widget/ThumbnailImageView;

    aget-object p1, p1, v1

    sget-object v0, Lcom/amazon/android/widget/ThumbnailImageView$PageBorder;->BOTH:Lcom/amazon/android/widget/ThumbnailImageView$PageBorder;

    invoke-virtual {p1, v0}, Lcom/amazon/android/widget/ThumbnailImageView;->setPageBorder(Lcom/amazon/android/widget/ThumbnailImageView$PageBorder;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private loadBitmaps()V
    .locals 6

    .line 214
    iget-boolean v0, p0, Lcom/amazon/android/widget/ThumbnailItem;->mActivateAsyncLoad:Z

    if-eqz v0, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/amazon/android/widget/ThumbnailItem;->asyncLoadBitmaps()V

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 217
    :goto_0
    iget v2, p0, Lcom/amazon/android/widget/ThumbnailItem;->count:I

    if-ge v1, v2, :cond_5

    .line 218
    iget-object v2, p0, Lcom/amazon/android/widget/ThumbnailItem;->mImageLoader:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    if-eqz v2, :cond_4

    .line 219
    invoke-direct {p0, v1}, Lcom/amazon/android/widget/ThumbnailItem;->releaseBitmap(I)V

    .line 220
    sget-boolean v2, Lcom/amazon/android/widget/ThumbnailItem;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/amazon/android/widget/ThumbnailItem;->TAG:Ljava/lang/String;

    const/16 v3, 0x8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "syncloadBitmaps bitmapID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/amazon/android/widget/ThumbnailItem;->startIndex:I

    add-int/2addr v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 221
    :cond_1
    iget-object v2, p0, Lcom/amazon/android/widget/ThumbnailItem;->mImageLoader:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    iget v3, p0, Lcom/amazon/android/widget/ThumbnailItem;->startIndex:I

    add-int/2addr v3, v1

    sget-object v4, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Thumbnail:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    invoke-virtual {v2, v3, v0, v0, v4}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->loadBitmap(IIILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;)Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    move-result-object v2

    if-nez v2, :cond_2

    .line 223
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 224
    iget-object v2, p0, Lcom/amazon/android/widget/ThumbnailItem;->mImgViews:[Lcom/amazon/android/widget/ThumbnailImageView;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/amazon/android/widget/ThumbnailImageView;->setThumbnailImage(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 226
    :cond_2
    iget-object v3, v2, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 227
    iget-object v3, p0, Lcom/amazon/android/widget/ThumbnailItem;->mImgViews:[Lcom/amazon/android/widget/ThumbnailImageView;

    aget-object v3, v3, v1

    iget-object v2, v2, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v2}, Lcom/amazon/android/widget/ThumbnailImageView;->setThumbnailImage(Landroid/graphics/Bitmap;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method

.method private onShow()V
    .locals 4

    .line 419
    sget-boolean v0, Lcom/amazon/android/widget/ThumbnailItem;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/widget/ThumbnailItem;->TAG:Ljava/lang/String;

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onShow startIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/amazon/android/widget/ThumbnailItem;->startIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 420
    :cond_0
    invoke-direct {p0}, Lcom/amazon/android/widget/ThumbnailItem;->updateView()V

    return-void
.end method

.method private registerToToggleEvent()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/amazon/android/widget/ThumbnailItem;->mToggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/widget/ThumbnailItem;->mToggleCallback:Lcom/amazon/foundation/IIntCallback;

    if-nez v0, :cond_0

    .line 327
    new-instance v0, Lcom/amazon/android/widget/ThumbnailItem$3;

    invoke-direct {v0, p0}, Lcom/amazon/android/widget/ThumbnailItem$3;-><init>(Lcom/amazon/android/widget/ThumbnailItem;)V

    iput-object v0, p0, Lcom/amazon/android/widget/ThumbnailItem;->mToggleCallback:Lcom/amazon/foundation/IIntCallback;

    .line 336
    iget-object v1, p0, Lcom/amazon/android/widget/ThumbnailItem;->mToggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    invoke-interface {v1, v0}, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;->registerToggleEventCallback(Lcom/amazon/foundation/IIntCallback;)V

    :cond_0
    return-void
.end method

.method private releaseBitmap(I)V
    .locals 7

    .line 295
    iget-boolean v0, p0, Lcom/amazon/android/widget/ThumbnailItem;->mActivateAsyncLoad:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 297
    iget-object v0, p0, Lcom/amazon/android/widget/ThumbnailItem;->mBitmapLoadJob:[Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    aget-object v0, v0, p1

    if-eqz v0, :cond_3

    .line 298
    sget-boolean v0, Lcom/amazon/android/widget/ThumbnailItem;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/widget/ThumbnailItem;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "releaseBitmap.cancelJob bitmapID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/amazon/android/widget/ThumbnailItem;->startIndex:I

    add-int/2addr v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/widget/ThumbnailItem;->mBitmapLoadJob:[Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;->cancel()Z

    move-result v0

    .line 300
    sget-boolean v4, Lcom/amazon/android/widget/ThumbnailItem;->DEBUG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/amazon/android/widget/ThumbnailItem;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "releaseBitmap.cancelled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " bitmapID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/amazon/android/widget/ThumbnailItem;->startIndex:I

    add-int/2addr v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 301
    :cond_1
    iget-object v4, p0, Lcom/amazon/android/widget/ThumbnailItem;->mBitmapLoadJob:[Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    aput-object v1, v4, p1

    if-nez v0, :cond_3

    .line 303
    iget-object v0, p0, Lcom/amazon/android/widget/ThumbnailItem;->mBitmapReadyRunnable:[Ljava/lang/Runnable;

    aget-object v0, v0, p1

    if-eqz v0, :cond_3

    .line 304
    sget-boolean v0, Lcom/amazon/android/widget/ThumbnailItem;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amazon/android/widget/ThumbnailItem;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "releaseBitmap.cancelled+free bitmapID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/amazon/android/widget/ThumbnailItem;->startIndex:I

    add-int/2addr v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/widget/ThumbnailItem;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/amazon/android/widget/ThumbnailItem;->mBitmapReadyRunnable:[Ljava/lang/Runnable;

    aget-object v4, v4, p1

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 306
    iget-object v0, p0, Lcom/amazon/android/widget/ThumbnailItem;->mBitmapReadyRunnable:[Ljava/lang/Runnable;

    aput-object v1, v0, p1

    .line 307
    iget-object v0, p0, Lcom/amazon/android/widget/ThumbnailItem;->mImageLoader:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    iget v4, p0, Lcom/amazon/android/widget/ThumbnailItem;->startIndex:I

    add-int/2addr v4, p1

    sget-object v5, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Thumbnail:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    invoke-virtual {v0, v4, v5, v3, v3}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->release(ILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;II)V

    .line 313
    :cond_3
    iget-object v0, p0, Lcom/amazon/android/widget/ThumbnailItem;->mImgViews:[Lcom/amazon/android/widget/ThumbnailImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/amazon/android/widget/ThumbnailImageView;->getThumbnailImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 315
    sget-boolean v0, Lcom/amazon/android/widget/ThumbnailItem;->DEBUG:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/amazon/android/widget/ThumbnailItem;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "releaseBitmap.release bitmapID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/amazon/android/widget/ThumbnailItem;->startIndex:I

    add-int/2addr v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 316
    :cond_4
    iget-object v0, p0, Lcom/amazon/android/widget/ThumbnailItem;->mImageLoader:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    iget v2, p0, Lcom/amazon/android/widget/ThumbnailItem;->startIndex:I

    add-int/2addr v2, p1

    sget-object v4, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Thumbnail:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    invoke-virtual {v0, v2, v4, v3, v3}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->release(ILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;II)V

    .line 317
    iget-object v0, p0, Lcom/amazon/android/widget/ThumbnailItem;->mImgViews:[Lcom/amazon/android/widget/ThumbnailImageView;

    aget-object p1, v0, p1

    invoke-virtual {p1, v1}, Lcom/amazon/android/widget/ThumbnailImageView;->setThumbnailImage(Landroid/graphics/Bitmap;)V

    :cond_5
    return-void
.end method

.method private unregisterToToggleEvent()V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/amazon/android/widget/ThumbnailItem;->mToggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/android/widget/ThumbnailItem;->mToggleCallback:Lcom/amazon/foundation/IIntCallback;

    if-eqz v1, :cond_0

    .line 343
    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;->unregisterToggleEventCallback(Lcom/amazon/foundation/IIntCallback;)V

    const/4 v0, 0x0

    .line 344
    iput-object v0, p0, Lcom/amazon/android/widget/ThumbnailItem;->mToggleCallback:Lcom/amazon/foundation/IIntCallback;

    :cond_0
    return-void
.end method

.method private updateBookmarkVisibility()V
    .locals 6

    .line 350
    iget v0, p0, Lcom/amazon/android/widget/ThumbnailItem;->count:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 353
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->left_page_right_bookmark:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 357
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->left_page_left_bookmark:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/amazon/android/widget/ThumbnailItem;->mToggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    iget v5, p0, Lcom/amazon/android/widget/ThumbnailItem;->startIndex:I

    invoke-interface {v4, v5}, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;->isPageBookmarked(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 361
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->right_page_right_bookmark:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/amazon/android/widget/ThumbnailItem;->mToggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    iget v5, p0, Lcom/amazon/android/widget/ThumbnailItem;->startIndex:I

    add-int/2addr v5, v1

    invoke-interface {v4, v5}, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;->isPageBookmarked(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_2
    if-ne v0, v1, :cond_4

    .line 365
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->left_page_left_bookmark:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 366
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->right_page_right_bookmark:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 371
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->left_page_right_bookmark:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/android/widget/ThumbnailItem;->mToggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    iget v4, p0, Lcom/amazon/android/widget/ThumbnailItem;->startIndex:I

    invoke-interface {v1, v4}, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;->isPageBookmarked(I)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x4

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_3
    return-void
.end method

.method private updateView()V
    .locals 4

    .line 430
    sget-boolean v0, Lcom/amazon/android/widget/ThumbnailItem;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/widget/ThumbnailItem;->TAG:Ljava/lang/String;

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateView startIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/amazon/android/widget/ThumbnailItem;->startIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 433
    :cond_0
    invoke-direct {p0}, Lcom/amazon/android/widget/ThumbnailItem;->loadBitmaps()V

    .line 436
    iget v0, p0, Lcom/amazon/android/widget/ThumbnailItem;->mSelectedPage:I

    invoke-virtual {p0, v0}, Lcom/amazon/android/widget/ThumbnailItem;->deselect(I)V

    .line 437
    iget v0, p0, Lcom/amazon/android/widget/ThumbnailItem;->mSelectedPage:I

    iget v1, p0, Lcom/amazon/android/widget/ThumbnailItem;->startIndex:I

    if-eq v0, v1, :cond_1

    iget v2, p0, Lcom/amazon/android/widget/ThumbnailItem;->count:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_2

    .line 438
    :cond_1
    iget v0, p0, Lcom/amazon/android/widget/ThumbnailItem;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/amazon/android/widget/ThumbnailItem;->highlight_(I)V

    .line 442
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/widget/ThumbnailItem;->mToggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    if-eqz v0, :cond_3

    .line 443
    invoke-direct {p0}, Lcom/amazon/android/widget/ThumbnailItem;->updateBookmarkVisibility()V

    :cond_3
    return-void
.end method


# virtual methods
.method public consumeLastSelectedViewIndex()I
    .locals 2

    .line 192
    iget v0, p0, Lcom/amazon/android/widget/ThumbnailItem;->lastSelectedViewIndex:I

    const/4 v1, -0x1

    .line 193
    iput v1, p0, Lcom/amazon/android/widget/ThumbnailItem;->lastSelectedViewIndex:I

    return v0
.end method

.method public deselect(I)V
    .locals 2

    .line 239
    iput p1, p0, Lcom/amazon/android/widget/ThumbnailItem;->mSelectedPage:I

    const/4 p1, 0x0

    .line 240
    :goto_0
    iget v0, p0, Lcom/amazon/android/widget/ThumbnailItem;->count:I

    if-ge p1, v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/amazon/android/widget/ThumbnailItem;->mImgViews:[Lcom/amazon/android/widget/ThumbnailImageView;

    aget-object v0, v0, p1

    sget-object v1, Lcom/amazon/android/widget/ThumbnailImageView$PageBorder;->NONE:Lcom/amazon/android/widget/ThumbnailImageView$PageBorder;

    invoke-virtual {v0, v1}, Lcom/amazon/android/widget/ThumbnailImageView;->setPageBorder(Lcom/amazon/android/widget/ThumbnailImageView$PageBorder;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getImageLoader()Lcom/amazon/nwstd/model/replica/BitmapProvider;
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/amazon/android/widget/ThumbnailItem;->mImageLoader:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    .line 321
    iget v0, p0, Lcom/amazon/android/widget/ThumbnailItem;->count:I

    return v0
.end method

.method public getStartIndex()I
    .locals 1

    .line 251
    iget v0, p0, Lcom/amazon/android/widget/ThumbnailItem;->startIndex:I

    return v0
.end method

.method public highlight(II)V
    .locals 3

    .line 205
    iput p2, p0, Lcom/amazon/android/widget/ThumbnailItem;->mSelectedPage:I

    .line 206
    invoke-virtual {p0, p2}, Lcom/amazon/android/widget/ThumbnailItem;->deselect(I)V

    .line 207
    iget p2, p0, Lcom/amazon/android/widget/ThumbnailItem;->mSelectedPage:I

    iget v0, p0, Lcom/amazon/android/widget/ThumbnailItem;->startIndex:I

    if-eq p2, v0, :cond_0

    iget v1, p0, Lcom/amazon/android/widget/ThumbnailItem;->count:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    if-ne p2, v0, :cond_1

    .line 208
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/android/widget/ThumbnailItem;->highlight_(I)V

    :cond_1
    return-void
.end method

.method public initialize(Lcom/amazon/nwstd/model/replica/BitmapProvider;Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;IZILcom/amazon/kindle/util/drawing/Dimension;ZII)V
    .locals 5

    .line 120
    sget-boolean v0, Lcom/amazon/android/widget/ThumbnailItem;->DEBUG:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/widget/ThumbnailItem;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "initialize startIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/amazon/android/widget/ThumbnailItem;->startIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/amazon/android/widget/ThumbnailItem;->cleanUpBeforeInitialization()V

    .line 122
    iput p8, p0, Lcom/amazon/android/widget/ThumbnailItem;->mSelectedPage:I

    .line 123
    iput p5, p0, Lcom/amazon/android/widget/ThumbnailItem;->startIndex:I

    .line 124
    iput p3, p0, Lcom/amazon/android/widget/ThumbnailItem;->count:I

    .line 125
    iput-object p1, p0, Lcom/amazon/android/widget/ThumbnailItem;->mImageLoader:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    .line 126
    iput-object p2, p0, Lcom/amazon/android/widget/ThumbnailItem;->mToggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    .line 127
    iput-boolean p7, p0, Lcom/amazon/android/widget/ThumbnailItem;->mActivateAsyncLoad:Z

    .line 129
    new-array p1, p3, [Lcom/amazon/android/widget/ThumbnailImageView;

    iput-object p1, p0, Lcom/amazon/android/widget/ThumbnailItem;->mImgViews:[Lcom/amazon/android/widget/ThumbnailImageView;

    .line 130
    new-array p1, p3, [Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/android/widget/ThumbnailItem;->mPgNumber:[Landroid/widget/TextView;

    .line 131
    iput p9, p0, Lcom/amazon/android/widget/ThumbnailItem;->mOrientation:I

    if-eqz p7, :cond_1

    .line 134
    new-array p1, p3, [Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    iput-object p1, p0, Lcom/amazon/android/widget/ThumbnailItem;->mBitmapLoadJob:[Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    .line 135
    new-array p1, p3, [Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/amazon/android/widget/ThumbnailItem;->mBitmapReadyRunnable:[Ljava/lang/Runnable;

    :cond_1
    const/4 p1, 0x2

    new-array p2, p1, [I

    .line 138
    sget p3, Lcom/amazon/kindle/newsstand/core/R$id;->img1:I

    const/4 p7, 0x0

    aput p3, p2, p7

    sget p3, Lcom/amazon/kindle/newsstand/core/R$id;->img2:I

    const/4 p8, 0x1

    aput p3, p2, p8

    new-array p1, p1, [I

    .line 139
    sget p3, Lcom/amazon/kindle/newsstand/core/R$id;->tv1:I

    aput p3, p1, p7

    sget p3, Lcom/amazon/kindle/newsstand/core/R$id;->tv2:I

    aput p3, p1, p8

    const/4 p3, 0x0

    .line 141
    :goto_0
    iget p9, p0, Lcom/amazon/android/widget/ThumbnailItem;->count:I

    if-ge p3, p9, :cond_3

    .line 142
    iget-object p9, p0, Lcom/amazon/android/widget/ThumbnailItem;->mImgViews:[Lcom/amazon/android/widget/ThumbnailImageView;

    aget v0, p2, p3

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/widget/ThumbnailImageView;

    aput-object v0, p9, p3

    .line 143
    iget-object p9, p0, Lcom/amazon/android/widget/ThumbnailItem;->mPgNumber:[Landroid/widget/TextView;

    aget v0, p1, p3

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, p9, p3

    .line 146
    iget-object p9, p0, Lcom/amazon/android/widget/ThumbnailItem;->mImgViews:[Lcom/amazon/android/widget/ThumbnailImageView;

    aget-object p9, p9, p3

    invoke-virtual {p9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p9

    .line 147
    iget v0, p6, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    iput v0, p9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 148
    iget v0, p6, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    iput v0, p9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 149
    iget-object v0, p0, Lcom/amazon/android/widget/ThumbnailItem;->mImgViews:[Lcom/amazon/android/widget/ThumbnailImageView;

    aget-object v0, v0, p3

    invoke-virtual {v0, p9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    iget-object p9, p0, Lcom/amazon/android/widget/ThumbnailItem;->mImgViews:[Lcom/amazon/android/widget/ThumbnailImageView;

    aget-object p9, p9, p3

    add-int v0, p3, p5

    invoke-virtual {p9, v0}, Lcom/amazon/android/widget/ThumbnailImageView;->setIndex(I)V

    .line 154
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p9

    sget v2, Lcom/amazon/kindle/newsstand/core/R$string;->page_number_title:I

    new-array v3, p8, [Ljava/lang/Object;

    iget v4, p0, Lcom/amazon/android/widget/ThumbnailItem;->startIndex:I

    add-int/2addr v4, p3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, p7

    invoke-virtual {p9, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p9

    .line 155
    iget-object v2, p0, Lcom/amazon/android/widget/ThumbnailItem;->mImgViews:[Lcom/amazon/android/widget/ThumbnailImageView;

    aget-object v2, v2, p3

    invoke-virtual {v2, p9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 157
    iget-object p9, p0, Lcom/amazon/android/widget/ThumbnailItem;->mImgViews:[Lcom/amazon/android/widget/ThumbnailImageView;

    aget-object p9, p9, p3

    new-instance v2, Lcom/amazon/android/widget/ThumbnailItem$2;

    invoke-direct {v2, p0}, Lcom/amazon/android/widget/ThumbnailItem$2;-><init>(Lcom/amazon/android/widget/ThumbnailItem;)V

    invoke-virtual {p9, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    if-eqz p4, :cond_2

    .line 166
    iget-object p9, p0, Lcom/amazon/android/widget/ThumbnailItem;->mPgNumber:[Landroid/widget/TextView;

    aget-object p9, p9, p3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/newsstand/core/R$string;->thumbnailItem_cover_string:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 168
    :cond_2
    iget-object p9, p0, Lcom/amazon/android/widget/ThumbnailItem;->mPgNumber:[Landroid/widget/TextView;

    aget-object p9, p9, p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    :cond_3
    if-ne p9, p8, :cond_4

    .line 173
    aget p1, p1, p8

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    aget p1, p2, p8

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 176
    :cond_4
    iget-object p1, p0, Lcom/amazon/android/widget/ThumbnailItem;->mPgNumber:[Landroid/widget/TextView;

    aget-object p1, p1, p8

    invoke-virtual {p1, p7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    iget-object p1, p0, Lcom/amazon/android/widget/ThumbnailItem;->mImgViews:[Lcom/amazon/android/widget/ThumbnailImageView;

    aget-object p1, p1, p8

    invoke-virtual {p1, p7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    :goto_2
    invoke-direct {p0}, Lcom/amazon/android/widget/ThumbnailItem;->updateView()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 377
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 379
    invoke-direct {p0}, Lcom/amazon/android/widget/ThumbnailItem;->registerToToggleEvent()V

    .line 381
    invoke-direct {p0}, Lcom/amazon/android/widget/ThumbnailItem;->onShow()V

    return-void
.end method

.method public onBitmapReady(ILcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;)V
    .locals 4

    .line 64
    sget-boolean v0, Lcom/amazon/android/widget/ThumbnailItem;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/widget/ThumbnailItem;->TAG:Ljava/lang/String;

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onBitmapReady bitmapID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 66
    :cond_0
    iget v0, p0, Lcom/amazon/android/widget/ThumbnailItem;->startIndex:I

    sub-int v0, p1, v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 68
    iget v2, p0, Lcom/amazon/android/widget/ThumbnailItem;->count:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    invoke-static {v1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 71
    new-instance v1, Lcom/amazon/android/widget/ThumbnailItem$1;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/amazon/android/widget/ThumbnailItem$1;-><init>(Lcom/amazon/android/widget/ThumbnailItem;ILcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;I)V

    .line 87
    iget-object p1, p0, Lcom/amazon/android/widget/ThumbnailItem;->mBitmapReadyRunnable:[Ljava/lang/Runnable;

    aput-object v1, p1, v0

    .line 88
    iget-object p1, p0, Lcom/amazon/android/widget/ThumbnailItem;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 386
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 388
    invoke-virtual {p0}, Lcom/amazon/android/widget/ThumbnailItem;->onHide()V

    .line 389
    invoke-direct {p0}, Lcom/amazon/android/widget/ThumbnailItem;->unregisterToToggleEvent()V

    return-void
.end method

.method public onHide()V
    .locals 4

    .line 424
    sget-boolean v0, Lcom/amazon/android/widget/ThumbnailItem;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/widget/ThumbnailItem;->TAG:Ljava/lang/String;

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onHide startIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/amazon/android/widget/ThumbnailItem;->startIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 425
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/widget/ThumbnailItem;->releaseBitmaps()V

    .line 426
    iget v0, p0, Lcom/amazon/android/widget/ThumbnailItem;->mSelectedPage:I

    invoke-virtual {p0, v0}, Lcom/amazon/android/widget/ThumbnailItem;->deselect(I)V

    return-void
.end method

.method public onRecycle()V
    .locals 0

    .line 405
    invoke-virtual {p0}, Lcom/amazon/android/widget/ThumbnailItem;->releaseBitmaps()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 394
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 397
    invoke-direct {p0}, Lcom/amazon/android/widget/ThumbnailItem;->onShow()V

    goto :goto_0

    .line 400
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/widget/ThumbnailItem;->onHide()V

    :goto_0
    return-void
.end method

.method public releaseBitmaps()V
    .locals 2

    const/4 v0, 0x0

    .line 258
    :goto_0
    iget v1, p0, Lcom/amazon/android/widget/ThumbnailItem;->count:I

    if-ge v0, v1, :cond_0

    .line 259
    invoke-direct {p0, v0}, Lcom/amazon/android/widget/ThumbnailItem;->releaseBitmap(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setImageLoader(Lcom/amazon/nwstd/model/replica/BitmapProvider;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lcom/amazon/android/widget/ThumbnailItem;->mImageLoader:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    .line 415
    invoke-direct {p0}, Lcom/amazon/android/widget/ThumbnailItem;->updateView()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 469
    iget v0, p0, Lcom/amazon/android/widget/ThumbnailItem;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 471
    iput p1, p0, Lcom/amazon/android/widget/ThumbnailItem;->mOrientation:I

    .line 472
    invoke-direct {p0}, Lcom/amazon/android/widget/ThumbnailItem;->updateView()V

    :cond_0
    return-void
.end method
