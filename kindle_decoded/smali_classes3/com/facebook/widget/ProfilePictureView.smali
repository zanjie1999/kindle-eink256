.class public Lcom/facebook/widget/ProfilePictureView;
.super Landroid/widget/FrameLayout;
.source "ProfilePictureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/ProfilePictureView$OnErrorListener;
    }
.end annotation


# static fields
.field private static final BITMAP_HEIGHT_KEY:Ljava/lang/String; = "ProfilePictureView_height"

.field private static final BITMAP_KEY:Ljava/lang/String; = "ProfilePictureView_bitmap"

.field private static final BITMAP_WIDTH_KEY:Ljava/lang/String; = "ProfilePictureView_width"

.field private static final IS_CROPPED_DEFAULT_VALUE:Z = true

.field private static final IS_CROPPED_KEY:Ljava/lang/String; = "ProfilePictureView_isCropped"

.field private static final MIN_SIZE:I = 0x1

.field private static final PENDING_REFRESH_KEY:Ljava/lang/String; = "ProfilePictureView_refresh"

.field private static final PRESET_SIZE_KEY:Ljava/lang/String; = "ProfilePictureView_presetSize"

.field private static final PROFILE_ID_KEY:Ljava/lang/String; = "ProfilePictureView_profileId"

.field private static final SUPER_STATE_KEY:Ljava/lang/String; = "ProfilePictureView_superState"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private customizedDefaultProfilePicture:Landroid/graphics/Bitmap;

.field private image:Landroid/widget/ImageView;

.field private imageContents:Landroid/graphics/Bitmap;

.field private isCropped:Z

.field private lastRequest:Lcom/facebook/internal/ImageRequest;

.field private onErrorListener:Lcom/facebook/widget/ProfilePictureView$OnErrorListener;

.field private presetSizeType:I

.field private profileId:Ljava/lang/String;

.field private queryHeight:I

