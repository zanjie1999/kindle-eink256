.class public Lcom/amazon/kcp/reader/ImageZoomActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "ImageZoomActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ImageZoomActivity$ImageZoomState;
    }
.end annotation


# static fields
.field private static final DPAD_MOVE_AMOUNT:I = 0x20

.field private static final IMAGE_FETCH_TIMEOUT_MS:I = 0xfa0

.field public static final IMAGE_POSITION_ID_INDEX:Ljava/lang/String; = "image_position_id_index"

.field public static final IMAGE_ZOOM_ACTIVITY:Ljava/lang/String; = "ImageZoomActivity"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final OVERLAYS_DELAY:J = 0x9c4L

.field private static final SCROLL_BALL_MOVE_AMOUNT:I = 0x40

.field private static final TAG:Ljava/lang/String;

.field public static final ZOOM_FOCAL_X_KEY:Ljava/lang/String; = "zoom_focal_x_key"

.field public static final ZOOM_FOCAL_Y_KEY:Ljava/lang/String; = "zoom_focal_y_key"

.field public static final ZOOM_LEVEL_KEY:Ljava/lang/String; = "zoom_level_key"


# instance fields
.field private componentViewerHeader:Lcom/amazon/kcp/reader/ui/ComponentViewerHeader;

.field protected hideOverlaysHandler:Landroid/os/Handler;

.field protected hideOverlaysRunnable:Ljava/lang/Runnable;

.field private imageFetchThread:Ljava/lang/Thread;

.field private imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

.field private imageZoomState:Lcom/amazon/kcp/reader/ImageZoomActivity$ImageZoomState;

.field private zoomView:Lcom/amazon/kcp/reader/ui/ImageZoomView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lcom/amazon/kcp/reader/ImageZoomActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ImageZoomActivity;->LOG_TAG:Ljava/lang/String;

    .line 87
    const-class v0, Lcom/amazon/kcp/reader/ImageZoomActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ImageZoomActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/amazon/kcp/reader/ImageZoomActivity;Lcom/amazon/android/docviewer/ImageProvider;)Lcom/amazon/android/docviewer/ImageProvider;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/amazon/kcp/reader/ImageZoomActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getBackgroundColor(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)I
    .locals 2

    .line 231
    sget-object v0, Lcom/amazon/kcp/reader/ImageZoomActivity$3;->$SwitchMap$com$amazon$android$docviewer$KindleDocColorMode$Id:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 244
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getColorModeFactory()Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    move-result-object p1

    sget-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object p1

    .line 245
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getBackgroundColor()I

    move-result p1

    return p1

    .line 240
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getColorModeFactory()Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    move-result-object p1

    sget-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->GREEN:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object p1

    .line 241
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getBackgroundColor()I

    move-result p1

    return p1

    .line 237
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getColorModeFactory()Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    move-result-object p1

    sget-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->SEPIA:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object p1

    .line 238
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getBackgroundColor()I

    move-result p1

    return p1

    .line 234
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getColorModeFactory()Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    move-result-object p1

    sget-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object p1

    .line 235
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getBackgroundColor()I

    move-result p1

    return p1
.end method

