.class public Lcom/amazon/nwstd/tutorial/TutorialHelper;
.super Ljava/lang/Object;
.source "TutorialHelper.java"


# static fields
.field private static final ANIMATION_DURATION:I = 0x9c4

.field public static final LAYOUTS_GRID_VIEW_SCENARIO:[I


# instance fields
.field private mActivity:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

.field private mContentContainer:Landroid/view/ViewGroup;

.field private mHasNextTutorial:Z

.field private mTutorialScenario:[I

.field private mTutorialScenarioIndex:I

.field private mTutorialView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 23
    sget v1, Lcom/amazon/kindle/newsstand/core/R$layout;->tutorial_layout_gridview_button:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/amazon/kindle/newsstand/core/R$layout;->tutorial_layout_gridview_swipe:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sput-object v0, Lcom/amazon/nwstd/tutorial/TutorialHelper;->LAYOUTS_GRID_VIEW_SCENARIO:[I

    return-void
.end method

.method public static quitTutorialMode(Landroid/app/Activity;)V
    .locals 3

    .line 168
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 167
    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 170
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "PeriodicalsAppPreferences"

    .line 168
    invoke-interface {v0, v2, v1, p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAndroidSharedPreferences(Ljava/lang/String;ILandroid/content/Context;)Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    move-result-object p0

    .line 171
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "ShouldDisplayTutorial"

    invoke-virtual {p0, v1, v0}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    return-void
.end method
