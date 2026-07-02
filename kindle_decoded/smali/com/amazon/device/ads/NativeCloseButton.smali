.class Lcom/amazon/device/ads/NativeCloseButton;
.super Ljava/lang/Object;
.source "NativeCloseButton.java"


# static fields
.field private static final CLOSE_BUTTON_SIZE_DP:I = 0x3c

.field private static final CLOSE_BUTTON_TAP_TARGET_SIZE_DP:I = 0x50

.field private static final CONTENT_DESCRIPTION_NATIVE_CLOSE_BUTTON:Ljava/lang/String; = "nativeCloseButton"

.field private static final CONTENT_DESCRIPTION_NATIVE_CLOSE_BUTTON_CONTAINER:Ljava/lang/String; = "nativeCloseButtonContainer"

.field private static final CONTENT_DESCRIPTION_NATIVE_CLOSE_BUTTON_IMAGE:Ljava/lang/String; = "nativeCloseButtonImage"


# instance fields
.field private final adCloser:Lcom/amazon/device/ads/AdCloser;

.field private closeButton:Landroid/view/ViewGroup;

.field private closeButtonContainer:Landroid/view/ViewGroup;

.field private closeButtonImage:Landroid/widget/ImageView;

.field private hasNativeCloseButton:Z

.field private final imageViewFactory:Lcom/amazon/device/ads/ImageViewFactory;

.field private final layoutFactory:Lcom/amazon/device/ads/LayoutFactory;

.field private final threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

