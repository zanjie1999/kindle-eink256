.class public Lcom/amazon/kcp/info/brochure/ActionBarJITTutorial;
.super Lcom/amazon/kindle/krx/tutorial/JITTutorial;
.source "ActionBarJITTutorial.java"


# instance fields
.field private final m_buttonId:Ljava/lang/String;

.field private final m_text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/amazon/kindle/krx/tutorial/JITTutorial;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/kcp/info/brochure/ActionBarJITTutorial;->m_buttonId:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/amazon/kcp/info/brochure/ActionBarJITTutorial;->m_text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAsset()Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;
    .locals 1

    .line 29
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

    .line 41
    sget-object v0, Lcom/amazon/kindle/krx/tutorial/Orientation;->TOP:Lcom/amazon/kindle/krx/tutorial/Orientation;

    return-object v0
.end method

.method public getOrientationPortrait()Lcom/amazon/kindle/krx/tutorial/Orientation;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/kindle/krx/tutorial/Orientation;->TOP:Lcom/amazon/kindle/krx/tutorial/Orientation;

    return-object v0
.end method

.method public getText(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p1, p0, Lcom/amazon/kcp/info/brochure/ActionBarJITTutorial;->m_text:Ljava/lang/String;

    return-object p1
.end method

.method public getTutorialView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/amazon/kcp/info/brochure/ActionBarJITTutorial;->m_buttonId:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/android/util/UIUtils;->getButtonViewFromActionBarById(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
