.class public Lcom/amazon/klo/KindleLearningObjectDetailActivity;
.super Lcom/amazon/klo/BaseKloActivity;
.source "KindleLearningObjectDetailActivity.java"


# static fields
.field private static final CREATIVE_COMMONS_URL:Ljava/lang/String; = "http://creativecommons.org/licenses/by-sa/3.0/"

.field private static final SOFTKEY_SERVICE_NAME:Ljava/lang/String; = "softkeybar"

.field private static final TAG:Ljava/lang/String;

.field private static final UNSET:Ljava/lang/String; = "Unset"

.field private static final YOUTUBE_IMG_FETCH_CORE_POOL_SIZE:I = 0x0

.field private static final YOUTUBE_IMG_FETCH_TIMEOUT:I = 0x3e8

.field private static final YOUTUBE_IMG_FETCH_TIMEOUT_INCREMENT:I = 0x3e8

.field private static final YOUTUBE_IMG_FETCH_TIMEOUT_MAX:I = 0x1388


# instance fields
.field private backgroundYoutubeTask:Lcom/amazon/klo/PauseableThreadPoolExecutor;

.field private fromInfoCardMode:Z

.field private fromSearch:Z

.field private kloHeaderBar:Lcom/amazon/klo/IKLODetailHeaderBar;

.field private pageListAdapter:Lcom/amazon/klo/list/PageListAdapter;

.field private pageListItemClickListener:Lcom/amazon/klo/list/PageListAdapter$OnItemClickListener;

.field private res:Landroid/content/res/Resources;

.field private restoredFromIntent:Z

.field private term:Ljava/lang/String;

.field private wikiAvailable:Z

.field private wikiData:Ljava/lang/String;

.field private youtubeAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const-class v0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/amazon/klo/BaseKloActivity;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->wikiAvailable:Z

    .line 81
    iput-boolean v0, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->youtubeAvailable:Z

    .line 83
    iput-boolean v0, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->fromInfoCardMode:Z

    .line 84
    iput-boolean v0, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->fromSearch:Z

    .line 85
    iput-boolean v0, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->restoredFromIntent:Z

    .line 735
    new-instance v0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$12;

    invoke-direct {v0, p0}, Lcom/amazon/klo/KindleLearningObjectDetailActivity$12;-><init>(Lcom/amazon/klo/KindleLearningObjectDetailActivity;)V

    iput-object v0, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->pageListItemClickListener:Lcom/amazon/klo/list/PageListAdapter$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/klo/KindleLearningObjectDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->term:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/klo/KindleLearningObjectDetailActivity;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->wikiAvailable:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/amazon/klo/KindleLearningObjectDetailActivity;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->goToPosition(I)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/klo/KindleLearningObjectDetailActivity;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->youtubeAvailable:Z

    return p0
.end method