.field private final viewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/amazon/device/ads/AdCloser;)V
    .locals 6

    .line 48
    invoke-static {}, Lcom/amazon/device/ads/ThreadUtils;->getThreadRunner()Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    move-result-object v3

    new-instance v4, Lcom/amazon/device/ads/LayoutFactory;

    invoke-direct {v4}, Lcom/amazon/device/ads/LayoutFactory;-><init>()V

    new-instance v5, Lcom/amazon/device/ads/ImageButtonFactory;

    invoke-direct {v5}, Lcom/amazon/device/ads/ImageButtonFactory;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/NativeCloseButton;-><init>(Landroid/view/ViewGroup;Lcom/amazon/device/ads/AdCloser;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/LayoutFactory;Lcom/amazon/device/ads/ImageViewFactory;)V

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;Lcom/amazon/device/ads/AdCloser;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/LayoutFactory;Lcom/amazon/device/ads/ImageViewFactory;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/amazon/device/ads/NativeCloseButton;->hasNativeCloseButton:Z

    .line 56
    iput-object p1, p0, Lcom/amazon/device/ads/NativeCloseButton;->viewGroup:Landroid/view/ViewGroup;

    .line 57
    iput-object p2, p0, Lcom/amazon/device/ads/NativeCloseButton;->adCloser:Lcom/amazon/device/ads/AdCloser;

    .line 58
    iput-object p3, p0, Lcom/amazon/device/ads/NativeCloseButton;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    .line 59
    iput-object p4, p0, Lcom/amazon/device/ads/NativeCloseButton;->layoutFactory:Lcom/amazon/device/ads/LayoutFactory;

    .line 60
    iput-object p5, p0, Lcom/amazon/device/ads/NativeCloseButton;->imageViewFactory:Lcom/amazon/device/ads/ImageViewFactory;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/NativeCloseButton;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/NativeCloseButton;->createButtonIfNeeded(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/device/ads/NativeCloseButton;ZLcom/amazon/device/ads/RelativePosition;II)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/device/ads/NativeCloseButton;->addCloseButtonToTapTargetIfNeeded(ZLcom/amazon/device/ads/RelativePosition;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/device/ads/NativeCloseButton;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/amazon/device/ads/NativeCloseButton;->closeAd()V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/device/ads/NativeCloseButton;Landroid/view/MotionEvent;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/device/ads/NativeCloseButton;->animateCloseButton(Landroid/view/MotionEvent;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/device/ads/NativeCloseButton;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/amazon/device/ads/NativeCloseButton;->removeNativeCloseButtonOnMainThread()V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/device/ads/NativeCloseButton;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/amazon/device/ads/NativeCloseButton;->hideImageOnMainThread()V

    return-void
.end method

.method private addCloseButtonToTapTargetIfNeeded(ZLcom/amazon/device/ads/RelativePosition;II)V
    .locals 4

    const/16 v0, 0xd

    if-eqz p1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButton:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, p3, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 190
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 191
    iget-object p3, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButton:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonImage:Landroid/widget/ImageView;

    invoke-virtual {p3, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 193
    iget-object p1, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButton:Landroid/view/ViewGroup;

    iget-object p3, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonImage:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 195
    iget-object p1, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButton:Landroid/view/ViewGroup;

    iget-object p3, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 198
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/device/ads/NativeCloseButton;->viewGroup:Landroid/view/ViewGroup;

    iget-object p3, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 200
    iget-object p1, p0, Lcom/amazon/device/ads/NativeCloseButton;->viewGroup:Landroid/view/ViewGroup;

    iget-object p3, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonContainer:Landroid/view/ViewGroup;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    :cond_2
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, p4, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-nez p2, :cond_3

    .line 207
    sget-object p2, Lcom/amazon/device/ads/RelativePosition;->TOP_RIGHT:Lcom/amazon/device/ads/RelativePosition;

    .line 209
    :cond_3
    sget-object p3, Lcom/amazon/device/ads/NativeCloseButton$6;->$SwitchMap$com$amazon$device$ads$RelativePosition:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, p3, p2

    const/16 p3, 0x9

    const/16 p4, 0xe

    const/16 v1, 0xb

    const/16 v2, 0xc

    const/16 v3, 0xa

    packed-switch p2, :pswitch_data_0

    .line 239
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 240
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 235
    :pswitch_0
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 236
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 231
    :pswitch_1
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 232
    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 227
    :pswitch_2
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 228
    invoke-virtual {p1, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 224
    :pswitch_3
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 220
    :pswitch_4
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 221
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 216
    :pswitch_5
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 217
    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 212
    :pswitch_6
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 213
    invoke-virtual {p1, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 243
    :goto_1
    iget-object p2, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButton:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    iget-object p1, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->bringToFront()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private animateCloseButton(Landroid/view/MotionEvent;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    iget-object p1, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 175
    :cond_1
    iget-object p1, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private closeAd()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/amazon/device/ads/NativeCloseButton;->adCloser:Lcom/amazon/device/ads/AdCloser;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdCloser;->closeAd()Z

    return-void
.end method

.method private createButtonIfNeeded(I)V
    .locals 5

    .line 117
    monitor-enter p0

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButton:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/amazon/device/ads/NativeCloseButton;->layoutFactory:Lcom/amazon/device/ads/LayoutFactory;

    invoke-direct {p0}, Lcom/amazon/device/ads/NativeCloseButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/amazon/device/ads/LayoutFactory$LayoutType;->RELATIVE_LAYOUT:Lcom/amazon/device/ads/LayoutFactory$LayoutType;

    const-string/jumbo v3, "nativeCloseButton"

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/device/ads/LayoutFactory;->createLayout(Landroid/content/Context;Lcom/amazon/device/ads/LayoutFactory$LayoutType;Ljava/lang/String;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButton:Landroid/view/ViewGroup;

    .line 123
    iget-object v0, p0, Lcom/amazon/device/ads/NativeCloseButton;->imageViewFactory:Lcom/amazon/device/ads/ImageViewFactory;

    invoke-direct {p0}, Lcom/amazon/device/ads/NativeCloseButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "nativeCloseButtonImage"

    invoke-interface {v0, v1, v2}, Lcom/amazon/device/ads/ImageViewFactory;->createImageView(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonImage:Landroid/widget/ImageView;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 126
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/amazon/device/ads/NativeCloseButton;->imageViewFactory:Lcom/amazon/device/ads/ImageViewFactory;

    invoke-direct {p0}, Lcom/amazon/device/ads/NativeCloseButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/amazon/device/ads/Assets;->getInstance()Lcom/amazon/device/ads/Assets;

    move-result-object v2

    const-string v3, "amazon_ads_close_normal.png"

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/Assets;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/device/ads/ImageViewFactory;->createBitmapDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/amazon/device/ads/NativeCloseButton;->imageViewFactory:Lcom/amazon/device/ads/ImageViewFactory;

    invoke-direct {p0}, Lcom/amazon/device/ads/NativeCloseButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/amazon/device/ads/Assets;->getInstance()Lcom/amazon/device/ads/Assets;

    move-result-object v3

    const-string v4, "amazon_ads_close_pressed.png"

    invoke-virtual {v3, v4}, Lcom/amazon/device/ads/Assets;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/amazon/device/ads/ImageViewFactory;->createBitmapDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 131
    iget-object v2, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    iget-object v2, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 133
    iget-object v2, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    new-instance v2, Lcom/amazon/device/ads/NativeCloseButton$2;

    invoke-direct {v2, p0}, Lcom/amazon/device/ads/NativeCloseButton$2;-><init>(Lcom/amazon/device/ads/NativeCloseButton;)V

    .line 141
    iget-object v3, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v3, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButton:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    new-instance v2, Lcom/amazon/device/ads/NativeCloseButton$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/amazon/device/ads/NativeCloseButton$3;-><init>(Lcom/amazon/device/ads/NativeCloseButton;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    .line 154
    iget-object v0, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButton:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 155
    iget-object v0, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 157
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xb

    .line 158
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p1, 0xa

    .line 159
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 160
    iget-object p1, p0, Lcom/amazon/device/ads/NativeCloseButton;->layoutFactory:Lcom/amazon/device/ads/LayoutFactory;

    invoke-direct {p0}, Lcom/amazon/device/ads/NativeCloseButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/amazon/device/ads/LayoutFactory$LayoutType;->RELATIVE_LAYOUT:Lcom/amazon/device/ads/LayoutFactory$LayoutType;

    const-string/jumbo v3, "nativeCloseButtonContainer"

    invoke-virtual {p1, v1, v2, v3}, Lcom/amazon/device/ads/LayoutFactory;->createLayout(Landroid/content/Context;Lcom/amazon/device/ads/LayoutFactory$LayoutType;Ljava/lang/String;)Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonContainer:Landroid/view/ViewGroup;

    .line 161
    iget-object v1, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButton:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 126
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/device/ads/NativeCloseButton;->viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private hideImage()V
    .locals 4

    .line 290
    iget-object v0, p0, Lcom/amazon/device/ads/NativeCloseButton;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    new-instance v1, Lcom/amazon/device/ads/NativeCloseButton$5;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/NativeCloseButton$5;-><init>(Lcom/amazon/device/ads/NativeCloseButton;)V

    sget-object v2, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->RUN_ASAP:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v3, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->MAIN_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    return-void
.end method

.method private hideImageOnMainThread()V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButton:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method private removeNativeCloseButtonOnMainThread()V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/amazon/device/ads/NativeCloseButton;->viewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public enable(ZLcom/amazon/device/ads/RelativePosition;)V
    .locals 9

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/amazon/device/ads/NativeCloseButton;->hasNativeCloseButton:Z

    .line 75
    iget-object v0, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButton:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/device/ads/NativeCloseButton;->viewGroup:Landroid/view/ViewGroup;

    .line 77
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButton:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonImage:Landroid/widget/ImageView;

    .line 78
    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    if-nez p1, :cond_1

    .line 83
    invoke-direct {p0}, Lcom/amazon/device/ads/NativeCloseButton;->hideImage()V

    :cond_1
    return-void

    .line 88
    :cond_2
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 89
    invoke-direct {p0}, Lcom/amazon/device/ads/NativeCloseButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 90
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/high16 v1, 0x42700000    # 60.0f

    .line 91
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v8, v1

    const/high16 v1, 0x42a00000    # 80.0f

    mul-float v0, v0, v1

    add-float/2addr v0, v2

    float-to-int v5, v0

    .line 94
    new-instance v0, Lcom/amazon/device/ads/NativeCloseButton$1;

    move-object v3, v0

    move-object v4, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/amazon/device/ads/NativeCloseButton$1;-><init>(Lcom/amazon/device/ads/NativeCloseButton;IZLcom/amazon/device/ads/RelativePosition;I)V

    .line 110
    iget-object p1, p0, Lcom/amazon/device/ads/NativeCloseButton;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, v0, p2}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->executeAsyncTask(Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;[Ljava/lang/Object;)V

    return-void
.end method

.method public remove()V
    .locals 4

    const/4 v0, 0x0

    .line 252
    iput-boolean v0, p0, Lcom/amazon/device/ads/NativeCloseButton;->hasNativeCloseButton:Z

    .line 253
    iget-object v0, p0, Lcom/amazon/device/ads/NativeCloseButton;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    new-instance v1, Lcom/amazon/device/ads/NativeCloseButton$4;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/NativeCloseButton$4;-><init>(Lcom/amazon/device/ads/NativeCloseButton;)V

    sget-object v2, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->RUN_ASAP:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v3, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->MAIN_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    return-void
.end method

.method public showImage(Z)V
    .locals 1

    .line 273
    iget-boolean v0, p0, Lcom/amazon/device/ads/NativeCloseButton;->hasNativeCloseButton:Z

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButton:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 279
    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/NativeCloseButton;->enable(ZLcom/amazon/device/ads/RelativePosition;)V

    goto :goto_0

    .line 283
    :cond_0
    invoke-direct {p0}, Lcom/amazon/device/ads/NativeCloseButton;->hideImage()V

    :cond_1
    :goto_0
    return-void
.end method