.field private queryWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lcom/facebook/widget/ProfilePictureView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/widget/ProfilePictureView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 121
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 105
    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->queryHeight:I

    .line 106
    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->queryWidth:I

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/facebook/widget/ProfilePictureView;->isCropped:Z

    const/4 v0, -0x1

    .line 110
    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->presetSizeType:I

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->customizedDefaultProfilePicture:Landroid/graphics/Bitmap;

    .line 122
    invoke-direct {p0, p1}, Lcom/facebook/widget/ProfilePictureView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 133
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 105
    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->queryHeight:I

    .line 106
    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->queryWidth:I

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/facebook/widget/ProfilePictureView;->isCropped:Z

    const/4 v0, -0x1

    .line 110
    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->presetSizeType:I

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->customizedDefaultProfilePicture:Landroid/graphics/Bitmap;

    .line 134
    invoke-direct {p0, p1}, Lcom/facebook/widget/ProfilePictureView;->initialize(Landroid/content/Context;)V

    .line 135
    invoke-direct {p0, p2}, Lcom/facebook/widget/ProfilePictureView;->parseAttributes(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 147
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 105
    iput p3, p0, Lcom/facebook/widget/ProfilePictureView;->queryHeight:I

    .line 106
    iput p3, p0, Lcom/facebook/widget/ProfilePictureView;->queryWidth:I

    const/4 p3, 0x1

    .line 107
    iput-boolean p3, p0, Lcom/facebook/widget/ProfilePictureView;->isCropped:Z

    const/4 p3, -0x1

    .line 110
    iput p3, p0, Lcom/facebook/widget/ProfilePictureView;->presetSizeType:I

    const/4 p3, 0x0

    .line 113
    iput-object p3, p0, Lcom/facebook/widget/ProfilePictureView;->customizedDefaultProfilePicture:Landroid/graphics/Bitmap;

    .line 148
    invoke-direct {p0, p1}, Lcom/facebook/widget/ProfilePictureView;->initialize(Landroid/content/Context;)V

    .line 149
    invoke-direct {p0, p2}, Lcom/facebook/widget/ProfilePictureView;->parseAttributes(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/widget/ProfilePictureView;Lcom/facebook/internal/ImageResponse;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/facebook/widget/ProfilePictureView;->processResponse(Lcom/facebook/internal/ImageResponse;)V

    return-void
.end method

.method private getPresetSizeInPixels(Z)I
    .locals 3

    .line 515
    iget v0, p0, Lcom/facebook/widget/ProfilePictureView;->presetSizeType:I

    const/4 v1, -0x4

    if-eq v0, v1, :cond_4

    const/4 v1, -0x3

    if-eq v0, v1, :cond_3

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    if-nez p1, :cond_1

    return v2

    .line 529
    :cond_1
    sget p1, Lcom/facebook/android/R$dimen;->com_facebook_profilepictureview_preset_size_normal:I

    goto :goto_0

    .line 517
    :cond_2
    sget p1, Lcom/facebook/android/R$dimen;->com_facebook_profilepictureview_preset_size_small:I

    goto :goto_0

    .line 520
    :cond_3
    sget p1, Lcom/facebook/android/R$dimen;->com_facebook_profilepictureview_preset_size_normal:I

    goto :goto_0

    .line 523
    :cond_4
    sget p1, Lcom/facebook/android/R$dimen;->com_facebook_profilepictureview_preset_size_large:I

    .line 536
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 1

    .line 368
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 370
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->image:Landroid/widget/ImageView;

    .line 372
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 376
    iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    iget-object p1, p0, Lcom/facebook/widget/ProfilePictureView;->image:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 381
    iget-object p1, p0, Lcom/facebook/widget/ProfilePictureView;->image:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private parseAttributes(Landroid/util/AttributeSet;)V
    .locals 2

    .line 385
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/android/R$styleable;->com_facebook_profile_picture_view:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 386
    sget v0, Lcom/facebook/android/R$styleable;->com_facebook_profile_picture_view_preset_size:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->setPresetSize(I)V

    .line 387
    sget v0, Lcom/facebook/android/R$styleable;->com_facebook_profile_picture_view_is_cropped:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/widget/ProfilePictureView;->isCropped:Z

    .line 388
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private processResponse(Lcom/facebook/internal/ImageResponse;)V
    .locals 4

    .line 461
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->getRequest()Lcom/facebook/internal/ImageRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/widget/ProfilePictureView;->lastRequest:Lcom/facebook/internal/ImageRequest;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 462
    iput-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->lastRequest:Lcom/facebook/internal/ImageRequest;

    .line 463
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 464
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->getError()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 466
    iget-object p1, p0, Lcom/facebook/widget/ProfilePictureView;->onErrorListener:Lcom/facebook/widget/ProfilePictureView$OnErrorListener;

    if-eqz p1, :cond_0

    .line 468
    new-instance v0, Lcom/facebook/FacebookException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in downloading profile picture for profileId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->getProfileId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Lcom/facebook/widget/ProfilePictureView$OnErrorListener;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_0

    .line 471
    :cond_0
    sget-object p1, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const/4 v0, 0x6

    sget-object v2, Lcom/facebook/widget/ProfilePictureView;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v2, v1}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 474
    invoke-direct {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 476
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->isCachedRedirect()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 477
    invoke-direct {p0, p1}, Lcom/facebook/widget/ProfilePictureView;->sendImageRequest(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private refreshImage(Z)V
    .locals 2

    .line 392
    invoke-direct {p0}, Lcom/facebook/widget/ProfilePictureView;->updateImageQueryParameters()Z

    move-result v0

    .line 395
    iget-object v1, p0, Lcom/facebook/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/facebook/widget/ProfilePictureView;->queryWidth:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/facebook/widget/ProfilePictureView;->queryHeight:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_3

    :cond_1
    const/4 p1, 0x1

    .line 400
    invoke-direct {p0, p1}, Lcom/facebook/widget/ProfilePictureView;->sendImageRequest(Z)V

    goto :goto_1

    .line 398
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/facebook/widget/ProfilePictureView;->setBlankProfilePicture()V

    :cond_3
    :goto_1
    return-void
.end method

.method private sendImageRequest(Z)V
    .locals 5

    .line 428
    :try_start_0
    new-instance v0, Lcom/facebook/internal/ImageRequest$Builder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    iget v3, p0, Lcom/facebook/widget/ProfilePictureView;->queryWidth:I

    iget v4, p0, Lcom/facebook/widget/ProfilePictureView;->queryHeight:I

    invoke-static {v2, v3, v4}, Lcom/facebook/internal/ImageRequest;->getProfilePictureUrl(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/ImageRequest$Builder;-><init>(Landroid/content/Context;Ljava/net/URI;)V

    .line 432
    invoke-virtual {v0, p1}, Lcom/facebook/internal/ImageRequest$Builder;->setAllowCachedRedirects(Z)Lcom/facebook/internal/ImageRequest$Builder;

    invoke-virtual {v0, p0}, Lcom/facebook/internal/ImageRequest$Builder;->setCallerTag(Ljava/lang/Object;)Lcom/facebook/internal/ImageRequest$Builder;

    new-instance p1, Lcom/facebook/widget/ProfilePictureView$1;

    invoke-direct {p1, p0}, Lcom/facebook/widget/ProfilePictureView$1;-><init>(Lcom/facebook/widget/ProfilePictureView;)V

    invoke-virtual {v0, p1}, Lcom/facebook/internal/ImageRequest$Builder;->setCallback(Lcom/facebook/internal/ImageRequest$Callback;)Lcom/facebook/internal/ImageRequest$Builder;

    invoke-virtual {v0}, Lcom/facebook/internal/ImageRequest$Builder;->build()Lcom/facebook/internal/ImageRequest;

    move-result-object p1

    .line 446
    iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->lastRequest:Lcom/facebook/internal/ImageRequest;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->lastRequest:Lcom/facebook/internal/ImageRequest;

    invoke-static {v0}, Lcom/facebook/internal/ImageDownloader;->cancelRequest(Lcom/facebook/internal/ImageRequest;)Z

    .line 449
    :cond_0
    iput-object p1, p0, Lcom/facebook/widget/ProfilePictureView;->lastRequest:Lcom/facebook/internal/ImageRequest;

    .line 451
    invoke-static {p1}, Lcom/facebook/internal/ImageDownloader;->downloadAsync(Lcom/facebook/internal/ImageRequest;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 453
    sget-object v0, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/widget/ProfilePictureView;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URISyntaxException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setBlankProfilePicture()V
    .locals 4

    .line 405
    iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->customizedDefaultProfilePicture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 406
    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->isCropped()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/facebook/android/R$drawable;->com_facebook_profile_picture_blank_square:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/facebook/android/R$drawable;->com_facebook_profile_picture_blank_portrait:I

    .line 409
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 412
    :cond_1
    invoke-direct {p0}, Lcom/facebook/widget/ProfilePictureView;->updateImageQueryParameters()Z

    .line 414
    iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->customizedDefaultProfilePicture:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/facebook/widget/ProfilePictureView;->queryWidth:I

    iget v2, p0, Lcom/facebook/widget/ProfilePictureView;->queryHeight:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 415
    invoke-direct {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    return-void
.end method

.method private setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->image:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 421
    iput-object p1, p0, Lcom/facebook/widget/ProfilePictureView;->imageContents:Landroid/graphics/Bitmap;

    .line 422
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private updateImageQueryParameters()Z
    .locals 5

    .line 484
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    .line 485
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v1, v2, :cond_7

    if-ge v0, v2, :cond_0

    goto :goto_2

    .line 491
    :cond_0
    invoke-direct {p0, v3}, Lcom/facebook/widget/ProfilePictureView;->getPresetSizeInPixels(Z)I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v4

    move v1, v0

    :cond_1
    if-gt v1, v0, :cond_3

    .line 500
    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->isCropped()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 502
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->isCropped()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v0

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 505
    :goto_0
    iget v4, p0, Lcom/facebook/widget/ProfilePictureView;->queryWidth:I

    if-ne v1, v4, :cond_6

    iget v4, p0, Lcom/facebook/widget/ProfilePictureView;->queryHeight:I

    if-eq v0, v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    .line 507
    :cond_6
    :goto_1
    iput v1, p0, Lcom/facebook/widget/ProfilePictureView;->queryWidth:I

    .line 508
    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->queryHeight:I

    return v2

    :cond_7
    :goto_2
    return v3
.end method


# virtual methods
.method public final getOnErrorListener()Lcom/facebook/widget/ProfilePictureView$OnErrorListener;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->onErrorListener:Lcom/facebook/widget/ProfilePictureView$OnErrorListener;

    return-object v0
.end method

.method public final getPresetSize()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/facebook/widget/ProfilePictureView;->presetSizeType:I

    return v0
.end method

.method public final getProfileId()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    return-object v0
.end method

.method public final isCropped()Z
    .locals 1

    .line 188
    iget-boolean v0, p0, Lcom/facebook/widget/ProfilePictureView;->isCropped:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 359
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 363
    iput-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->lastRequest:Lcom/facebook/internal/ImageRequest;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 304
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 p1, 0x0

    .line 307
    invoke-direct {p0, p1}, Lcom/facebook/widget/ProfilePictureView;->refreshImage(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 269
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 271
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 272
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 273
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/4 v4, -0x2

    const/4 v5, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    if-eq v3, v6, :cond_0

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v3, v4, :cond_0

    .line 275
    invoke-direct {p0, v5}, Lcom/facebook/widget/ProfilePictureView;->getPresetSizeInPixels(Z)I

    move-result v1

    .line 276
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 280
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    if-eq v7, v6, :cond_1

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v4, :cond_1

    .line 282
    invoke-direct {p0, v5}, Lcom/facebook/widget/ProfilePictureView;->getPresetSizeInPixels(Z)I

    move-result v2

    .line 283
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    if-eqz v5, :cond_2

    .line 290
    invoke-virtual {p0, v2, v1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 291
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->measureChildren(II)V

    goto :goto_2

    .line 294
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_2
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 337
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/os/Bundle;

    if-eq v0, v1, :cond_0

    .line 338
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 340
    :cond_0
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "ProfilePictureView_superState"

    .line 341
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "ProfilePictureView_profileId"

    .line 343
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    const-string v0, "ProfilePictureView_presetSize"

    .line 344
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->presetSizeType:I

    const-string v0, "ProfilePictureView_isCropped"

    .line 345
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/widget/ProfilePictureView;->isCropped:Z

    const-string v0, "ProfilePictureView_width"

    .line 346
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->queryWidth:I

    const-string v0, "ProfilePictureView_height"

    .line 347
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->queryHeight:I

    const-string v0, "ProfilePictureView_bitmap"

    .line 349
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const-string v0, "ProfilePictureView_refresh"

    .line 351
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 352
    invoke-direct {p0, p1}, Lcom/facebook/widget/ProfilePictureView;->refreshImage(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 317
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 318
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ProfilePictureView_superState"

    .line 319
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 320
    iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    const-string v2, "ProfilePictureView_profileId"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget v0, p0, Lcom/facebook/widget/ProfilePictureView;->presetSizeType:I

    const-string v2, "ProfilePictureView_presetSize"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 322
    iget-boolean v0, p0, Lcom/facebook/widget/ProfilePictureView;->isCropped:Z

    const-string v2, "ProfilePictureView_isCropped"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 323
    iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->imageContents:Landroid/graphics/Bitmap;

    const-string v2, "ProfilePictureView_bitmap"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 324
    iget v0, p0, Lcom/facebook/widget/ProfilePictureView;->queryWidth:I

    const-string v2, "ProfilePictureView_width"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 325
    iget v0, p0, Lcom/facebook/widget/ProfilePictureView;->queryHeight:I

    const-string v2, "ProfilePictureView_height"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 326
    iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->lastRequest:Lcom/facebook/internal/ImageRequest;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "ProfilePictureView_refresh"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v1
.end method

.method public final setCropped(Z)V
    .locals 0

    .line 198
    iput-boolean p1, p0, Lcom/facebook/widget/ProfilePictureView;->isCropped:Z

    const/4 p1, 0x0

    .line 200
    invoke-direct {p0, p1}, Lcom/facebook/widget/ProfilePictureView;->refreshImage(Z)V

    return-void
.end method

.method public final setDefaultProfilePicture(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/facebook/widget/ProfilePictureView;->customizedDefaultProfilePicture:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final setOnErrorListener(Lcom/facebook/widget/ProfilePictureView$OnErrorListener;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/facebook/widget/ProfilePictureView;->onErrorListener:Lcom/facebook/widget/ProfilePictureView$OnErrorListener;

    return-void
.end method

.method public final setPresetSize(I)V
    .locals 1

    const/4 v0, -0x4

    if-eq p1, v0, :cond_1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must use a predefined preset size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 172
    :cond_1
    :goto_0
    iput p1, p0, Lcom/facebook/widget/ProfilePictureView;->presetSizeType:I

    .line 179
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public final setProfileId(Ljava/lang/String;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 222
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/facebook/widget/ProfilePictureView;->setBlankProfilePicture()V

    const/4 v0, 0x1

    .line 226
    :goto_1
    iput-object p1, p0, Lcom/facebook/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    .line 227
    invoke-direct {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->refreshImage(Z)V

    return-void
.end method
