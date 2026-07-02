.class public Lcom/amazon/kcp/library/EmptyLibraryController;
.super Ljava/lang/Object;
.source "EmptyLibraryController.java"


# static fields
.field private static final SHOW_EMPTY_LAYOUT_DELAY:I = 0x12c

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final createCollectionClickListener:Landroid/view/View$OnClickListener;

.field private final emptyCollectionIconResource:I

.field private final emptyLibraryStringProvider:Lcom/amazon/kcp/library/EmptyLibraryStringProvider;

.field private final emptyStoreIconResource:I

.field private final fragmentHandler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

.field private final launchStoreRunnable:Ljava/lang/Runnable;

.field protected final libraryActivity:Landroid/app/Activity;

.field private shopClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/amazon/kcp/library/EmptyLibraryController;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/EmptyLibraryController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/kcp/library/EmptyLibraryStringProvider;)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/amazon/kcp/library/EmptyLibraryController$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/EmptyLibraryController$1;-><init>(Lcom/amazon/kcp/library/EmptyLibraryController;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/EmptyLibraryController;->shopClickListener:Landroid/view/View$OnClickListener;

    .line 66
    new-instance v0, Lcom/amazon/kcp/library/EmptyLibraryController$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/EmptyLibraryController$2;-><init>(Lcom/amazon/kcp/library/EmptyLibraryController;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/EmptyLibraryController;->createCollectionClickListener:Landroid/view/View$OnClickListener;

    .line 81
    iput-object p1, p0, Lcom/amazon/kcp/library/EmptyLibraryController;->libraryActivity:Landroid/app/Activity;

    .line 82
    iput-object p2, p0, Lcom/amazon/kcp/library/EmptyLibraryController;->launchStoreRunnable:Ljava/lang/Runnable;

    .line 83
    iput-object p3, p0, Lcom/amazon/kcp/library/EmptyLibraryController;->fragmentHandler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    .line 84
    iput-object p4, p0, Lcom/amazon/kcp/library/EmptyLibraryController;->emptyLibraryStringProvider:Lcom/amazon/kcp/library/EmptyLibraryStringProvider;

    const/4 p2, 0x3

    new-array p2, p2, [I

    .line 87
    sget p3, Lcom/amazon/kindle/librarymodule/R$attr;->library_empty_view_store_icon:I

    const/4 p4, 0x0

    aput p3, p2, p4

    sget p3, Lcom/amazon/kindle/librarymodule/R$attr;->library_empty_view_collection_icon:I

    const/4 v0, 0x1

    aput p3, p2, v0

    sget p3, Lcom/amazon/kindle/librarymodule/R$attr;->library_empty_view_cloud_icon:I

    const/4 v1, 0x2

    aput p3, p2, v1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 94
    invoke-virtual {p1, p4, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/amazon/kcp/library/EmptyLibraryController;->emptyStoreIconResource:I

    .line 95
    invoke-virtual {p1, v0, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/amazon/kcp/library/EmptyLibraryController;->emptyCollectionIconResource:I

    .line 96
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/EmptyLibraryController;)Ljava/lang/Runnable;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/kcp/library/EmptyLibraryController;->launchStoreRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/library/EmptyLibraryController;)Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/kcp/library/EmptyLibraryController;->fragmentHandler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    return-object p0
.end method

.method private getInflatedEmptyLibraryView()Lcom/amazon/kcp/library/ui/EmptyLibraryView;
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/amazon/kcp/library/EmptyLibraryController;->libraryActivity:Landroid/app/Activity;

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->empty_library_layout:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/ui/EmptyLibraryView;

    if-nez v0, :cond_0

    .line 168
    iget-object v1, p0, Lcom/amazon/kcp/library/EmptyLibraryController;->libraryActivity:Landroid/app/Activity;

    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->empty_library_stub:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/amazon/kcp/library/EmptyLibraryController;->getLibraryLayoutId()I

    move-result v0

    .line 171
    invoke-virtual {v1, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 172
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/ui/EmptyLibraryView;

    :cond_0
    return-object v0
.end method

.method private populateButtons(Lcom/amazon/kindle/krx/library/LibraryView;Lcom/amazon/kcp/library/ui/EmptyLibraryView;)V
    .locals 4

    .line 210
    const-class v0, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 211
    invoke-interface {v0}, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;->shouldUsePaymentFlows()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 212
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isStoreAccessAllowed()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 214
    :cond_1
    sget-object v0, Lcom/amazon/kcp/library/EmptyLibraryController$4;->$SwitchMap$com$amazon$kindle$krx$library$LibraryView:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 233
    sget-object p2, Lcom/amazon/kcp/library/EmptyLibraryController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Detected invalid library view  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 229
    :cond_2
    iget p1, p0, Lcom/amazon/kcp/library/EmptyLibraryController;->emptyCollectionIconResource:I

    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->empty_library_collection_text:I

    iget-object v1, p0, Lcom/amazon/kcp/library/EmptyLibraryController;->createCollectionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1, v0, v1}, Lcom/amazon/kcp/library/ui/EmptyLibraryView;->addButton(IILandroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_5

    .line 224
    iget p1, p0, Lcom/amazon/kcp/library/EmptyLibraryController;->emptyStoreIconResource:I

    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->empty_library_newsstand_store_text:I

    iget-object v1, p0, Lcom/amazon/kcp/library/EmptyLibraryController;->shopClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1, v0, v1}, Lcom/amazon/kcp/library/ui/EmptyLibraryView;->addButton(IILandroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    .line 218
    iget p1, p0, Lcom/amazon/kcp/library/EmptyLibraryController;->emptyStoreIconResource:I

    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->empty_library_store_text:I

    iget-object v1, p0, Lcom/amazon/kcp/library/EmptyLibraryController;->shopClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1, v0, v1}, Lcom/amazon/kcp/library/ui/EmptyLibraryView;->addButton(IILandroid/view/View$OnClickListener;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private showEmptyLibraryLayout()V
    .locals 4

    .line 122
    invoke-direct {p0}, Lcom/amazon/kcp/library/EmptyLibraryController;->getInflatedEmptyLibraryView()Lcom/amazon/kcp/library/ui/EmptyLibraryView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 124
    sget-object v0, Lcom/amazon/kcp/library/EmptyLibraryController;->TAG:Ljava/lang/String;

    const-string v1, "Empty library view was not found in the current view hierarchy"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 127
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 130
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/EmptyLibraryController;->updateEmptyLibraryString(Lcom/amazon/kcp/library/ui/EmptyLibraryView;)V

    return-void

    .line 136
    :cond_1
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    const/4 v2, 0x4

    .line 138
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 139
    new-instance v2, Lcom/amazon/kcp/library/EmptyLibraryController$3;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kcp/library/EmptyLibraryController$3;-><init>(Lcom/amazon/kcp/library/EmptyLibraryController;Lcom/amazon/kcp/library/ui/EmptyLibraryView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 v2, 0x12c

    .line 153
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 154
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 155
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/EmptyLibraryController;->populateEmptyLibraryLayout(Lcom/amazon/kcp/library/ui/EmptyLibraryView;)V

    .line 157
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/krx/metrics/MetricsData;

    sget-object v2, Lcom/amazon/kcp/library/EmptyLibraryController;->TAG:Ljava/lang/String;

    const-string v3, "AmazonKindle"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 158
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setWithAppVersion(Z)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v1

    const-string v2, "EmptyLibraryViewShown"

    .line 159
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v1

    .line 157
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    return-void
.end method


# virtual methods
.method protected getLibraryLayoutId()I
    .locals 1

    .line 180
    sget v0, Lcom/amazon/kindle/librarymodule/R$layout;->ruby_empty_library:I

    return v0
.end method

.method public hideEmptyLibraryLayout()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/amazon/kcp/library/EmptyLibraryController;->libraryActivity:Landroid/app/Activity;

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->empty_library_layout:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/ui/EmptyLibraryView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 189
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 190
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    return-void
.end method

.method protected populateEmptyLibraryLayout(Lcom/amazon/kcp/library/ui/EmptyLibraryView;)V
    .locals 1

    .line 199
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/EmptyLibraryController;->updateEmptyLibraryString(Lcom/amazon/kcp/library/ui/EmptyLibraryView;)V

    .line 200
    invoke-virtual {p1}, Lcom/amazon/kcp/library/ui/EmptyLibraryView;->clearButtons()V

    .line 201
    iget-object v0, p0, Lcom/amazon/kcp/library/EmptyLibraryController;->fragmentHandler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getTab()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v0

    .line 204
    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/library/EmptyLibraryController;->populateButtons(Lcom/amazon/kindle/krx/library/LibraryView;Lcom/amazon/kcp/library/ui/EmptyLibraryView;)V

    return-void
.end method

.method public updateEmptyLibraryLayout(I)V
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "library count when updating library: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-nez p1, :cond_1

    .line 111
    iget-object p1, p0, Lcom/amazon/kcp/library/EmptyLibraryController;->fragmentHandler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    invoke-interface {p1}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getUserSelectedViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/amazon/kcp/library/EmptyLibraryController;->fragmentHandler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->scrollToBeginning(Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/library/EmptyLibraryController;->showEmptyLibraryLayout()V

    goto :goto_0

    :cond_1
    if-lez p1, :cond_2

    .line 117
    invoke-virtual {p0}, Lcom/amazon/kcp/library/EmptyLibraryController;->hideEmptyLibraryLayout()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected updateEmptyLibraryString(Lcom/amazon/kcp/library/ui/EmptyLibraryView;)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/amazon/kcp/library/EmptyLibraryController;->emptyLibraryStringProvider:Lcom/amazon/kcp/library/EmptyLibraryStringProvider;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/EmptyLibraryStringProvider;->getEmptyLibraryString(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/ui/EmptyLibraryView;->setTitle(Ljava/lang/String;)V

    return-void
.end method