.method public static newIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/reader/ImageZoomActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "image_position_id_index"

    .line 100
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public cancelOverlaysAfterDelay()V
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->componentViewerHeader:Lcom/amazon/kcp/reader/ui/ComponentViewerHeader;

    if-nez v0, :cond_0

    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->hideOverlaysHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 380
    iget-object v1, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->hideOverlaysRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 381
    iput-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->hideOverlaysHandler:Landroid/os/Handler;

    .line 382
    iput-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->hideOverlaysRunnable:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method public hideOverlays()V
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->componentViewerHeader:Lcom/amazon/kcp/reader/ui/ComponentViewerHeader;

    if-nez v0, :cond_0

    return-void

    .line 325
    :cond_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->componentViewerHeader:Lcom/amazon/kcp/reader/ui/ComponentViewerHeader;

    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$anim;->fade_out:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 327
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->componentViewerHeader:Lcom/amazon/kcp/reader/ui/ComponentViewerHeader;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public hideOverlaysAfterDelay(J)V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->componentViewerHeader:Lcom/amazon/kcp/reader/ui/ComponentViewerHeader;

    if-nez v0, :cond_0

    return-void

    .line 360
    :cond_0
    new-instance v0, Lcom/amazon/kcp/reader/ImageZoomActivity$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ImageZoomActivity$2;-><init>(Lcom/amazon/kcp/reader/ImageZoomActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->hideOverlaysRunnable:Ljava/lang/Runnable;

    .line 370
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->hideOverlaysHandler:Landroid/os/Handler;

    .line 371
    iget-object v1, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->hideOverlaysRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onCloseButtonPressed()V
    .locals 0

    .line 190
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 106
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getBrightnessManager()Lcom/amazon/kindle/brightness/IBrightnessManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/brightness/IBrightnessManager;->applyScreenBrightness(Landroid/view/Window;)Z

    .line 111
    sget v0, Lcom/amazon/kindle/krl/R$layout;->image_zoom_screen:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 113
    sget v0, Lcom/amazon/kindle/krl/R$id;->image_zoom_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/ImageZoomView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->zoomView:Lcom/amazon/kcp/reader/ui/ImageZoomView;

    .line 116
    sget v0, Lcom/amazon/kindle/krl/R$id;->component_viewer_header:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/ComponentViewerHeader;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->componentViewerHeader:Lcom/amazon/kcp/reader/ui/ComponentViewerHeader;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0, p0}, Lcom/amazon/kcp/reader/ui/ComponentViewerHeader;->setZoomActivity(Lcom/amazon/kcp/reader/ImageZoomActivity;)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->zoomView:Lcom/amazon/kcp/reader/ui/ImageZoomView;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->setZoomActivity(Lcom/amazon/kcp/reader/ImageZoomActivity;)V

    .line 122
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 123
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    .line 124
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->zoomView:Lcom/amazon/kcp/reader/ui/ImageZoomView;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ImageZoomActivity;->getBackgroundColor(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 126
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderLayoutCustomizer()Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;->getSystemUiFlags(Z)I

    move-result v0

    .line 127
    iget-object v2, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->zoomView:Lcom/amazon/kcp/reader/ui/ImageZoomView;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setSystemUiVisibility(I)V

    .line 130
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "image_position_id_index"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 133
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    const-string/jumbo v4, "zoom_level_key"

    .line 142
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 143
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    cmpl-float v3, v4, v3

    if-lez v3, :cond_3

    const-string/jumbo v3, "zoom_focal_x_key"

    .line 150
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "zoom_focal_y_key"

    .line 151
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 152
    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    .line 153
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    invoke-direct {v2, v3, p1}, Landroid/graphics/PointF;-><init>(FF)V

    :cond_3
    move v3, v4

    .line 159
    :cond_4
    new-instance p1, Lcom/amazon/kcp/reader/ImageZoomActivity$ImageZoomState;

    invoke-direct {p1, v0, v3, v2}, Lcom/amazon/kcp/reader/ImageZoomActivity$ImageZoomState;-><init>(Ljava/lang/String;FLandroid/graphics/PointF;)V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->imageZoomState:Lcom/amazon/kcp/reader/ImageZoomActivity$ImageZoomState;

    .line 162
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {p1, p0}, Lcom/amazon/kcp/reader/ReaderController;->bindToCurrentBook(Landroid/app/Activity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-nez p1, :cond_5

    .line 165
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {p1, p0, v1}, Lcom/amazon/kcp/reader/ReaderController;->unbindFromCurrentBook(Landroid/app/Activity;Z)V

    .line 166
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 172
    :cond_5
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/amazon/kcp/reader/ImageZoomActivity$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/amazon/kcp/reader/ImageZoomActivity$1;-><init>(Lcom/amazon/kcp/reader/ImageZoomActivity;Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->imageFetchThread:Ljava/lang/Thread;

    .line 180
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const-wide/16 v0, 0x9c4

    .line 183
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/reader/ImageZoomActivity;->hideOverlaysAfterDelay(J)V

    return-void
.end method

.method protected onDestroy()V
    .locals 5

    .line 251
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onDestroy()V

    .line 253
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/ImageProvider;->close()V

    .line 256
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->zoomView:Lcom/amazon/kcp/reader/ui/ImageZoomView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getDefaultZoom()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->zoomView:Lcom/amazon/kcp/reader/ui/ImageZoomView;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getZoom()F

    move-result v1

    div-float/2addr v1, v0

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 259
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 260
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "FinalZoomChange"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 261
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultZoom"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "ImageZoomActivity"

    const-string v4, "ActivityClose"

    invoke-virtual {v0, v2, v4, v1, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V

    .line 266
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {p0}, Landroid/app/Activity;->getChangingConfigurations()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p0, v1}, Lcom/amazon/kcp/reader/ReaderController;->unbindFromCurrentBook(Landroid/app/Activity;Z)V

    const/4 v0, 0x0

    .line 267
    iput-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->hideOverlaysRunnable:Ljava/lang/Runnable;

    .line 268
    iput-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->hideOverlaysHandler:Landroid/os/Handler;

    .line 270
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->componentViewerHeader:Lcom/amazon/kcp/reader/ui/ComponentViewerHeader;

    if-eqz v0, :cond_2

    .line 271
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ComponentViewerHeader;->destroy()V

    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/high16 v0, 0x42000000    # 32.0f

    const/high16 v1, -0x3e000000    # -32.0f

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 300
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 297
    :pswitch_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->zoomView:Lcom/amazon/kcp/reader/ui/ImageZoomView;

    invoke-virtual {p1, v0, v2}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->updateFocalPoint(FF)V

    goto :goto_0

    .line 294
    :pswitch_1
    iget-object p1, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->zoomView:Lcom/amazon/kcp/reader/ui/ImageZoomView;

    invoke-virtual {p1, v1, v2}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->updateFocalPoint(FF)V

    goto :goto_0

    .line 291
    :pswitch_2
    iget-object p1, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->zoomView:Lcom/amazon/kcp/reader/ui/ImageZoomView;

    invoke-virtual {p1, v2, v0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->updateFocalPoint(FF)V

    goto :goto_0

    .line 288
    :pswitch_3
    iget-object p1, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->zoomView:Lcom/amazon/kcp/reader/ui/ImageZoomView;

    invoke-virtual {p1, v2, v1}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->updateFocalPoint(FF)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 277
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 279
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->zoomView:Lcom/amazon/kcp/reader/ui/ImageZoomView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getZoom()F

    move-result v0

    const-string/jumbo v1, "zoom_level_key"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 280
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->zoomView:Lcom/amazon/kcp/reader/ui/ImageZoomView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getFocalPointX()F

    move-result v0

    const-string/jumbo v1, "zoom_focal_x_key"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 281
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->zoomView:Lcom/amazon/kcp/reader/ui/ImageZoomView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getFocalPointY()F

    move-result v0

    const-string/jumbo v1, "zoom_focal_y_key"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 195
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onStart()V

    .line 199
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->imageFetchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->imageFetchThread:Ljava/lang/Thread;

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 203
    sget-object v1, Lcom/amazon/kcp/reader/ImageZoomActivity;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Failed to join image fetch thread"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    if-nez v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->imageFetchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "ImageZoomActivity"

    const-string v2, "ImageFetchTimeout"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No image at specified imagePositionId ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->imageZoomState:Lcom/amazon/kcp/reader/ImageZoomActivity$ImageZoomState;

    iget-object v1, v1, Lcom/amazon/kcp/reader/ImageZoomActivity$ImageZoomState;->imagePositionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "); aborting."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 217
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMAGE DIMENSIONS: x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/ImageProvider;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " y "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/ImageProvider;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->zoomView:Lcom/amazon/kcp/reader/ui/ImageZoomView;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->setImageProvider(Lcom/amazon/android/docviewer/ImageProvider;)V

    .line 221
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->imageZoomState:Lcom/amazon/kcp/reader/ImageZoomActivity$ImageZoomState;

    iget v0, v0, Lcom/amazon/kcp/reader/ImageZoomActivity$ImageZoomState;->zoom:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    .line 222
    iget-object v1, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->zoomView:Lcom/amazon/kcp/reader/ui/ImageZoomView;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->setZoom(F)V

    .line 224
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->imageZoomState:Lcom/amazon/kcp/reader/ImageZoomActivity$ImageZoomState;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ImageZoomActivity$ImageZoomState;->focalPoint:Landroid/graphics/PointF;

    if-eqz v0, :cond_3

    .line 225
    iget-object v1, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->zoomView:Lcom/amazon/kcp/reader/ui/ImageZoomView;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->setFocalPoint(FF)Z

    :cond_3
    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 314
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->zoomView:Lcom/amazon/kcp/reader/ui/ImageZoomView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    const/high16 v2, 0x42800000    # 64.0f

    mul-float v1, v1, v2

    .line 311
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    mul-float p1, p1, v2

    .line 310
    invoke-virtual {v0, v1, p1}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->updateFocalPoint(FF)V

    const/4 p1, 0x1

    return p1
.end method

.method public requiresRegistration()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showOverlays()V
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->componentViewerHeader:Lcom/amazon/kcp/reader/ui/ComponentViewerHeader;

    if-nez v0, :cond_0

    return-void

    .line 336
    :cond_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->componentViewerHeader:Lcom/amazon/kcp/reader/ui/ComponentViewerHeader;

    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$anim;->fade_in:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 338
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->componentViewerHeader:Lcom/amazon/kcp/reader/ui/ComponentViewerHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public toggleOverlays()V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity;->componentViewerHeader:Lcom/amazon/kcp/reader/ui/ComponentViewerHeader;

    if-nez v0, :cond_0

    return-void

    .line 348
    :cond_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 349
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ImageZoomActivity;->hideOverlays()V

    goto :goto_0

    .line 351
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ImageZoomActivity;->showOverlays()V

    :goto_0
    return-void
.end method
