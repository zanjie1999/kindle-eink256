.class public Lcom/amazon/xray/ui/activity/XrayActivity;
.super Landroidx/appcompat/app/ActionBarActivity;
.source "XrayActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/xray/ui/activity/XrayActivity$SidecarOnChangeListener;,
        Lcom/amazon/xray/ui/activity/XrayActivity$SpoilerOnChangeListener;,
        Lcom/amazon/xray/ui/activity/XrayActivity$OnBackStackChangedListener;,
        Lcom/amazon/xray/ui/activity/XrayActivity$BookMapActivityFragmentFactory;,
        Lcom/amazon/xray/ui/activity/XrayActivity$OnActivityResultListener;
    }
.end annotation


# static fields
.field private static final ARGUMENT_XRAY_METRIC:Ljava/lang/String; = "XrayDurationMetric"

.field private static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "FeedbackDialogFragment"

.field public static final EXTRA_INITIAL_FOCUSED_EXCERPT_ID:Ljava/lang/String; = "com.amazon.xray.ui.activity.InitialFocusedExcerptId"

.field public static final EXTRA_INITIAL_FOCUSED_IMAGE_ID:Ljava/lang/String; = "com.amazon.xray.ui.activity.InitialFocusedImageId"

.field public static final EXTRA_LAUNCHED_FROM_SOURCE:Ljava/lang/String; = "com.amazon.xray.ui.activity.LaunchedFromSource"

.field public static final EXTRA_OPEN_DIRECTLY_TO_ENTITY:Ljava/lang/String; = "com.amazon.xray.ui.activity.OpenDirectlyToEntity"

.field public static final EXTRA_OPEN_DIRECTLY_TO_FIRST_ENTITY_TYPE:Ljava/lang/String; = "com.amazon.xray.ui.activity.OpenDirectlyToFirstEntityType"

.field public static final EXTRA_OPEN_DIRECTLY_TO_IMAGES:Ljava/lang/String; = "com.amazon.xray.ui.activity.OpenDirectlyToImages"

.field private static final NO_INITIAL_FOCUSED_EXCERPT_ID:I = -0x1

.field public static final REQUEST_CODE_SHARE_EXCERPT:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private book:Lcom/amazon/kindle/krx/content/IBook;

.field canNavigateUpToBook:Z

.field private db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

.field private needsReload:Z

.field private onActivityResultListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/amazon/xray/ui/activity/XrayActivity$OnActivityResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private paused:Z

.field private postBackHelper:Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;

.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private settingsPopupMenu:Landroid/widget/PopupMenu;

.field private showSpoilerMenuItem:Z

.field private showSpoilersDefault:Z

.field private final sidecarOnChangeListener:Lcom/amazon/xray/ui/activity/XrayActivity$SidecarOnChangeListener;

.field private spoilerChangeListener:Lcom/amazon/xray/ui/activity/XrayActivity$SpoilerOnChangeListener;

.field private xrayDurationMetric:Lcom/amazon/xray/metrics/Metric;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    const-class v0, Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/xray/ui/activity/XrayActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Landroidx/appcompat/app/ActionBarActivity;-><init>()V

    .line 94
    new-instance v0, Lcom/amazon/xray/ui/activity/XrayActivity$SidecarOnChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/ui/activity/XrayActivity$SidecarOnChangeListener;-><init>(Lcom/amazon/xray/ui/activity/XrayActivity;Lcom/amazon/xray/ui/activity/XrayActivity$1;)V

    iput-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->sidecarOnChangeListener:Lcom/amazon/xray/ui/activity/XrayActivity$SidecarOnChangeListener;

    .line 126
    iput-object v1, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->xrayDurationMetric:Lcom/amazon/xray/metrics/Metric;

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->paused:Z

    .line 135
    new-instance v0, Lcom/amazon/xray/ui/activity/XrayActivity$SpoilerOnChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/ui/activity/XrayActivity$SpoilerOnChangeListener;-><init>(Lcom/amazon/xray/ui/activity/XrayActivity;Lcom/amazon/xray/ui/activity/XrayActivity$1;)V

    iput-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->spoilerChangeListener:Lcom/amazon/xray/ui/activity/XrayActivity$SpoilerOnChangeListener;

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lcom/amazon/xray/ui/activity/XrayActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/amazon/xray/ui/activity/XrayActivity;)Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->postBackHelper:Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/xray/ui/activity/XrayActivity;Landroidx/fragment/app/Fragment;)Z
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/activity/XrayActivity;->isBookEntityFragment(Landroidx/fragment/app/Fragment;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/amazon/xray/ui/activity/XrayActivity;)Lcom/amazon/xray/model/SidecarDatabaseAdapter;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    return-object p0
.end method

