.class public Lcom/amazon/kcp/reader/tutorials/KindleIllustratedJITTutorial;
.super Lcom/amazon/kindle/krx/tutorial/JITTutorial;
.source "KindleIllustratedJITTutorial.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/amazon/kindle/krx/tutorial/JITTutorial;-><init>()V

    return-void
.end method


# virtual methods
.method public getAsset()Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;
    .locals 1

    .line 34
    sget-object v0, Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;->CHROME:Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;

    return-object v0
.end method

.method public getDelay()J
    .locals 2

    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public getOrientationLandscape()Lcom/amazon/kindle/krx/tutorial/Orientation;
    .locals 1

    .line 44
    sget-object v0, Lcom/amazon/kindle/krx/tutorial/Orientation;->TOP:Lcom/amazon/kindle/krx/tutorial/Orientation;

    return-object v0
.end method

.method public getOrientationPortrait()Lcom/amazon/kindle/krx/tutorial/Orientation;
    .locals 1

    .line 39
    sget-object v0, Lcom/amazon/kindle/krx/tutorial/Orientation;->TOP:Lcom/amazon/kindle/krx/tutorial/Orientation;

    return-object v0
.end method

.method public getText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$string;->jit_ki_view_options:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTutorialView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 56
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 59
    sget v0, Lcom/amazon/kindle/krl/R$id;->menuitem_viewoptions:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
