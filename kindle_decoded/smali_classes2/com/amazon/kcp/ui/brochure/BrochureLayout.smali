.class public Lcom/amazon/kcp/ui/brochure/BrochureLayout;
.super Landroid/widget/RelativeLayout;
.source "BrochureLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private actionButton:Landroid/widget/Button;

.field private allPagesViewed:Z

.field private brochureAdapter:Lcom/amazon/kcp/ui/brochure/BrochureAdapter;

.field private brochurePauseElapsedTime:J

.field private brochureStartTime:J

.field private clickstreamPageType:Ljava/lang/String;

.field private currentPagePauseElapsedTime:J

.field private currentPagePauseStartTime:J

.field private currentPageStartTime:J

.field private currentPageVisitIndex:I

.field private doneListener:Lcom/amazon/kcp/ui/brochure/IBrochureDoneListener;

.field private furthestPage:I

.field private isPaused:Z

.field private metricsContext:Ljava/lang/String;

.field private nextButton:Landroid/widget/Button;

.field private pageIndicator:Lcom/amazon/kcp/reader/ui/DotPageIndicator;

.field private pageVisitCounts:[I

.field private final startingPage:I

.field private totalPages:I

.field private viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 46
    iput p2, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->startingPage:I

    .line 48
    iput p2, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->furthestPage:I

    const/4 v0, 0x1

    .line 49
    iput v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->currentPageVisitIndex:I

    .line 50
    iput p2, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->totalPages:I

    const/4 v1, 0x0

    .line 51
    iput-object v1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->pageVisitCounts:[I

    const-wide/16 v1, 0x0

    .line 52
    iput-wide v1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->brochureStartTime:J

    .line 53
    iput-wide v1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->brochurePauseElapsedTime:J

    .line 54
    iput-wide v1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->currentPageStartTime:J

    .line 55
    iput-wide v1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->currentPagePauseStartTime:J

    .line 56
    iput-wide v1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->currentPagePauseElapsedTime:J

    .line 57
    iput-boolean p2, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->allPagesViewed:Z

    .line 58
    iput-boolean p2, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->isPaused:Z

    const-string p2, "layout_inflater"

    .line 75
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 76
    sget p2, Lcom/amazon/kindle/krl/R$layout;->brochure_layout:I

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 78
    sget p1, Lcom/amazon/kindle/krl/R$id;->nextButton:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->nextButton:Landroid/widget/Button;

    .line 79
    sget p1, Lcom/amazon/kindle/krl/R$id;->shareButton:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->actionButton:Landroid/widget/Button;

    .line 80
    sget p1, Lcom/amazon/kindle/krl/R$id;->brochurePageIndicator:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/reader/ui/DotPageIndicator;

    iput-object p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->pageIndicator:Lcom/amazon/kcp/reader/ui/DotPageIndicator;

    .line 81
    sget p1, Lcom/amazon/kindle/krl/R$id;->pager:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 83
    invoke-direct {p0}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->initializeViewPager()V

    .line 84
    invoke-direct {p0}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->initializeCloseButton()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/ui/brochure/BrochureLayout;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/ui/brochure/BrochureLayout;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->recordClickstreamMetricsForClose(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/kcp/ui/brochure/BrochureLayout;)Landroid/widget/Button;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->nextButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/amazon/kcp/ui/brochure/BrochureLayout;)Lcom/amazon/kcp/ui/brochure/BrochureAdapter;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->brochureAdapter:Lcom/amazon/kcp/ui/brochure/BrochureAdapter;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/amazon/kcp/ui/brochure/BrochureLayout;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->recordClickstreamMetricsForEvent(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/ui/brochure/BrochureLayout;)Lcom/amazon/kcp/reader/ui/DotPageIndicator;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->pageIndicator:Lcom/amazon/kcp/reader/ui/DotPageIndicator;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/ui/brochure/BrochureLayout;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->furthestPage:I

    return p0
.end method

.method static synthetic access$402(Lcom/amazon/kcp/ui/brochure/BrochureLayout;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->furthestPage:I

    return p1
.end method

.method static synthetic access$500(Lcom/amazon/kcp/ui/brochure/BrochureLayout;)[I
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->pageVisitCounts:[I

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kcp/ui/brochure/BrochureLayout;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->allPagesViewed:Z

    return p0
.end method

.method static synthetic access$602(Lcom/amazon/kcp/ui/brochure/BrochureLayout;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->allPagesViewed:Z

    return p1
.end method

.method static synthetic access$700(Lcom/amazon/kcp/ui/brochure/BrochureLayout;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->totalPages:I

    return p0
.end method

.method static synthetic access$802(Lcom/amazon/kcp/ui/brochure/BrochureLayout;J)J
    .locals 0

    .line 43
    iput-wide p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->currentPageStartTime:J

    return-wide p1
.end method

.method static synthetic access$908(Lcom/amazon/kcp/ui/brochure/BrochureLayout;)I
    .locals 2

    .line 43
    iget v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->currentPageVisitIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->currentPageVisitIndex:I

    return v0
.end method

.method private initializeCloseButton()V
    .locals 2

    .line 141
    sget v0, Lcom/amazon/kindle/krl/R$id;->rlCloseContainer:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 145
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 146
    new-instance v1, Lcom/amazon/kcp/ui/brochure/BrochureLayout$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/ui/brochure/BrochureLayout$2;-><init>(Lcom/amazon/kcp/ui/brochure/BrochureLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeNextButton(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 117
    iget-object p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$string;->brochure_done_button_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$string;->brochure_next_button_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setClickable(Z)V

    .line 122
    iget-object p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->nextButton:Landroid/widget/Button;

    new-instance v0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/ui/brochure/BrochureLayout$1;-><init>(Lcom/amazon/kcp/ui/brochure/BrochureLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializePageIndicator(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->pageIndicator:Lcom/amazon/kcp/reader/ui/DotPageIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->pageIndicator:Lcom/amazon/kcp/reader/ui/DotPageIndicator;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->setItemCount(I)V

    .line 235
    iget-object p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->pageIndicator:Lcom/amazon/kcp/reader/ui/DotPageIndicator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->setSelectedItem(I)V

    return-void
.end method

.method private initializeViewPager()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    return-void

    .line 161
    :cond_0
    new-instance v1, Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;-><init>(Lcom/amazon/kcp/ui/brochure/BrochureLayout;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private recordClickstreamMetricsForClose(Ljava/lang/String;)V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 315
    iget-object v1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/ui/brochure/BrochureAdapter;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/ui/brochure/BrochureAdapter;->getSlide(I)Lcom/amazon/kindle/krx/ui/brochure/IBrochureSlide;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 317
    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/brochure/IBrochureSlide;->getMetricKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->recordClickstreamMetricsForEvent(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    const-string v1, "EntireTutorial"

    .line 319
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->recordClickstreamMetricsForEvent(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private recordClickstreamMetricsForEvent(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .line 269
    iget-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->clickstreamPageType:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 270
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    .line 271
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 272
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_7

    .line 274
    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v2

    .line 276
    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 278
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getOwnershipType()Lcom/amazon/kindle/model/content/ContentOwnershipType;

    move-result-object v0

    .line 280
    sget-object v2, Lcom/amazon/kindle/model/content/ContentOwnershipType;->Rental:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    if-ne v0, v2, :cond_1

    const-string v0, "rental"

    goto :goto_1

    .line 282
    :cond_1
    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->isFreeTrial()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "freeTrial"

    goto :goto_1

    .line 284
    :cond_2
    sget-object v1, Lcom/amazon/kindle/model/content/ContentOwnershipType;->Sample:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    if-ne v0, v1, :cond_3

    const-string v0, "sample"

    goto :goto_1

    :cond_3
    const-string v0, "owned"

    goto :goto_1

    :cond_4
    const-string v0, ""

    .line 289
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "EntireTutorial"

    .line 290
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-wide v3, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->brochureStartTime:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->brochurePauseElapsedTime:J

    goto :goto_2

    :cond_5
    iget-wide v3, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->currentPageStartTime:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->currentPagePauseElapsedTime:J

    :goto_2
    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    .line 293
    iput-wide v3, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->currentPagePauseElapsedTime:J

    .line 295
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 296
    iget-boolean v4, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->allPagesViewed:Z

    if-eqz v4, :cond_6

    const-string v4, "1"

    goto :goto_3

    :cond_6
    const-string v4, "0"

    :goto_3
    const-string v5, "AllTutorialsViewed"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget v4, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->furthestPage:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "FurthestPageIndexSeen"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "BookOwnershipType"

    .line 298
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Duration"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PageIndex"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->pageVisitCounts:[I

    aget p2, v0, p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "SeenCount"

    invoke-virtual {v3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "TransitionCause"

    .line 302
    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->currentPageVisitIndex:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "VisitIndex"

    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->totalPages:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "TotalPages"

    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p3, p1, p2

    const/4 p2, 0x1

    .line 306
    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    const-string p2, "Clickstream Event (%s): %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 308
    iget-object p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->clickstreamPageType:Ljava/lang/String;

    invoke-static {p1, p3, v3}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public initializeActionButton(Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$BrochureListener;Ljava/lang/String;)V
    .locals 3

    .line 323
    invoke-static {p2}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 324
    iget-object p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->actionButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 325
    iget-object p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->actionButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object p2, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->actionButton:Landroid/widget/Button;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 330
    iget-object p2, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->actionButton:Landroid/widget/Button;

    new-instance v0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$4;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/ui/brochure/BrochureLayout$4;-><init>(Lcom/amazon/kcp/ui/brochure/BrochureLayout;Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$BrochureListener;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method protected onPauseDisplay()V
    .locals 2

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->isPaused:Z

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->currentPagePauseStartTime:J

    return-void
.end method

.method protected onResumeDisplay()V
    .locals 4

    .line 106
    iget-boolean v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->isPaused:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->currentPagePauseStartTime:J

    sub-long/2addr v0, v2

    .line 108
    iget-wide v2, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->currentPagePauseElapsedTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->currentPagePauseElapsedTime:J

    .line 109
    iget-wide v2, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->brochurePauseElapsedTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->brochurePauseElapsedTime:J

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->isPaused:Z

    :cond_0
    return-void
.end method

.method public performDonePressed()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->doneListener:Lcom/amazon/kcp/ui/brochure/IBrochureDoneListener;

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0}, Lcom/amazon/kcp/ui/brochure/IBrochureDoneListener;->donePressed()V

    goto :goto_0

    .line 95
    :cond_0
    sget-object v0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->TAG:Ljava/lang/String;

    const-string v1, "DoneListener should not be null, no action performed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setClickstreamPageType(Ljava/lang/String;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->clickstreamPageType:Ljava/lang/String;

    return-void
.end method

.method public setContentToDisplay(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/ui/brochure/IBrochureSlide;",
            ">;)V"
        }
    .end annotation

    .line 239
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 240
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 241
    invoke-direct {p0, v0}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->initializePageIndicator(I)V

    .line 242
    invoke-direct {p0, v0}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->initializeNextButton(I)V

    .line 243
    new-instance v1, Lcom/amazon/kcp/ui/brochure/BrochureAdapter;

    invoke-direct {v1, p1}, Lcom/amazon/kcp/ui/brochure/BrochureAdapter;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->brochureAdapter:Lcom/amazon/kcp/ui/brochure/BrochureAdapter;

    .line 245
    iget-object v2, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 246
    iget-object v1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 247
    iget-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 249
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->totalPages:I

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->brochureStartTime:J

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->currentPageStartTime:J

    .line 252
    iget p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->totalPages:I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->pageVisitCounts:[I

    const/4 v0, 0x1

    .line 254
    aput v0, p1, v1

    goto :goto_0

    .line 256
    :cond_0
    sget-object p1, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->TAG:Ljava/lang/String;

    const-string v0, "Content to display must have at least 1 item"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setDoneListener(Lcom/amazon/kcp/ui/brochure/IBrochureDoneListener;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->doneListener:Lcom/amazon/kcp/ui/brochure/IBrochureDoneListener;

    return-void
.end method

.method public setMetricsContext(Ljava/lang/String;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->metricsContext:Ljava/lang/String;

    return-void
.end method
