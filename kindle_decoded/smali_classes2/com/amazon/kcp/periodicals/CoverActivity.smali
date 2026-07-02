.class public Lcom/amazon/kcp/periodicals/CoverActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "CoverActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBook:Lcom/amazon/android/docviewer/KindleDocViewer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/amazon/kcp/periodicals/CoverActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/periodicals/CoverActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/periodicals/CoverActivity;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/CoverActivity;->exitCover()V

    return-void
.end method

.method private exitCover()V
    .locals 3

    .line 151
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 154
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 156
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 44
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getOverlayController(Landroid/view/Window;)Lcom/amazon/android/util/IOsOverlayController;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Lcom/amazon/android/util/IOsOverlayController;->setFullscreen(ZZ)V

    .line 47
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/application/SettingsController;->getOrientation()I

    move-result p1

    invoke-static {p1}, Lcom/amazon/android/util/UIUtils;->convertConfigurationToScreenOrientation(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->setRequestedOrientation(I)V

    .line 48
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/kcp/application/SettingsController;->applyScreenBrightness(Landroid/view/Window;)Z

    .line 51
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {p1, p0}, Lcom/amazon/kcp/reader/ReaderController;->bindToCurrentBook(Landroid/app/Activity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/periodicals/CoverActivity;->mBook:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez p1, :cond_0

    .line 57
    sget-object p1, Lcom/amazon/kcp/periodicals/CoverActivity;->TAG:Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "No book for cover activity; aborting."

    invoke-static {p1, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 58
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/CoverActivity;->mBook:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/amazon/kcp/library/ILibraryController;->getBookFromAsin(Ljava/lang/String;Z)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    const/4 v0, 0x2

    if-nez p1, :cond_1

    .line 68
    sget-object p1, Lcom/amazon/kcp/periodicals/CoverActivity;->TAG:Ljava/lang/String;

    const-string v1, "Unable to get local book item, aborting"

    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/CoverActivity;->exitCover()V

    return-void

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleApplicationController;->getImageFactory()Lcom/amazon/kindle/util/drawing/ImageFactory;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/system/drawing/AndroidImageFactory;

    new-instance v2, Lcom/amazon/kindle/util/drawing/Dimension;

    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/amazon/kindle/util/drawing/Dimension;-><init>(II)V

    .line 74
    invoke-interface {p1, v1, v2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLargeEmbeddedCover(Lcom/amazon/kindle/util/drawing/ImageFactory;Lcom/amazon/kindle/util/drawing/Dimension;)Lcom/amazon/kindle/util/drawing/Image;

    move-result-object p1

    check-cast p1, Lcom/mobipocket/android/drawing/AndroidImage;

    if-nez p1, :cond_2

    .line 79
    sget-object p1, Lcom/amazon/kcp/periodicals/CoverActivity;->TAG:Ljava/lang/String;

    const-string v1, "Unable to get cover image, aborting"

    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/CoverActivity;->exitCover()V

    return-void

    .line 84
    :cond_2
    new-instance v0, Lcom/amazon/kcp/periodicals/CoverActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/amazon/kcp/periodicals/CoverActivity$1;-><init>(Lcom/amazon/kcp/periodicals/CoverActivity;Landroid/content/Context;)V

    .line 100
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, -0x1000000

    .line 101
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 102
    invoke-interface {p1}, Lcom/mobipocket/android/drawing/AndroidImage;->getBitmapImage()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 103
    new-instance p1, Lcom/amazon/kcp/periodicals/CoverActivity$2;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/periodicals/CoverActivity$2;-><init>(Lcom/amazon/kcp/periodicals/CoverActivity;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 113
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 114
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 116
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 122
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onDestroy()V

    .line 123
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {p0}, Landroid/app/Activity;->getChangingConfigurations()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p0, v1}, Lcom/amazon/kcp/reader/ReaderController;->unbindFromCurrentBook(Landroid/app/Activity;Z)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/16 v0, 0x52

    if-eq p1, v0, :cond_1

    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/CoverActivity;->exitCover()V

    const/4 p1, 0x1

    return p1

    .line 136
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public requiresRegistration()Z
    .locals 1

    .line 164
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/AndroidApplicationController;

    .line 166
    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    check-cast v0, Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->isEncrypted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