.method static synthetic access$702(Lcom/amazon/xray/ui/activity/XrayActivity;Lcom/amazon/xray/model/SidecarDatabaseAdapter;)Lcom/amazon/xray/model/SidecarDatabaseAdapter;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    return-object p1
.end method

.method static synthetic access$800(Lcom/amazon/xray/ui/activity/XrayActivity;)Lcom/amazon/kindle/krx/content/IBook;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->book:Lcom/amazon/kindle/krx/content/IBook;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/xray/ui/activity/XrayActivity;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/amazon/xray/ui/activity/XrayActivity;->reload()V

    return-void
.end method

.method private static initReadingSessionMetricsForXray()V
    .locals 3

    .line 147
    invoke-static {}, Lcom/amazon/xray/plugin/util/BookUtil;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    const-string v1, "XrayReadingSession"

    invoke-static {v0, v1}, Lcom/amazon/xray/metrics/SessionManager;->getSessionMetric(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lcom/amazon/xray/metrics/Metric;

    move-result-object v0

    const-string v1, "InitializedMetricsForXray"

    .line 151
    invoke-virtual {v0, v1}, Lcom/amazon/xray/metrics/Metric;->getState(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 152
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const-string v2, "TimesLaunchedFromChrome"

    .line 156
    invoke-virtual {v0, v2}, Lcom/amazon/xray/metrics/Metric;->initCount(Ljava/lang/String;)V

    const-string v2, "TimesLaunchedFromInfoCard"

    .line 157
    invoke-virtual {v0, v2}, Lcom/amazon/xray/metrics/Metric;->initCount(Ljava/lang/String;)V

    const-string v2, "PortraitOrientation"

    .line 159
    invoke-virtual {v0, v2}, Lcom/amazon/xray/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v2, "LandscapeOrientation"

    .line 160
    invoke-virtual {v0, v2}, Lcom/amazon/xray/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v2, "PressedTimeline"

    .line 162
    invoke-virtual {v0, v2}, Lcom/amazon/xray/metrics/Metric;->initCount(Ljava/lang/String;)V

    const-string v2, "PressedEntityDescription"

    .line 163
    invoke-virtual {v0, v2}, Lcom/amazon/xray/metrics/Metric;->initCount(Ljava/lang/String;)V

    const-string v2, "PressedBookDescription"

    .line 164
    invoke-virtual {v0, v2}, Lcom/amazon/xray/metrics/Metric;->initCount(Ljava/lang/String;)V

    const-string v2, "PressedGoToPassage"

    .line 165
    invoke-virtual {v0, v2}, Lcom/amazon/xray/metrics/Metric;->initCount(Ljava/lang/String;)V

    const-string v2, "PressedGoToImage"

    .line 166
    invoke-virtual {v0, v2}, Lcom/amazon/xray/metrics/Metric;->initCount(Ljava/lang/String;)V

    const-string v2, "PressedSharePassage"

    .line 167
    invoke-virtual {v0, v2}, Lcom/amazon/xray/metrics/Metric;->initCount(Ljava/lang/String;)V

    const-string v2, "PressedSaveHighlight"

    .line 168
    invoke-virtual {v0, v2}, Lcom/amazon/xray/metrics/Metric;->initCount(Ljava/lang/String;)V

    const-string v2, "PressedRelatedEntity"

    .line 169
    invoke-virtual {v0, v2}, Lcom/amazon/xray/metrics/Metric;->initCount(Ljava/lang/String;)V

    const-string v2, "EncounteredSpoilerGuard"

    .line 171
    invoke-virtual {v0, v2}, Lcom/amazon/xray/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v2, "DisabledSpoilerGuard"

    .line 172
    invoke-virtual {v0, v2}, Lcom/amazon/xray/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v2, "HasExcerpts"

    .line 173
    invoke-virtual {v0, v2}, Lcom/amazon/xray/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v2, "UITaps"

    .line 175
    invoke-virtual {v0, v2}, Lcom/amazon/xray/metrics/Metric;->initCount(Ljava/lang/String;)V

    const-string v2, "EntitiesViewed"

    .line 176
    invoke-virtual {v0, v2}, Lcom/amazon/xray/metrics/Metric;->initCount(Ljava/lang/String;)V

    const-string v2, "ImageCardsConsumed"

    .line 177
    invoke-virtual {v0, v2}, Lcom/amazon/xray/metrics/Metric;->initCount(Ljava/lang/String;)V

    const-string v2, "PassageCardsConsumed"

    .line 178
    invoke-virtual {v0, v2}, Lcom/amazon/xray/metrics/Metric;->initCount(Ljava/lang/String;)V

    const-string v2, "BookPassageCardsConsumed"

    .line 179
    invoke-virtual {v0, v2}, Lcom/amazon/xray/metrics/Metric;->initCount(Ljava/lang/String;)V

    const-string v2, "EntityPassageCardsConsumed"

    .line 180
    invoke-virtual {v0, v2}, Lcom/amazon/xray/metrics/Metric;->initCount(Ljava/lang/String;)V

    const-string v2, "NullImageCardsShown"

    .line 181
    invoke-virtual {v0, v2}, Lcom/amazon/xray/metrics/Metric;->initCount(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 184
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/xray/metrics/Metric;->setState(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private isBookEntityFragment(Landroidx/fragment/app/Fragment;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 671
    instance-of v1, p1, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;

    if-nez v1, :cond_0

    goto :goto_0

    .line 676
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, -0x1

    const-string v2, "entityId"

    .line 677
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private isShowingSpoilers()Z
    .locals 3

    const-string/jumbo v0, "xray.preference.showingspoilers"

    const/4 v1, 0x0

    .line 658
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 659
    invoke-static {}, Lcom/amazon/xray/plugin/util/BookUtil;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/xray/ui/activity/XrayActivity;->getShowSpoilersDefault()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private launchFeedbackDialog()Z
    .locals 3

    .line 734
    invoke-static {}, Lcom/amazon/xray/plugin/util/BookUtil;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-nez v0, :cond_0

    .line 736
    sget-object v0, Lcom/amazon/xray/ui/activity/XrayActivity;->TAG:Ljava/lang/String;

    const-string v1, "Book is null; cannot launch feedback dialog"

    invoke-static {v0, v1}, Lcom/amazon/xray/plugin/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 739
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "FeedbackDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 743
    invoke-virtual {p0}, Lcom/amazon/xray/ui/activity/XrayActivity;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    const-string v1, "XrayReadingSession"

    invoke-static {v0, v1}, Lcom/amazon/xray/metrics/SessionManager;->getSessionMetric(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lcom/amazon/xray/metrics/Metric;

    move-result-object v0

    const-string v1, "UITaps"

    .line 744
    invoke-virtual {v0, v1}, Lcom/amazon/xray/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method private navigateToEntity(ILjava/lang/String;IZZ)V
    .locals 2

    .line 556
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "initialFocusedImageId"

    .line 557
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "initialFocusedExcerptId"

    .line 558
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "openToImages"

    .line 559
    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "openToFirstEntityType"

    .line 560
    invoke-virtual {v0, p2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "entityId"

    .line 561
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 563
    new-instance p1, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;

    invoke-direct {p1}, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;-><init>()V

    .line 564
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 565
    iget-object p2, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->postBackHelper:Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;

    invoke-virtual {p2, p1}, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->pushFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method private reload()V
    .locals 2

    .line 686
    iget-boolean v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->paused:Z

    if-eqz v0, :cond_1

    .line 687
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    sget-object v0, Lcom/amazon/xray/ui/activity/XrayActivity;->TAG:Ljava/lang/String;

    const-string v1, "Activity is paused, will reload on resume"

    invoke-static {v0, v1}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 690
    iput-boolean v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->needsReload:Z

    return-void

    .line 695
    :cond_1
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 696
    sget-object v0, Lcom/amazon/xray/ui/activity/XrayActivity;->TAG:Ljava/lang/String;

    const-string v1, "Reloading..."

    invoke-static {v0, v1}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    :cond_2
    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->postBackHelper:Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;

    invoke-virtual {v0}, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->reload()V

    const/4 v0, 0x0

    .line 699
    iput-boolean v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->needsReload:Z

    return-void
.end method

.method private toggleSpoilers()Z
    .locals 5

    const/4 v0, 0x0

    const-string/jumbo v1, "xray.preference.showingspoilers"

    .line 708
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 709
    invoke-static {}, Lcom/amazon/xray/plugin/util/BookUtil;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amazon/xray/ui/activity/XrayActivity;->getShowSpoilersDefault()Z

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 710
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 711
    invoke-static {}, Lcom/amazon/xray/plugin/util/BookUtil;->getAsin()Ljava/lang/String;

    move-result-object v1

    xor-int/lit8 v3, v2, 0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 714
    invoke-static {}, Lcom/amazon/xray/plugin/util/BookUtil;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    const-string v1, "XrayReadingSession"

    invoke-static {v0, v1}, Lcom/amazon/xray/metrics/SessionManager;->getSessionMetric(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lcom/amazon/xray/metrics/Metric;

    move-result-object v0

    const-string v1, "UITaps"

    .line 716
    invoke-virtual {v0, v1}, Lcom/amazon/xray/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-nez v2, :cond_0

    const-string v3, "DisabledSpoilerGuard"

    .line 719
    invoke-virtual {v0, v3, v1}, Lcom/amazon/xray/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    xor-int/2addr v2, v1

    const-string v3, "Xray"

    const-string v4, "SpoilerGuard"

    invoke-interface {v0, v3, v4, v2, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordSetting(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return v1
.end method

.method private updateSystemUI(Z)V
    .locals 4

    .line 332
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 333
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 335
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    if-eqz p1, :cond_0

    and-int/lit16 v1, v1, -0x2001

    goto :goto_0

    :cond_0
    or-int/lit16 v1, v1, 0x2000

    .line 343
    :cond_1
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_3

    if-eqz p1, :cond_2

    and-int/lit8 v1, v1, -0x11

    goto :goto_1

    :cond_2
    or-int/lit8 v1, v1, 0x10

    .line 350
    :cond_3
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private updateTheme(Lcom/amazon/xray/ui/util/XrayThemeUtil;)V
    .locals 1

    .line 321
    invoke-virtual {p1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getActivityTheme()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 322
    invoke-virtual {p1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->isDarkThemed()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/activity/XrayActivity;->updateSystemUI(Z)V

    return-void
.end method


# virtual methods
.method public addOnActivityResultListener(ILcom/amazon/xray/ui/activity/XrayActivity$OnActivityResultListener;)V
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->onActivityResultListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public getBook()Lcom/amazon/kindle/krx/content/IBook;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->book:Lcom/amazon/kindle/krx/content/IBook;

    return-object v0
.end method

.method public getDb()Lcom/amazon/xray/model/SidecarDatabaseAdapter;
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    return-object v0
.end method

.method public getShowSpoilersDefault()Z
    .locals 1

    .line 526
    iget-boolean v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->showSpoilersDefault:Z

    return v0
.end method

.method public navigateToEntity(I)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .line 575
    invoke-direct/range {v0 .. v5}, Lcom/amazon/xray/ui/activity/XrayActivity;->navigateToEntity(ILjava/lang/String;IZZ)V

    return-void
.end method

.method public navigateToReaderBookPosition(Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 2

    .line 611
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getInstance()Lcom/amazon/xray/plugin/XrayPlugin;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->postBackHelper:Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;

    invoke-virtual {v1}, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->getCurrentFragmentPostBackIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/xray/plugin/XrayPlugin;->setXrayIntent(Landroid/content/Intent;)V

    .line 612
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getInstance()Lcom/amazon/xray/plugin/XrayPlugin;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/xray/plugin/XrayPlugin;->setNavigatedFromXray(Z)V

    .line 613
    invoke-static {p1}, Lcom/amazon/xray/plugin/util/NavigatorUtil;->goToPosition(Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 614
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public navigateUpToBook()V
    .locals 4

    .line 582
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 584
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 585
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryAt(I)Landroidx/fragment/app/FragmentManager$BackStackEntry;

    move-result-object v1

    invoke-interface {v1}, Landroidx/fragment/app/FragmentManager$BackStackEntry;->getId()I

    move-result v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroidx/fragment/app/FragmentManager;->popBackStack(II)V

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->postBackHelper:Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;

    invoke-virtual {v0}, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->getRootFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 592
    invoke-direct {p0, v0}, Lcom/amazon/xray/ui/activity/XrayActivity;->isBookEntityFragment(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 593
    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->postBackHelper:Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;

    invoke-virtual {v0}, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->removeRootFragment()V

    .line 594
    invoke-virtual {p0, v2}, Lcom/amazon/xray/ui/activity/XrayActivity;->navigateToEntity(I)V

    .line 597
    iput-boolean v2, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->canNavigateUpToBook:Z

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "Xray"

    const-string v2, "Back"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 356
    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->onActivityResultListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/xray/ui/activity/XrayActivity$OnActivityResultListener;

    if-eqz v0, :cond_0

    .line 358
    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/xray/ui/activity/XrayActivity$OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 360
    :cond_0
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    sget-object v0, Lcom/amazon/xray/ui/activity/XrayActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent request code not handled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". No further actions will be taken."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 446
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 447
    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->switchIfNecessary(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 189
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 192
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/xray/R$bool;->xray_portrait_only:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    .line 193
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 196
    :cond_0
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 197
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->book:Lcom/amazon/kindle/krx/content/IBook;

    if-nez v0, :cond_1

    .line 201
    sget-object v0, Lcom/amazon/xray/ui/activity/XrayActivity;->TAG:Ljava/lang/String;

    const-string v1, "Activity requires an open book -- Terminating."

    invoke-static {v0, v1}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 207
    :cond_1
    invoke-static {v0}, Lcom/amazon/xray/model/SidecarDatabaseManager;->acquire(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    if-nez v0, :cond_2

    .line 209
    sget-object v0, Lcom/amazon/xray/ui/activity/XrayActivity;->TAG:Ljava/lang/String;

    const-string v1, "Unable to acquire database, forcing activity to finish"

    invoke-static {v0, v1}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->sidecarOnChangeListener:Lcom/amazon/xray/ui/activity/XrayActivity$SidecarOnChangeListener;

    invoke-static {v0}, Lcom/amazon/xray/model/SidecarDatabaseManager;->addSidecarOnChangeListener(Lcom/amazon/xray/model/SidecarDatabaseManager$SidecarOnChangeListener;)V

    .line 216
    new-instance v0, Ljava/util/HashMap;

    const/4 v6, 0x1

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 217
    new-instance v1, Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    invoke-virtual {v2}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getBookMetadata()Lcom/amazon/xray/model/object/BookMetadata;

    move-result-object v2

    .line 218
    invoke-virtual {v2}, Lcom/amazon/xray/model/object/BookMetadata;->getHasExcerpts()Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    const-string v2, "HasExcerpts"

    .line 217
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v1, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v1

    const-string v2, "Xray"

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;Ljava/util/Map;)V

    .line 221
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->onActivityResultListeners:Landroid/util/SparseArray;

    .line 224
    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->book:Lcom/amazon/kindle/krx/content/IBook;

    const-string v1, "XrayReadingSession"

    invoke-static {v0, v1}, Lcom/amazon/xray/metrics/SessionManager;->getSessionMetric(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lcom/amazon/xray/metrics/Metric;

    move-result-object v7

    .line 225
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v6, :cond_3

    const-string v0, "PortraitOrientation"

    .line 226
    invoke-virtual {v7, v0, v6}, Lcom/amazon/xray/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const-string v0, "LandscapeOrientation"

    .line 228
    invoke-virtual {v7, v0, v6}, Lcom/amazon/xray/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 231
    :goto_0
    new-instance v0, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;

    new-instance v1, Lcom/amazon/xray/ui/activity/XrayActivity$BookMapActivityFragmentFactory;

    const/4 v8, 0x0

    invoke-direct {v1, v8}, Lcom/amazon/xray/ui/activity/XrayActivity$BookMapActivityFragmentFactory;-><init>(Lcom/amazon/xray/ui/activity/XrayActivity$1;)V

    sget v2, Lcom/amazon/kindle/xray/R$id;->xray_fragment_container:I

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/xray/ui/postback/FragmentFactory;I)V

    iput-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->postBackHelper:Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;

    .line 235
    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->bindActivityToCurrentBook(Landroid/app/Activity;)V

    .line 239
    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->applyReaderBrightness(Landroid/view/Window;)V

    .line 241
    invoke-static {}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object v0

    .line 242
    invoke-direct {p0, v0}, Lcom/amazon/xray/ui/activity/XrayActivity;->updateTheme(Lcom/amazon/xray/ui/util/XrayThemeUtil;)V

    .line 244
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/xray/R$layout;->xray_activity:I

    invoke-virtual {v1, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 245
    invoke-virtual {v0}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getContentBackgroundColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 246
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 249
    sget v1, Lcom/amazon/kindle/xray/R$id;->xray_header_bar:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    .line 250
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 251
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 252
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 253
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getHomeAsUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    const-string/jumbo v1, "xray.preference.showingspoilers"

    .line 256
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->spoilerChangeListener:Lcom/amazon/xray/ui/activity/XrayActivity$SpoilerOnChangeListener;

    .line 257
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const/4 v9, -0x1

    if-nez p1, :cond_8

    .line 262
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 263
    iget-object v1, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->postBackHelper:Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->restoreFromIntent(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v10, :cond_4

    const-string v1, "com.amazon.xray.ui.activity.OpenDirectlyToEntity"

    .line 271
    invoke-virtual {v10, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "com.amazon.xray.ui.activity.InitialFocusedImageId"

    .line 272
    invoke-virtual {v10, v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.amazon.xray.ui.activity.InitialFocusedExcerptId"

    .line 273
    invoke-virtual {v10, v3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "com.amazon.xray.ui.activity.OpenDirectlyToImages"

    .line 274
    invoke-virtual {v10, v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "com.amazon.xray.ui.activity.OpenDirectlyToFirstEntityType"

    .line 275
    invoke-virtual {v10, v5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    move v5, v0

    move v11, v1

    goto :goto_1

    :cond_4
    move-object v2, v8

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_1
    move-object v0, p0

    move v1, v11

    .line 279
    invoke-direct/range {v0 .. v5}, Lcom/amazon/xray/ui/activity/XrayActivity;->navigateToEntity(ILjava/lang/String;IZZ)V

    if-eqz v11, :cond_5

    const-string v0, "EntitiesViewed"

    .line 284
    invoke-virtual {v7, v0}, Lcom/amazon/xray/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    :cond_5
    if-eqz v10, :cond_6

    const-string v0, "com.amazon.xray.ui.activity.LaunchedFromSource"

    .line 289
    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    const-string v0, ""

    .line 290
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    const-string v0, "TimesLaunchedFromUnknownSource"

    :goto_3
    invoke-virtual {v7, v0}, Lcom/amazon/xray/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    const-string v0, "XrayOpened"

    .line 292
    invoke-virtual {v7, v0, v6}, Lcom/amazon/xray/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 296
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/xray/ui/activity/XrayActivity$OnBackStackChangedListener;

    invoke-direct {v1, p0, v8}, Lcom/amazon/xray/ui/activity/XrayActivity$OnBackStackChangedListener;-><init>(Lcom/amazon/xray/ui/activity/XrayActivity;Lcom/amazon/xray/ui/activity/XrayActivity$1;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    .line 299
    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->postBackHelper:Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;

    invoke-virtual {v0}, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->executePendingTransactions()V

    .line 300
    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->postBackHelper:Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;

    invoke-virtual {v0}, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/xray/ui/activity/XrayActivity;->isBookEntityFragment(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    xor-int/2addr v0, v6

    iput-boolean v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->canNavigateUpToBook:Z

    if-eqz p1, :cond_9

    const-string v0, "XrayDurationMetric"

    .line 303
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amazon/xray/metrics/Metric;

    iput-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->xrayDurationMetric:Lcom/amazon/xray/metrics/Metric;

    .line 305
    :cond_9
    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->xrayDurationMetric:Lcom/amazon/xray/metrics/Metric;

    if-nez v0, :cond_a

    const-string v0, "XrayOpenToClose"

    .line 306
    invoke-static {v0}, Lcom/amazon/xray/metrics/BookMetricUtil;->createCurrentBookMetric(Ljava/lang/String;)Lcom/amazon/xray/metrics/Metric;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->xrayDurationMetric:Lcom/amazon/xray/metrics/Metric;

    .line 308
    invoke-static {}, Lcom/amazon/xray/plugin/util/NavigatorUtil;->getPercentageThroughBook()I

    move-result v0

    if-eq v0, v9, :cond_a

    .line 310
    iget-object v1, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->xrayDurationMetric:Lcom/amazon/xray/metrics/Metric;

    const-string v2, "PercentThroughBook"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/xray/metrics/Metric;->setCount(Ljava/lang/String;I)V

    :cond_a
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 619
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-static {}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getHeaderActions()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 622
    sget v0, Lcom/amazon/kindle/xray/R$id;->xray_spoiler_button:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 623
    iget-boolean v1, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->showSpoilerMenuItem:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 624
    invoke-direct {p0}, Lcom/amazon/xray/ui/activity/XrayActivity;->isShowingSpoilers()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/amazon/kindle/xray/R$string;->xray_menu_hide_spoilers:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget v1, Lcom/amazon/kindle/xray/R$string;->xray_menu_show_spoilers:I

    .line 625
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 624
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 627
    sget v0, Lcom/amazon/kindle/xray/R$id;->xray_feedback_button:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 628
    iget-object v1, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IUserAccount;->allowsFeedback()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 630
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 415
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 417
    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 421
    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->xrayDurationMetric:Lcom/amazon/xray/metrics/Metric;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->xrayDurationMetric:Lcom/amazon/xray/metrics/Metric;

    invoke-virtual {v0}, Lcom/amazon/xray/metrics/Metric;->close()V

    const/4 v0, 0x0

    .line 423
    iput-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->xrayDurationMetric:Lcom/amazon/xray/metrics/Metric;

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->settingsPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_1

    .line 428
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->unBindActivityFromCurrentBook(Landroid/app/Activity;)V

    .line 435
    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->sidecarOnChangeListener:Lcom/amazon/xray/ui/activity/XrayActivity$SidecarOnChangeListener;

    invoke-static {v0}, Lcom/amazon/xray/model/SidecarDatabaseManager;->removeSidecarOnChangeListener(Lcom/amazon/xray/model/SidecarDatabaseManager$SidecarOnChangeListener;)V

    .line 436
    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    invoke-static {v0}, Lcom/amazon/xray/model/SidecarDatabaseManager;->release(Lcom/amazon/xray/model/SidecarDatabaseAdapter;)V

    .line 438
    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "Xray"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->hideContext(Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string/jumbo v1, "xray.preference.showingspoilers"

    .line 440
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->spoilerChangeListener:Lcom/amazon/xray/ui/activity/XrayActivity$SpoilerOnChangeListener;

    .line 441
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 635
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 637
    iget-boolean p1, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->canNavigateUpToBook:Z

    if-eqz p1, :cond_0

    .line 638
    invoke-virtual {p0}, Lcom/amazon/xray/ui/activity/XrayActivity;->navigateUpToBook()V

    goto :goto_0

    .line 641
    :cond_0
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getInstance()Lcom/amazon/xray/plugin/XrayPlugin;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->postBackHelper:Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;

    invoke-virtual {v0}, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->getCurrentFragmentPostBackIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/xray/plugin/XrayPlugin;->setXrayIntent(Landroid/content/Intent;)V

    .line 642
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 645
    :cond_1
    sget v1, Lcom/amazon/kindle/xray/R$id;->xray_spoiler_button:I

    if-ne v0, v1, :cond_2

    .line 646
    invoke-direct {p0}, Lcom/amazon/xray/ui/activity/XrayActivity;->toggleSpoilers()Z

    move-result p1

    return p1

    .line 647
    :cond_2
    sget v1, Lcom/amazon/kindle/xray/R$id;->xray_feedback_button:I

    if-ne v0, v1, :cond_3

    .line 648
    invoke-direct {p0}, Lcom/amazon/xray/ui/activity/XrayActivity;->launchFeedbackDialog()Z

    move-result p1

    return p1

    .line 651
    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 4

    .line 391
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const/4 v0, 0x1

    .line 394
    iput-boolean v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->paused:Z

    .line 397
    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->book:Lcom/amazon/kindle/krx/content/IBook;

    const-string v1, "XrayReadingSession"

    invoke-static {v0, v1}, Lcom/amazon/xray/metrics/SessionManager;->getSessionMetric(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lcom/amazon/xray/metrics/Metric;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "TotalXrayOpenDuration"

    .line 398
    invoke-virtual {v0, v3, v2}, Lcom/amazon/xray/metrics/Metric;->stopTimer(Ljava/lang/String;Z)J

    .line 401
    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->xrayDurationMetric:Lcom/amazon/xray/metrics/Metric;

    const-string v3, "XrayOpenDuration"

    invoke-virtual {v0, v3, v2}, Lcom/amazon/xray/metrics/Metric;->stopTimer(Ljava/lang/String;Z)J

    .line 407
    invoke-static {}, Lcom/amazon/xray/ui/activity/XrayActivity;->initReadingSessionMetricsForXray()V

    .line 410
    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-static {v0, v1}, Lcom/amazon/xray/metrics/SessionManager;->saveSessionToDisk(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 370
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const/4 v0, 0x0

    .line 373
    iput-boolean v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->paused:Z

    .line 374
    iget-boolean v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->needsReload:Z

    if-eqz v0, :cond_0

    .line 375
    invoke-direct {p0}, Lcom/amazon/xray/ui/activity/XrayActivity;->reload()V

    .line 379
    :cond_0
    invoke-static {}, Lcom/amazon/xray/ui/activity/XrayActivity;->initReadingSessionMetricsForXray()V

    .line 382
    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->book:Lcom/amazon/kindle/krx/content/IBook;

    const-string v1, "XrayReadingSession"

    invoke-static {v0, v1}, Lcom/amazon/xray/metrics/SessionManager;->getSessionMetric(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lcom/amazon/xray/metrics/Metric;

    move-result-object v0

    const-string v1, "TotalXrayOpenDuration"

    .line 383
    invoke-virtual {v0, v1}, Lcom/amazon/xray/metrics/Metric;->startTimer(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->xrayDurationMetric:Lcom/amazon/xray/metrics/Metric;

    const-string v1, "XrayOpenDuration"

    invoke-virtual {v0, v1}, Lcom/amazon/xray/metrics/Metric;->startTimer(Ljava/lang/String;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 462
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 463
    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->xrayDurationMetric:Lcom/amazon/xray/metrics/Metric;

    const-string v1, "XrayDurationMetric"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onThemeChangedEvent(Lcom/amazon/kindle/krx/events/ThemeChangedEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 451
    new-instance p1, Lcom/amazon/xray/ui/activity/XrayActivity$1;

    invoke-direct {p1, p0}, Lcom/amazon/xray/ui/activity/XrayActivity$1;-><init>(Lcom/amazon/xray/ui/activity/XrayActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeOnActivityResultListener(I)V
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->onActivityResultListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public setActionBarTitle(Ljava/lang/String;)V
    .locals 1

    .line 509
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setShowSpoilerMenuItem(Z)V
    .locals 0

    .line 519
    iput-boolean p1, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->showSpoilerMenuItem:Z

    return-void
.end method

.method public setShowSpoilersDefault(Z)V
    .locals 0

    .line 536
    iput-boolean p1, p0, Lcom/amazon/xray/ui/activity/XrayActivity;->showSpoilersDefault:Z

    return-void
.end method