.method static synthetic access$400(Lcom/amazon/klo/KindleLearningObjectDetailActivity;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->fromInfoCardMode:Z

    return p0
.end method

.method static synthetic access$500(Lcom/amazon/klo/KindleLearningObjectDetailActivity;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->fromSearch:Z

    return p0
.end method

.method static synthetic access$600(Lcom/amazon/klo/KindleLearningObjectDetailActivity;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->handleBackPressed()V

    return-void
.end method

.method static synthetic access$700(Lcom/amazon/klo/KindleLearningObjectDetailActivity;)Lcom/amazon/klo/list/PageListAdapter;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->pageListAdapter:Lcom/amazon/klo/list/PageListAdapter;

    return-object p0
.end method

.method static synthetic access$800()Lcom/amazon/kindle/krx/reader/IPositionFactory;
    .locals 1

    .line 64
    invoke-static {}, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/amazon/klo/KindleLearningObjectDetailActivity;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->restoredFromIntent:Z

    return p0
.end method

.method private createTermOccurrence(II)Lcom/amazon/klo/search/TermOccurrence;
    .locals 1

    .line 690
    invoke-static {}, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v0

    .line 691
    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    .line 692
    invoke-interface {v0, p2}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    .line 694
    new-instance v0, Lcom/amazon/klo/search/TermOccurrence;

    invoke-direct {v0, p1, p2}, Lcom/amazon/klo/search/TermOccurrence;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    return-object v0
.end method

.method private getHtmlDescription(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 725
    iget-object p2, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->res:Landroid/content/res/Resources;

    sget v0, Lcom/amazon/klo/R$dimen;->klo_termdetail_wiki_contents_line_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->res:Landroid/content/res/Resources;

    .line 726
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p2, v0

    .line 727
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->res:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/klo/R$dimen;->klo_termdetail_wiki_contents_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->res:Landroid/content/res/Resources;

    .line 728
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    .line 730
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0\" /> <span style=\"font-family: sans-serif-light; font-weight: 100; line-height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "px; font-size: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "px;\">"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</span>"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;
    .locals 1

    .line 91
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v0

    return-object v0
.end method

.method private goToPosition(I)V
    .locals 2

    .line 878
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-nez v0, :cond_0

    .line 880
    sget-object p1, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->TAG:Ljava/lang/String;

    const-string v0, "No KRX!"

    invoke-static {p1, v0}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 884
    :cond_0
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 887
    sget-object p1, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->TAG:Ljava/lang/String;

    const-string v0, "Cannot get ReaderManager"

    invoke-static {p1, v0}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 891
    :cond_1
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    if-nez v0, :cond_2

    .line 894
    sget-object p1, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->TAG:Ljava/lang/String;

    const-string v0, "Cannot get bookNavigator"

    invoke-static {p1, v0}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 899
    :cond_2
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v1

    if-nez v1, :cond_3

    .line 902
    sget-object p1, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->TAG:Ljava/lang/String;

    const-string v0, "Cannot get m_positionFactory"

    invoke-static {p1, v0}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 906
    :cond_3
    invoke-interface {v1, p1}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    if-nez p1, :cond_4

    .line 909
    sget-object p1, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->TAG:Ljava/lang/String;

    const-string v0, "Cannot get position"

    invoke-static {p1, v0}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 912
    :cond_4
    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->goToPosition(Lcom/amazon/kindle/krx/reader/IPosition;)V

    return-void
.end method

.method private handleBackPressed()V
    .locals 3

    .line 668
    invoke-static {}, Lcom/amazon/klo/KLOMetricManager;->markBackFromDetailPressed()V

    .line 670
    iget-boolean v0, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->fromInfoCardMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->restoredFromIntent:Z

    if-eqz v0, :cond_1

    .line 672
    :cond_0
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 673
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/amazon/klo/KindleLearningObjectActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    .line 674
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 675
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 677
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private isOnline()Z
    .locals 6

    const-string v0, "connectivity"

    .line 699
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 703
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v0

    .line 704
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 706
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 683
    invoke-static {}, Lcom/amazon/klo/KLOMetricManager;->markBackFromDetailPressed()V

    .line 685
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v0, p0

    .line 97
    invoke-super/range {p0 .. p1}, Lcom/amazon/klo/BaseKloActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    sget-object v1, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->TAG:Ljava/lang/String;

    const-string v2, "onCreate() called"

    invoke-static {v1, v2}, Lcom/amazon/klo/sdk/KRX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    sget v1, Lcom/amazon/klo/R$layout;->klo_detail:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/klo/BaseKloActivity;->initHeader()V

    .line 103
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->bindActivityToCurrentBook(Landroid/app/Activity;)V

    .line 104
    sget v1, Lcom/amazon/klo/R$id;->klo_detail:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 106
    new-instance v2, Lcom/amazon/klo/PauseableThreadPoolExecutor;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/amazon/klo/PauseableThreadPoolExecutor;-><init>(I)V

    iput-object v2, v0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->backgroundYoutubeTask:Lcom/amazon/klo/PauseableThreadPoolExecutor;

    .line 107
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setExecuteExistingDelayedTasksAfterShutdownPolicy(Z)V

    .line 109
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/klo/KLOPlatformSpecific;->getDevicePlatformSpecificUtils(Landroid/content/Context;)Lcom/amazon/klo/IDevicePlatformSpecificUtils;

    move-result-object v2

    const-string/jumbo v4, "softkeybar"

    invoke-interface {v2, v0, v4}, Lcom/amazon/klo/IDevicePlatformSpecificUtils;->configureSoftkeysShowOnlyBack(Landroid/app/Activity;Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, v0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->res:Landroid/content/res/Resources;

    const/4 v2, 0x0

    .line 112
    iput-object v2, v0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->wikiData:Ljava/lang/String;

    .line 115
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 120
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    const-string/jumbo v6, "termJson"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 121
    new-instance v6, Lorg/json/JSONObject;

    const-string v7, "detailObject"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v7, "fromInfoCard"

    .line 128
    invoke-virtual {v4, v7, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->fromInfoCardMode:Z

    const-string v7, "fromSearch"

    .line 129
    invoke-virtual {v4, v7, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->fromSearch:Z

    const-string/jumbo v7, "restoredIntent"

    .line 130
    invoke-virtual {v4, v7, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->restoredFromIntent:Z

    .line 132
    iget-boolean v7, v0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->fromInfoCardMode:Z

    if-nez v7, :cond_0

    if-nez v4, :cond_0

    iget-boolean v4, v0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->fromSearch:Z

    if-eqz v4, :cond_1

    .line 134
    :cond_0
    invoke-static {}, Lcom/amazon/klo/KindleLearningObjectPlugin;->getInstance()Lcom/amazon/klo/KindleLearningObjectPlugin;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/amazon/klo/KindleLearningObjectPlugin;->persistReaderOrientation(Landroid/content/Context;)V

    :cond_1
    const-string v4, "definitionArray"

    .line 137
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v7, "cardArray"

    .line 138
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const-string v8, "detailedDefintionArray"

    .line 139
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 142
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_2

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 144
    new-instance v4, Lcom/amazon/klo/list/TermListItem;

    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v4, v5, v7, v8}, Lcom/amazon/klo/list/TermListItem;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 146
    :cond_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 148
    new-instance v7, Lcom/amazon/klo/list/TermListItem;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v7, v5, v4}, Lcom/amazon/klo/list/TermListItem;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    move-object v4, v7

    goto :goto_0

    .line 152
    :cond_3
    new-instance v4, Lcom/amazon/klo/list/TermListItem;

    invoke-direct {v4, v5}, Lcom/amazon/klo/list/TermListItem;-><init>(Lorg/json/JSONObject;)V

    .line 154
    :goto_0
    invoke-virtual {v4}, Lcom/amazon/klo/list/TermListItem;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->term:Ljava/lang/String;

    .line 156
    invoke-virtual {v4}, Lcom/amazon/klo/list/TermListItem;->getDetailDefinition()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const-string/jumbo v7, "wiki"

    const/16 v8, 0x8

    if-nez v5, :cond_4

    .line 158
    sget v5, Lcom/amazon/klo/R$id;->klo_top_card_title:I

    invoke-virtual {v0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 159
    sget v9, Lcom/amazon/klo/R$id;->klo_naked_title:I

    invoke-virtual {v0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 160
    iget-object v10, v0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->term:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 165
    :cond_4
    sget v5, Lcom/amazon/klo/R$id;->klo_naked_title:I

    invoke-virtual {v0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 166
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    invoke-virtual {v4}, Lcom/amazon/klo/list/TermListItem;->getDetailDefinition()Ljava/lang/String;

    move-result-object v5

    .line 173
    sget v9, Lcom/amazon/klo/R$id;->klo_detail_term:I

    invoke-virtual {v0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, v0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->term:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    sget v9, Lcom/amazon/klo/R$id;->klo_detail_desc:I

    invoke-virtual {v0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {v4}, Lcom/amazon/klo/list/TermListItem;->getSrc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const-string v9, "Unset"

    if-nez v5, :cond_5

    .line 178
    invoke-virtual {v4}, Lcom/amazon/klo/list/TermListItem;->getSrc()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_5
    move-object v5, v9

    .line 180
    :goto_1
    invoke-virtual {v4}, Lcom/amazon/klo/list/TermListItem;->getSrcUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    .line 182
    invoke-virtual {v4}, Lcom/amazon/klo/list/TermListItem;->getSrcUrl()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_6
    move-object v10, v9

    .line 184
    :goto_2
    invoke-virtual {v4}, Lcom/amazon/klo/list/TermListItem;->getLicense()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7

    .line 186
    invoke-virtual {v4}, Lcom/amazon/klo/list/TermListItem;->getLicense()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_7
    move-object v11, v9

    .line 188
    :goto_3
    invoke-virtual {v4}, Lcom/amazon/klo/list/TermListItem;->getLicenseUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_8

    .line 190
    invoke-virtual {v4}, Lcom/amazon/klo/list/TermListItem;->getLicenseUrl()Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    :cond_8
    move-object v12, v9

    :goto_4
    const-string v13, "glossary"

    .line 193
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 195
    sget v5, Lcom/amazon/klo/R$string;->klo_glossary_definition:I

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 197
    :cond_9
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 199
    sget v5, Lcom/amazon/klo/R$string;->klo_wiki_from:I

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 200
    invoke-virtual {v4}, Lcom/amazon/klo/list/TermListItem;->getSrcUrl()Ljava/lang/String;

    move-result-object v10

    .line 201
    sget v11, Lcom/amazon/klo/R$string;->klo_wiki_license:I

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "http://creativecommons.org/licenses/by-sa/3.0/"

    .line 204
    :cond_a
    sget v13, Lcom/amazon/klo/R$id;->klo_detail_src:I

    invoke-virtual {v0, v13}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 205
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    .line 207
    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_b
    const-string v5, ""

    .line 211
    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    :goto_5
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 216
    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 217
    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    goto :goto_6

    .line 222
    :cond_c
    new-instance v5, Lcom/amazon/klo/KindleLearningObjectDetailActivity$1;

    invoke-direct {v5, v0, v10}, Lcom/amazon/klo/KindleLearningObjectDetailActivity$1;-><init>(Lcom/amazon/klo/KindleLearningObjectDetailActivity;Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    :goto_6
    sget v5, Lcom/amazon/klo/R$id;->klo_detail_lic:I

    invoke-virtual {v0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 238
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 241
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    new-instance v9, Lcom/amazon/klo/KindleLearningObjectDetailActivity$2;

    invoke-direct {v9, v0, v12}, Lcom/amazon/klo/KindleLearningObjectDetailActivity$2;-><init>(Lcom/amazon/klo/KindleLearningObjectDetailActivity;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    .line 259
    :cond_d
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    :goto_7
    sget v5, Lcom/amazon/klo/R$id;->klo_termdetail_found_title:I

    invoke-virtual {v0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 265
    invoke-static {}, Lcom/amazon/klo/KLOApp;->hasPageLabels()Z

    move-result v9

    if-eqz v9, :cond_e

    sget v9, Lcom/amazon/klo/R$string;->klo_term_found_text:I

    goto :goto_8

    :cond_e
    sget v9, Lcom/amazon/klo/R$string;->klo_term_found_text_location:I

    :goto_8
    invoke-virtual {v0, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 267
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    invoke-virtual {v4}, Lcom/amazon/klo/list/TermListItem;->getLocations()Lorg/json/JSONArray;

    move-result-object v4

    const-string/jumbo v5, "pagesArray"

    .line 271
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 272
    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v10, 0x0

    .line 273
    :goto_9
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_11

    .line 275
    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v11

    if-nez v11, :cond_10

    .line 277
    new-instance v11, Lcom/amazon/klo/list/PageListItem;

    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/amazon/klo/list/PageListItem;-><init>(Lorg/json/JSONObject;)V

    .line 279
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v10, v12, :cond_f

    .line 283
    :try_start_1
    invoke-virtual {v4, v10}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v12

    .line 284
    invoke-virtual {v12, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v13

    const/4 v14, 0x2

    .line 285
    invoke-virtual {v12, v14}, Lorg/json/JSONArray;->getInt(I)I

    move-result v14

    const/4 v15, 0x3

    .line 286
    invoke-virtual {v12, v15}, Lorg/json/JSONArray;->getInt(I)I

    move-result v12

    add-int/2addr v13, v14

    add-int/2addr v12, v13

    .line 291
    invoke-direct {v0, v13, v12}, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->createTermOccurrence(II)Lcom/amazon/klo/search/TermOccurrence;

    move-result-object v12

    .line 292
    invoke-virtual {v11, v12}, Lcom/amazon/klo/list/PageListItem;->setTermOccurrence(Lcom/amazon/klo/search/TermOccurrence;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    .line 296
    :catch_0
    sget-object v12, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->TAG:Ljava/lang/String;

    const-string v13, "failed to parse positions"

    invoke-static {v12, v13}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_f
    :goto_a
    invoke-interface {v9, v10, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_10
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 303
    :cond_11
    sget v4, Lcom/amazon/klo/R$id;->klo_termdetail_found_thumbnail_list:I

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 304
    new-instance v4, Lcom/amazon/klo/list/PageListAdapter;

    invoke-direct {v4, v9}, Lcom/amazon/klo/list/PageListAdapter;-><init>(Ljava/util/List;)V

    iput-object v4, v0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->pageListAdapter:Lcom/amazon/klo/list/PageListAdapter;

    .line 305
    iget-object v9, v0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->pageListItemClickListener:Lcom/amazon/klo/list/PageListAdapter$OnItemClickListener;

    invoke-virtual {v4, v9}, Lcom/amazon/klo/list/PageListAdapter;->setOnItemClickListener(Lcom/amazon/klo/list/PageListAdapter$OnItemClickListener;)V

    .line 306
    iget-object v4, v0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->pageListAdapter:Lcom/amazon/klo/list/PageListAdapter;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 307
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 308
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 309
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 312
    sget v1, Lcom/amazon/klo/R$string;->klo_term_outside_sources_text:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    new-array v9, v4, [Ljava/lang/Object;

    iget-object v10, v0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->term:Ljava/lang/String;

    aput-object v10, v9, v3

    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 313
    sget v9, Lcom/amazon/klo/R$id;->klo_term_outside_desc:I

    invoke-virtual {v0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 314
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v1, "wikisWithImagesArray"

    .line 316
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 317
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v10, v4, :cond_12

    const-string/jumbo v1, "wikisArray"

    .line 320
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    :cond_12
    const-string/jumbo v10, "videosArray"

    .line 322
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 323
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v10, v4, :cond_13

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v10, v4, :cond_13

    .line 326
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    :cond_13
    sget v9, Lcom/amazon/klo/R$id;->klo_wiki_frame:I

    invoke-virtual {v0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 331
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v10

    const-string v11, "licenseUrl"

    const-string/jumbo v12, "source"

    const-string/jumbo v13, "url"

    const/4 v14, 0x7

    const-string v15, "license"

    if-ge v10, v4, :cond_14

    .line 334
    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_b

    .line 338
    :cond_14
    iput-boolean v4, v0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->wikiAvailable:Z

    .line 340
    sget v9, Lcom/amazon/klo/R$id;->klo_wiki_term:I

    invoke-virtual {v0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, v0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->term:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 342
    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "description"

    .line 343
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 344
    invoke-direct {v0, v10, v9}, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->getHtmlDescription(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 346
    iput-object v3, v0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->wikiData:Ljava/lang/String;

    .line 347
    sget v3, Lcom/amazon/klo/R$id;->klo_wiki_contents:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 350
    invoke-static/range {p0 .. p0}, Lcom/amazon/klo/MetricEnabledLinkMovementMethod;->getInstance(Landroid/content/Context;)Landroid/text/method/MovementMethod;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Lcom/amazon/klo/MetricEnabledLinkMovementMethod;

    .line 351
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 352
    iget-object v8, v0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->wikiData:Ljava/lang/String;

    new-instance v4, Lcom/amazon/klo/URLImageParser;

    invoke-direct {v4, v3, v0}, Lcom/amazon/klo/URLImageParser;-><init>(Landroid/view/View;Landroid/content/Context;)V

    invoke-static {v8, v4, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    sget v2, Lcom/amazon/klo/R$id;->klo_wiki_accessibility_overlay:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 355
    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    new-instance v2, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<a href=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/amazon/klo/R$string;->klo_wiki_more:I

    .line 358
    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&#8230;</a>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 357
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 360
    sget v3, Lcom/amazon/klo/R$id;->klo_wiki_more:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 361
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    new-instance v2, Lcom/amazon/klo/KindleLearningObjectDetailActivity$3;

    invoke-direct {v2, v0, v9}, Lcom/amazon/klo/KindleLearningObjectDetailActivity$3;-><init>(Lcom/amazon/klo/KindleLearningObjectDetailActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 378
    sget v3, Lcom/amazon/klo/R$id;->klo_wiki_source:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 379
    sget v4, Lcom/amazon/klo/R$id;->klo_wiki_license:I

    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 381
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 383
    sget v1, Lcom/amazon/klo/R$string;->klo_wiki_from:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    sget v1, Lcom/amazon/klo/R$string;->klo_wiki_license:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    new-instance v1, Lcom/amazon/klo/KindleLearningObjectDetailActivity$4;

    invoke-direct {v1, v0}, Lcom/amazon/klo/KindleLearningObjectDetailActivity$4;-><init>(Lcom/amazon/klo/KindleLearningObjectDetailActivity;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_b

    .line 400
    :cond_15
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 404
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v14, :cond_16

    .line 406
    new-instance v2, Lcom/amazon/klo/KindleLearningObjectDetailActivity$5;

    invoke-direct {v2, v0, v1}, Lcom/amazon/klo/KindleLearningObjectDetailActivity$5;-><init>(Lcom/amazon/klo/KindleLearningObjectDetailActivity;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    :cond_16
    :goto_b
    sget v1, Lcom/amazon/klo/R$id;->klo_video_frame:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 424
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_17

    const/16 v2, 0x8

    .line 427
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_d

    .line 431
    :cond_17
    iput-boolean v3, v0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->youtubeAvailable:Z

    const/4 v1, 0x0

    .line 433
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 434
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "/embed/"

    .line 435
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-gez v3, :cond_18

    const-string v3, "/v/"

    .line 441
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_19

    add-int/lit8 v3, v3, 0x3

    goto :goto_c

    :cond_18
    add-int/2addr v3, v14

    :cond_19
    :goto_c
    if-ltz v3, :cond_1a

    const-string v4, "?"

    .line 453
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    :cond_1a
    if-ltz v4, :cond_1d

    .line 457
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 459
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://img.youtube.com/vi/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/mqdefault.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 460
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://m.youtube.com/#/watch?v="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 462
    invoke-direct/range {p0 .. p0}, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->isOnline()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 464
    new-instance v4, Lcom/amazon/klo/KindleLearningObjectDetailActivity$6;

    invoke-direct {v4, v0, v3}, Lcom/amazon/klo/KindleLearningObjectDetailActivity$6;-><init>(Lcom/amazon/klo/KindleLearningObjectDetailActivity;Ljava/lang/String;)V

    .line 525
    iget-object v3, v0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->backgroundYoutubeTask:Lcom/amazon/klo/PauseableThreadPoolExecutor;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 528
    :cond_1b
    sget v3, Lcom/amazon/klo/R$id;->klo_play_button:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/4 v4, 0x0

    .line 529
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 530
    new-instance v4, Lcom/amazon/klo/KindleLearningObjectDetailActivity$7;

    invoke-direct {v4, v0, v1}, Lcom/amazon/klo/KindleLearningObjectDetailActivity$7;-><init>(Lcom/amazon/klo/KindleLearningObjectDetailActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string/jumbo v1, "title"

    .line 544
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 545
    sget v3, Lcom/amazon/klo/R$id;->klo_video_title:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 547
    sget v3, Lcom/amazon/klo/R$id;->klo_video_source:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 548
    sget v4, Lcom/amazon/klo/R$id;->klo_video_license:I

    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 549
    sget v6, Lcom/amazon/klo/R$id;->klo_youtube_icon:I

    invoke-virtual {v0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const-string/jumbo v7, "youtube"

    .line 551
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 553
    sget v1, Lcom/amazon/klo/R$string;->klo_youtube_from:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v7, 0x0

    .line 554
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 555
    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 556
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v8, 0x8

    .line 557
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 558
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_d

    :cond_1c
    const/4 v7, 0x0

    const/16 v8, 0x8

    .line 562
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 564
    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 565
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 567
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v1, :cond_1d

    .line 569
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v14, :cond_1d

    .line 571
    new-instance v2, Lcom/amazon/klo/KindleLearningObjectDetailActivity$8;

    invoke-direct {v2, v0, v1}, Lcom/amazon/klo/KindleLearningObjectDetailActivity$8;-><init>(Lcom/amazon/klo/KindleLearningObjectDetailActivity;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    :cond_1d
    :goto_d
    new-instance v1, Lcom/amazon/klo/KindleLearningObjectDetailActivity$9;

    invoke-direct {v1, v0}, Lcom/amazon/klo/KindleLearningObjectDetailActivity$9;-><init>(Lcom/amazon/klo/KindleLearningObjectDetailActivity;)V

    .line 614
    sget v2, Lcom/amazon/klo/R$id;->klo_feedback_button_entry_yes:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 615
    sget v3, Lcom/amazon/klo/R$id;->klo_feedback_button_entry_no:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 616
    new-instance v4, Lcom/amazon/klo/KindleLearningObjectDetailActivity$10;

    invoke-direct {v4, v0}, Lcom/amazon/klo/KindleLearningObjectDetailActivity$10;-><init>(Lcom/amazon/klo/KindleLearningObjectDetailActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 630
    new-instance v2, Lcom/amazon/klo/KindleLearningObjectDetailActivity$11;

    invoke-direct {v2, v0}, Lcom/amazon/klo/KindleLearningObjectDetailActivity$11;-><init>(Lcom/amazon/klo/KindleLearningObjectDetailActivity;)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 643
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/klo/KLOPlatformSpecific;->getDetailHeaderBar(Landroid/content/Context;)Lcom/amazon/klo/IKLODetailHeaderBar;

    move-result-object v2

    iput-object v2, v0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->kloHeaderBar:Lcom/amazon/klo/IKLODetailHeaderBar;

    .line 644
    invoke-interface {v2, v0, v1}, Lcom/amazon/klo/IKLODetailHeaderBar;->initialize(Landroidx/appcompat/app/ActionBarActivity;Lcom/amazon/klo/IKLODetailHeaderBar$IKLODetailOnHeaderActionBarClickListener;)V

    .line 646
    iget-object v1, v0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->term:Ljava/lang/String;

    iget-boolean v2, v0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->wikiAvailable:Z

    iget-boolean v3, v0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->youtubeAvailable:Z

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/amazon/klo/KLOMetricManager;->reportDetailPageLoaded(Ljava/lang/String;ZZI)V

    .line 648
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v1

    const-string v2, "TermDetailOpenTime"

    const-string v3, "KINDLE_LEARNING_OBJECTS"

    invoke-interface {v1, v3, v2, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 125
    :catch_1
    sget-object v1, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->TAG:Ljava/lang/String;

    const-string v2, "failed to parse json"

    invoke-static {v1, v2}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 865
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->backgroundYoutubeTask:Lcom/amazon/klo/PauseableThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    move-result-object v0

    .line 866
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 868
    sget-object v1, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Background tasks are stopped; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " tasks not done"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/klo/sdk/KRX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    :cond_0
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->unBindActivityFromCurrentBook(Landroid/app/Activity;)V

    .line 872
    invoke-super {p0}, Lcom/amazon/klo/ThemeActivity;->onDestroy()V

    .line 873
    sget-object v0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/amazon/klo/sdk/KRX;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 657
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 659
    invoke-direct {p0}, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->handleBackPressed()V

    const/4 p1, 0x1

    return p1

    .line 663
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 823
    sget-object v0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/amazon/klo/sdk/KRX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->pageListAdapter:Lcom/amazon/klo/list/PageListAdapter;

    invoke-virtual {v0}, Lcom/amazon/klo/list/PageListAdapter;->pause()V

    .line 826
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->backgroundYoutubeTask:Lcom/amazon/klo/PauseableThreadPoolExecutor;

    invoke-virtual {v0}, Lcom/amazon/klo/PauseableThreadPoolExecutor;->pause()V

    .line 828
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 834
    sget-object v0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/amazon/klo/sdk/KRX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 837
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->pageListAdapter:Lcom/amazon/klo/list/PageListAdapter;

    invoke-virtual {v0}, Lcom/amazon/klo/list/PageListAdapter;->resume()V

    .line 838
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->backgroundYoutubeTask:Lcom/amazon/klo/PauseableThreadPoolExecutor;

    invoke-virtual {v0}, Lcom/amazon/klo/PauseableThreadPoolExecutor;->resume()V

    .line 840
    sget v0, Lcom/amazon/klo/R$id;->klo_feedback_entry_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 841
    invoke-static {}, Lcom/amazon/klo/debug/KLODebugOptions;->getFeedbackEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 843
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 847
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 850
    :goto_0
    sget v0, Lcom/amazon/klo/R$id;->klo_detail:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 851
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 857
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->pageListAdapter:Lcom/amazon/klo/list/PageListAdapter;

    invoke-virtual {v0}, Lcom/amazon/klo/list/PageListAdapter;->dispose()V

    .line 859
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method
