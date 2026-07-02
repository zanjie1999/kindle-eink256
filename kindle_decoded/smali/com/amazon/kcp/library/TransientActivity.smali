.class public Lcom/amazon/kcp/library/TransientActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "TransientActivity.java"


# static fields
.field private static final ACTIVITY_TRANSITION_NAME:Ljava/lang/String; = "activity_transition_with_animation"

.field public static final EXTRA_DOCUMENT_TYPE:Ljava/lang/String; = "DownloadingDocumentType"

.field public static final EXTRA_DOWNLOADING_BOOK_ASIN:Ljava/lang/String; = "DownloadingBookAsin"

.field public static final EXTRA_DOWNLOADING_BOOK_IS_SAMPLE:Ljava/lang/String; = "DownloadingBookIsSample"

.field public static final EXTRA_DOWNLOADING_FROM_SYNC:Ljava/lang/String; = "DownloadingBookFromSync"

.field public static final EXTRA_IS_FALKOR:Ljava/lang/String; = "Falkor"

.field private static final IS_STARTED_FROM_STORE_OR_SEARCH:Ljava/lang/String; = "IsFromStoreOrSearch"

.field private static final START_WITH_ANIMATION:Ljava/lang/String; = "start_transition_with_animation"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private asin:Ljava/lang/String;

.field private coverView:Lcom/amazon/kcp/library/ui/BookCoverView;

.field private documentType:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

.field private downloadAccessibilityHelper:Lcom/amazon/kcp/util/DownloadAccessibilityHelper;

.field private downloadItemMetadata:Lcom/amazon/kindle/content/ContentMetadata;

.field private downloadProgressBar:Landroid/widget/ProgressBar;

.field private downloadProgressBarState:Lcom/amazon/android/util/DownloadProgressBarState;

.field private downloadProgressPercent:Landroid/widget/TextView;

.field private downloadProgressStatus:Landroid/widget/TextView;

.field private downloadProgressText:Landroid/widget/TextView;

.field protected downloadService:Lcom/amazon/kindle/services/download/IDownloadService;

.field private downloadTitle:Landroid/widget/TextView;

.field private downloadingUnownedSample:Z

.field private isFalkor:Z

.field private isSample:Z

.field private library:Lcom/amazon/kindle/content/ILibraryService;

.field private rootView:Landroid/view/ViewGroup;

.field private startPage:Lcom/amazon/kcp/reader/IReaderController$StartPage;

.field private syncAndDownload:Z

.field private trackDownloadProgress:Z

.field private translucentMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    const-class v0, Lcom/amazon/kcp/library/TransientActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/TransientActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/amazon/kcp/library/TransientActivity;->trackDownloadProgress:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/TransientActivity;Lcom/amazon/kindle/services/download/IContentDownload;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/TransientActivity;->updateState(Lcom/amazon/kindle/services/download/IContentDownload;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/library/TransientActivity;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/amazon/kcp/library/TransientActivity;->setupForDownloadingItem()V

    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/kcp/library/TransientActivity;)Landroid/widget/TextView;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadProgressText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/amazon/kcp/library/TransientActivity;)Landroid/view/ViewGroup;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/amazon/kcp/library/TransientActivity;->rootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/library/TransientActivity;)Lcom/amazon/kcp/reader/IReaderController$StartPage;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/amazon/kcp/library/TransientActivity;->startPage:Lcom/amazon/kcp/reader/IReaderController$StartPage;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/library/TransientActivity;)Lcom/amazon/kcp/library/ui/BookCoverView;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/amazon/kcp/library/TransientActivity;->coverView:Lcom/amazon/kcp/library/ui/BookCoverView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/library/TransientActivity;)Landroid/widget/TextView;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/library/TransientActivity;)Landroid/widget/TextView;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadProgressStatus:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kcp/library/TransientActivity;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItemMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/kcp/library/TransientActivity;)Lcom/amazon/android/util/DownloadProgressBarState;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadProgressBarState:Lcom/amazon/android/util/DownloadProgressBarState;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/kcp/library/TransientActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/kcp/library/TransientActivity;)Landroid/widget/TextView;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadProgressPercent:Landroid/widget/TextView;

    return-object p0
.end method

.method private cleanUpDownloadItem()V
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItemMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 446
    iput-boolean v0, p0, Lcom/amazon/kcp/library/TransientActivity;->trackDownloadProgress:Z

    const/4 v0, 0x0

    .line 447
    iput-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItemMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    :cond_0
    return-void
.end method

.method private downloadOrOpenSample()V
    .locals 5

    const/4 v0, 0x1

    .line 619
    iput-boolean v0, p0, Lcom/amazon/kcp/library/TransientActivity;->isSample:Z

    .line 620
    invoke-direct {p0}, Lcom/amazon/kcp/library/TransientActivity;->getSampleMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    .line 621
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/model/content/ContentState;->LOCAL:Lcom/amazon/kindle/model/content/ContentState;

    if-eq v2, v3, :cond_0

    .line 622
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$LIBRARY;

    const-string v2, "TransientActivity"

    invoke-direct {v0, v2}, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$LIBRARY;-><init>(Ljava/lang/String;)V

    .line 623
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/amazon/kindle/services/download/IDownloadService;->download(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    goto :goto_0

    .line 625
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getLocalBook()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/kcp/library/TransientActivity;->startPage:Lcom/amazon/kcp/reader/IReaderController$StartPage;

    sget-object v4, Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;->LOADING_ASYNC:Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;

    invoke-interface {v2, v1, v3, v4, v0}, Lcom/amazon/kcp/reader/IReaderController;->openReader(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kcp/reader/IReaderController$StartPage;Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;Z)V

    :goto_0
    return-void
.end method

.method private getSampleMetadata()Lcom/amazon/kindle/content/ContentMetadata;
    .locals 12

    .line 630
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    .line 631
    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->asin:Ljava/lang/String;

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3, v2, v3}, Lcom/amazon/kindle/content/ILibraryService;->getContentByAsin(Ljava/lang/String;ZLjava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    .line 640
    new-instance v5, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->asin:Ljava/lang/String;

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v5, v0, v1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    .line 641
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-boolean v11, p0, Lcom/amazon/kcp/library/TransientActivity;->isFalkor:Z

    const-string v6, ""

    const-string v7, ""

    invoke-interface/range {v4 .. v11}, Lcom/amazon/kindle/content/ILibraryService;->addContentMetadata(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;ZZZZ)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    .line 644
    iput-boolean v3, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadingUnownedSample:Z

    :cond_0
    return-object v0
.end method

.method public static newIntent(Landroid/content/Context;Lcom/amazon/kindle/model/content/IListableBook;)Landroid/content/Intent;
    .locals 6

    .line 722
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v1

    .line 723
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->isSample()Z

    move-result v2

    .line 724
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getTodoTypeFromBookType(Lcom/amazon/kcp/library/models/BookType;)Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 722
    invoke-static/range {v0 .. v5}, Lcom/amazon/kcp/library/TransientActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;ZZ)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static newIntent(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;ZZ)Landroid/content/Intent;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 676
    invoke-static/range {v0 .. v6}, Lcom/amazon/kcp/library/TransientActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;ZZZ)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static newIntent(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;ZZZ)Landroid/content/Intent;
    .locals 1

    .line 699
    new-instance p5, Landroid/content/Intent;

    const-class v0, Lcom/amazon/kcp/library/TransientActivity;

    invoke-direct {p5, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "DownloadingBookAsin"

    .line 700
    invoke-virtual {p5, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "DownloadingBookIsSample"

    .line 701
    invoke-virtual {p5, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 702
    :cond_0
    sget-object p0, Lcom/amazon/kcp/library/models/BookType;->BT_UNKNOWN:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_0
    const-string p0, "DownloadingDocumentType"

    invoke-virtual {p5, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "DownloadingBookFromSync"

    .line 703
    invoke-virtual {p5, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "Falkor"

    .line 704
    invoke-virtual {p5, p0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p5
.end method

.method private recordContentOpenMetrics(Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 8

    .line 650
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 652
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object v1

    .line 653
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->isSample()Z

    move-result v3

    const/4 v4, 0x1

    new-array v5, v4, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    sget-object v6, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPEN:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string/jumbo v6, "transientActivity"

    invoke-virtual {v1, v2, v3, v6, v5}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->startExperiences(Lcom/amazon/kindle/model/content/IBookID;ZLjava/lang/String;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 654
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    sget-object v3, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPEN:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v3, v2, v7

    sget-object v3, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPENABLE:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v3, v2, v4

    const-string/jumbo v3, "oneClickCorrelationID"

    invoke-virtual {v1, v3, v0, p1, v2}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->addAttributes(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    return-void
.end method

.method private setDownloadProgress(Lcom/amazon/kindle/services/download/IContentDownload;)V
    .locals 2

    .line 507
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/TransientActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/library/TransientActivity$6;-><init>(Lcom/amazon/kcp/library/TransientActivity;Lcom/amazon/kindle/services/download/IContentDownload;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setupForDownloadingItem()V
    .locals 4

    .line 452
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItemMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    if-eqz v0, :cond_1

    .line 453
    sget v0, Lcom/amazon/kindle/krl/R$id;->large_cover:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/ui/BookCoverView;

    .line 456
    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItemMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/ui/BookCoverView;->setCoverSource(Lcom/amazon/kindle/model/content/IListableBook;)V

    .line 458
    sget-object v1, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->VISIBLE_IF_DEFAULT_COVER:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    .line 459
    iget-object v2, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItemMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->isListableBookPeriodical(Lcom/amazon/kindle/model/content/IListableBook;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/amazon/kcp/library/TransientActivity;->translucentMode:Z

    if-nez v2, :cond_0

    sget-object v2, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->VISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->VISIBLE_IF_DEFAULT_COVER:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    .line 460
    :goto_0
    iget-object v3, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItemMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/amazon/kcp/library/ui/BookCoverView;->setTitle(Ljava/lang/String;Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;)V

    .line 462
    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItemMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    const/4 v3, 0x1

    invoke-static {v1, v3, p0}, Lcom/amazon/android/util/UIUtils;->getBookSubtitle(Lcom/amazon/kindle/model/content/IListableBook;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/library/ui/BookCoverView;->setAuthor(Ljava/lang/String;Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;)V

    .line 465
    sget v0, Lcom/amazon/kindle/krl/R$id;->transient_book_title:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItemMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    sget v0, Lcom/amazon/kindle/krl/R$id;->transient_book_author:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItemMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    const/4 v2, 0x0

    invoke-static {v1, v2, p0}, Lcom/amazon/android/util/UIUtils;->getBookSubtitle(Lcom/amazon/kindle/model/content/IListableBook;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItemMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/services/download/IDownloadService;->getContentDownload(Ljava/lang/String;)Lcom/amazon/kindle/services/download/IContentDownload;

    move-result-object v0

    .line 469
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/TransientActivity;->updateState(Lcom/amazon/kindle/services/download/IContentDownload;)V

    .line 471
    iput-boolean v3, p0, Lcom/amazon/kcp/library/TransientActivity;->trackDownloadProgress:Z

    :cond_1
    return-void
.end method

.method private spanIfNeeded()V
    .locals 9

    .line 562
    sget v0, Lcom/amazon/kindle/krl/R$id;->transient_screen_empty_content:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 568
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->getNonFunctionalAreas(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 569
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    :goto_0
    if-nez v1, :cond_2

    const/16 v1, 0x8

    .line 572
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 576
    :cond_2
    invoke-static {v1}, Lcom/amazon/kindle/displaymask/RectUtils;->isVertical(Landroid/graphics/Rect;)Z

    move-result v2

    .line 577
    invoke-static {v1}, Lcom/amazon/kindle/displaymask/RectUtils;->isHorizontal(Landroid/graphics/Rect;)Z

    move-result v4

    .line 579
    sget v5, Lcom/amazon/kindle/krl/R$id;->transient_screen_linear_layout:I

    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 580
    sget v6, Lcom/amazon/kindle/krl/R$id;->transient_screen_main_content:I

    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    xor-int/lit8 v7, v2, 0x1

    .line 582
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 583
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, -0x1

    invoke-direct {v5, v8, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    if-eqz v2, :cond_3

    .line 584
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v4, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v5, v3, v3, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 585
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 586
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private tryToOpenBook()V
    .locals 5

    .line 530
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->library:Lcom/amazon/kindle/content/ILibraryService;

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->asin:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/amazon/kcp/library/TransientActivity;->isSample:Z

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/content/ILibraryService;->getContentByAsin(Ljava/lang/String;ZLjava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getLocalBook()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 533
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/TransientActivity;->startPage:Lcom/amazon/kcp/reader/IReaderController$StartPage;

    sget-object v3, Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;->BLOCKING:Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/amazon/kcp/reader/IReaderController;->openReader(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kcp/reader/IReaderController$StartPage;Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;Z)V

    :cond_1
    const/4 v0, -0x1

    .line 535
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 536
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private updateState(Lcom/amazon/kindle/services/download/IContentDownload;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 477
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/TransientActivity;->setDownloadProgress(Lcom/amazon/kindle/services/download/IContentDownload;)V

    .line 478
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/TransientActivity;->updateUIState(Lcom/amazon/kindle/model/content/ContentState;)V

    .line 479
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadAccessibilityHelper:Lcom/amazon/kcp/util/DownloadAccessibilityHelper;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getPercentage()I

    move-result p1

    int-to-double v1, p1

    const/4 p1, 0x1

    invoke-virtual {v0, v1, v2, p1}, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->handleDownloadProgressUpdate(DZ)V

    :cond_0
    return-void
.end method

.method private updateUIState(Lcom/amazon/kindle/model/content/ContentState;)V
    .locals 2

    .line 484
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/TransientActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/library/TransientActivity$5;-><init>(Lcom/amazon/kcp/library/TransientActivity;Lcom/amazon/kindle/model/content/ContentState;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public handleThemeChange()V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 547
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 548
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCancelPressed(Landroid/view/View;)V
    .locals 3

    .line 595
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 598
    iget-object p1, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItemMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    if-eqz p1, :cond_0

    .line 599
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    goto :goto_1

    .line 601
    :cond_0
    new-instance p1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->asin:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/amazon/kcp/library/TransientActivity;->isSample:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    :goto_0
    invoke-direct {p1, v0, v1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    .line 604
    :goto_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/services/download/IDownloadService;->getContentDownload(Ljava/lang/String;)Lcom/amazon/kindle/services/download/IContentDownload;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 607
    sget-object v0, Lcom/amazon/kcp/library/TransientActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelling download for bookId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/services/download/IDownloadService;->cancel(Ljava/lang/String;Z)Z

    :cond_2
    const/4 p1, 0x0

    .line 611
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 612
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 553
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 554
    invoke-direct {p0}, Lcom/amazon/kcp/library/TransientActivity;->spanIfNeeded()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 270
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 273
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object p1

    .line 274
    invoke-interface {p1}, Lcom/amazon/kindle/network/INetworkService;->isWifiConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/network/INetworkService;->isWanConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/network/INetworkService;->isDataConnected()Z

    move-result p1

    if-nez p1, :cond_0

    .line 276
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 279
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/TransientActivity;->library:Lcom/amazon/kindle/content/ILibraryService;

    const/4 p1, 0x0

    .line 280
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->setActionBarVisibility(Z)V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 282
    sget v1, Lcom/amazon/kindle/krl/R$attr;->transient_download_screen_layout:I

    aput v1, v0, p1

    sget v1, Lcom/amazon/kindle/krl/R$attr;->transient_download_progress_downloading_drawable:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/amazon/kindle/krl/R$attr;->transient_download_progress_paused_drawable:I

    const/4 v3, 0x2

    aput v1, v0, v3

    sget v1, Lcom/amazon/kindle/krl/R$attr;->transient_translucent_mode_enabled:I

    const/4 v4, 0x3

    aput v1, v0, v4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 286
    invoke-virtual {v0, p1, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 287
    invoke-virtual {v0, v2, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 288
    invoke-virtual {v0, v3, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 289
    invoke-virtual {v0, v4, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 290
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 292
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/library/TransientActivity;->translucentMode:Z

    const/4 v0, 0x0

    .line 294
    invoke-static {p0, v1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->rootView:Landroid/view/ViewGroup;

    .line 295
    iget-boolean v1, p0, Lcom/amazon/kcp/library/TransientActivity;->translucentMode:Z

    if-eqz v1, :cond_1

    .line 296
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 299
    invoke-direct {p0}, Lcom/amazon/kcp/library/TransientActivity;->spanIfNeeded()V

    .line 302
    sget v0, Lcom/amazon/kindle/krl/R$id;->transient_book_download_progress_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadProgressBar:Landroid/widget/ProgressBar;

    .line 303
    sget v0, Lcom/amazon/kindle/krl/R$id;->transient_book_download_progress_text:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadProgressText:Landroid/widget/TextView;

    .line 304
    sget v0, Lcom/amazon/kindle/krl/R$id;->transient_book_download_progress_percent:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadProgressPercent:Landroid/widget/TextView;

    .line 305
    sget v0, Lcom/amazon/kindle/krl/R$id;->transient_downloading_text:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadTitle:Landroid/widget/TextView;

    .line 306
    sget v0, Lcom/amazon/kindle/krl/R$id;->transient_book_download_progress_status:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadProgressStatus:Landroid/widget/TextView;

    .line 307
    new-instance v0, Lcom/amazon/android/util/DownloadProgressBarState;

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x108006d

    invoke-direct {v0, v1, v5, v3, v4}, Lcom/amazon/android/util/DownloadProgressBarState;-><init>(Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadProgressBarState:Lcom/amazon/android/util/DownloadProgressBarState;

    .line 312
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "DownloadingBookAsin"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->asin:Ljava/lang/String;

    .line 313
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 316
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Falkor"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/library/TransientActivity;->isFalkor:Z

    .line 317
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "DownloadingBookIsSample"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/library/TransientActivity;->isSample:Z

    .line 318
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "start_page"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/IReaderController$StartPage;

    iput-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->startPage:Lcom/amazon/kcp/reader/IReaderController$StartPage;

    if-nez v0, :cond_2

    .line 320
    new-instance v0, Lcom/amazon/kcp/reader/IReaderController$StartPageDefault;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/IReaderController$StartPageDefault;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->startPage:Lcom/amazon/kcp/reader/IReaderController$StartPage;

    .line 323
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "DownloadingBookFromSync"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/library/TransientActivity;->syncAndDownload:Z

    .line 324
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "DownloadingDocumentType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_UNKNOWN:Lcom/amazon/kcp/library/models/BookType;

    if-nez v0, :cond_5

    .line 327
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->library:Lcom/amazon/kindle/content/ILibraryService;

    iget-object v3, p0, Lcom/amazon/kcp/library/TransientActivity;->asin:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/amazon/kcp/library/TransientActivity;->isSample:Z

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v4, v5, p1}, Lcom/amazon/kindle/content/ILibraryService;->getContentByAsin(Ljava/lang/String;ZLjava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 330
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    .line 331
    invoke-static {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getTodoTypeFromBookType(Lcom/amazon/kcp/library/models/BookType;)Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/TransientActivity;->documentType:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    goto :goto_1

    .line 334
    :cond_3
    sget-object p1, Lcom/amazon/kcp/library/TransientActivity;->TAG:Ljava/lang/String;

    const-string v0, "Can\'t determine type for downloading item, we can get stuck on the Transient screen, assuming a book!"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-boolean p1, p0, Lcom/amazon/kcp/library/TransientActivity;->isSample:Z

    if-eqz p1, :cond_4

    sget-object p1, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->BOOK_SAMPLE:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->BOOK:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    :goto_0
    iput-object p1, p0, Lcom/amazon/kcp/library/TransientActivity;->documentType:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    goto :goto_1

    .line 338
    :cond_5
    invoke-static {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getType(Ljava/lang/String;)Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/TransientActivity;->documentType:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    .line 339
    invoke-static {v0}, Lcom/amazon/kcp/library/models/BookType;->getBookTypeFor(Ljava/lang/String;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    .line 344
    :goto_1
    sget-object p1, Lcom/amazon/kcp/library/models/BookType;->BT_UNKNOWN:Lcom/amazon/kcp/library/models/BookType;

    if-ne v1, p1, :cond_7

    .line 345
    iget-boolean p1, p0, Lcom/amazon/kcp/library/TransientActivity;->isSample:Z

    if-eqz p1, :cond_6

    sget-object p1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    goto :goto_2

    :cond_6
    sget-object p1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    :goto_2
    move-object v1, p1

    .line 348
    :cond_7
    invoke-static {}, Lcom/amazon/android/util/RestrictionUtils;->getInstance()Lcom/amazon/android/util/RestrictionUtils;

    move-result-object p1

    invoke-virtual {p1, v1, p0}, Lcom/amazon/android/util/RestrictionUtils;->checkParentalRestriction(Lcom/amazon/kcp/library/models/BookType;Landroid/app/Activity;)V

    .line 350
    new-instance p1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->asin:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    .line 351
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 352
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItemMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    .line 355
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 357
    new-instance v0, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadTitle:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadAccessibilityHelper:Lcom/amazon/kcp/util/DownloadAccessibilityHelper;

    .line 360
    sget v0, Lcom/amazon/kindle/krl/R$id;->large_cover:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/ui/BookCoverView;

    iput-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->coverView:Lcom/amazon/kcp/library/ui/BookCoverView;

    .line 361
    invoke-virtual {v0}, Lcom/amazon/kcp/library/ui/BookCoverView;->getCover()Lcom/amazon/kcp/library/ui/Cover;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/library/ui/Cover;->setGravity(I)V

    .line 362
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->coverView:Lcom/amazon/kcp/library/ui/BookCoverView;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/ui/BookCoverView;->getCover()Lcom/amazon/kcp/library/ui/Cover;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;->NO_PAGES:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/ui/Cover;->setCoverEffects(Lcom/amazon/kcp/library/ui/Cover$CoverEffects;)V

    .line 364
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadService:Lcom/amazon/kindle/services/download/IDownloadService;

    .line 366
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItemMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    if-eqz v0, :cond_8

    .line 368
    invoke-direct {p0}, Lcom/amazon/kcp/library/TransientActivity;->setupForDownloadingItem()V

    goto :goto_3

    .line 371
    :cond_8
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->coverView:Lcom/amazon/kcp/library/ui/BookCoverView;

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->asin:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kcp/library/TransientActivity;->documentType:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-static {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getBookTypeForTodoType(Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/library/ui/BookCoverView;->setCoverSource(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    .line 377
    :goto_3
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItemMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    if-nez v0, :cond_c

    .line 378
    iget-boolean v0, p0, Lcom/amazon/kcp/library/TransientActivity;->syncAndDownload:Z

    if-eqz v0, :cond_a

    .line 379
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadService:Lcom/amazon/kindle/services/download/IDownloadService;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/services/download/IDownloadService;->getContentDownload(Ljava/lang/String;)Lcom/amazon/kindle/services/download/IContentDownload;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 381
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/TransientActivity;->updateUIState(Lcom/amazon/kindle/model/content/ContentState;)V

    goto :goto_4

    .line 382
    :cond_9
    iget-boolean p1, p0, Lcom/amazon/kcp/library/TransientActivity;->syncAndDownload:Z

    if-nez p1, :cond_c

    .line 383
    invoke-direct {p0}, Lcom/amazon/kcp/library/TransientActivity;->tryToOpenBook()V

    goto :goto_4

    .line 385
    :cond_a
    iget-boolean p1, p0, Lcom/amazon/kcp/library/TransientActivity;->isSample:Z

    if-eqz p1, :cond_b

    .line 390
    invoke-direct {p0}, Lcom/amazon/kcp/library/TransientActivity;->downloadOrOpenSample()V

    goto :goto_4

    .line 392
    :cond_b
    sget-object p1, Lcom/amazon/kcp/library/TransientActivity;->TAG:Ljava/lang/String;

    const-string v0, "Transient screen launched, but book is not in AI or for TODO. Will close transient screen"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-direct {p0}, Lcom/amazon/kcp/library/TransientActivity;->tryToOpenBook()V

    :cond_c
    :goto_4
    return-void

    .line 314
    :cond_d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Could not find valid ASIN"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 400
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 401
    invoke-direct {p0}, Lcom/amazon/kcp/library/TransientActivity;->cleanUpDownloadItem()V

    .line 402
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onDestroy()V

    return-void
.end method

.method public onDownloadProgressChanged(Lcom/amazon/kindle/services/download/IDownloadService$DownloadProgressUpdateEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItemMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/amazon/kcp/library/TransientActivity;->trackDownloadProgress:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$DownloadProgressUpdateEvent;->getDownload()Lcom/amazon/kindle/services/download/IContentDownload;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 159
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$DownloadProgressUpdateEvent;->getDownload()Lcom/amazon/kindle/services/download/IContentDownload;

    move-result-object p1

    .line 160
    new-instance v0, Lcom/amazon/kcp/library/TransientActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/library/TransientActivity$1;-><init>(Lcom/amazon/kcp/library/TransientActivity;Lcom/amazon/kindle/services/download/IContentDownload;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDownloadStateChanged(Lcom/amazon/kindle/services/download/IDownloadService$DownloadStateUpdateEvent;)V
    .locals 7
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 170
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$DownloadStateUpdateEvent;->getDownload()Lcom/amazon/kindle/services/download/IContentDownload;

    move-result-object v0

    .line 171
    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->parseForAsin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 172
    iget-object v2, p0, Lcom/amazon/kcp/library/TransientActivity;->asin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 177
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$DownloadStateUpdateEvent;->getDownloadState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v2

    .line 179
    iget-object v3, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItemMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    const/4 v4, 0x0

    if-nez v3, :cond_2

    sget-object v3, Lcom/amazon/kindle/model/content/ContentState;->QUEUED:Lcom/amazon/kindle/model/content/ContentState;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING:Lcom/amazon/kindle/model/content/ContentState;

    if-ne v2, v3, :cond_2

    .line 181
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 182
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v5

    iget-boolean v6, p0, Lcom/amazon/kcp/library/TransientActivity;->isSample:Z

    invoke-interface {v5, v1, v6, v3, v4}, Lcom/amazon/kindle/content/ILibraryService;->getContentByAsin(Ljava/lang/String;ZLjava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItemMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    if-eqz v1, :cond_2

    .line 184
    new-instance v1, Lcom/amazon/kcp/library/TransientActivity$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/TransientActivity$2;-><init>(Lcom/amazon/kcp/library/TransientActivity;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 193
    :cond_2
    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->LOCAL:Lcom/amazon/kindle/model/content/ContentState;

    const/4 v3, 0x1

    if-eq v2, v1, :cond_c

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    if-ne v2, v1, :cond_3

    goto/16 :goto_2

    .line 214
    :cond_3
    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->FAILED:Lcom/amazon/kindle/model/content/ContentState;

    if-eq v2, v1, :cond_7

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->FAILED_RETRYABLE:Lcom/amazon/kindle/model/content/ContentState;

    if-ne v2, v1, :cond_4

    goto :goto_0

    .line 263
    :cond_4
    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IContentDownload;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IContentDownload;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CDE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-eq p1, v0, :cond_6

    .line 264
    :cond_5
    invoke-direct {p0, v2}, Lcom/amazon/kcp/library/TransientActivity;->updateUIState(Lcom/amazon/kindle/model/content/ContentState;)V

    :cond_6
    return-void

    .line 215
    :cond_7
    :goto_0
    iget-boolean v0, p0, Lcom/amazon/kcp/library/TransientActivity;->syncAndDownload:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 216
    sget-object p1, Lcom/amazon/kindle/model/content/ContentState;->FAILED:Lcom/amazon/kindle/model/content/ContentState;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/TransientActivity;->updateUIState(Lcom/amazon/kindle/model/content/ContentState;)V

    .line 217
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    const-string v0, "ConnectionError"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kcp/application/IUIMessaging;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 219
    :cond_8
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$DownloadStateUpdateEvent;->getDownload()Lcom/amazon/kindle/services/download/IContentDownload;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object p1

    .line 220
    iget-boolean v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadingUnownedSample:Z

    if-eqz v0, :cond_9

    .line 225
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    .line 226
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/kcp/library/TransientActivity;->library:Lcom/amazon/kindle/content/ILibraryService;

    .line 227
    invoke-interface {v2}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 225
    invoke-interface {v0, p1, v2, v3}, Lcom/amazon/kindle/content/ILibraryService;->deleteContentMetadata(Ljava/util/Collection;Ljava/lang/String;Z)V

    .line 230
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    const-string v0, "DeeplinkingOpenError"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kcp/application/IUIMessaging;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 232
    :cond_9
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    .line 233
    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/ILibraryController;->failureDetailsForBook(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;

    move-result-object v1

    if-nez v1, :cond_a

    .line 235
    sget-object v2, Lcom/amazon/kcp/library/TransientActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Download failure reported for book: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " without details."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_a
    invoke-interface {v0, p1, v4, v1}, Lcom/amazon/kcp/library/ILibraryController;->errorIntentForFailure(Ljava/lang/String;ZLcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "IsFromStoreOrSearch"

    .line 238
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "start_transition_with_animation"

    .line 239
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 242
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/TransientActivity$4;

    invoke-direct {v1, p0, p0, p1}, Lcom/amazon/kcp/library/TransientActivity$4;-><init>(Lcom/amazon/kcp/library/TransientActivity;Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 254
    :cond_b
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 258
    :goto_1
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setResult(I)V

    .line 259
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_c
    :goto_2
    const/4 p1, -0x1

    .line 195
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 196
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 200
    iget-object p1, p0, Lcom/amazon/kcp/library/TransientActivity;->library:Lcom/amazon/kindle/content/ILibraryService;

    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->asin:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/amazon/kcp/library/TransientActivity;->isSample:Z

    invoke-interface {p1}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/amazon/kindle/content/ILibraryService;->getContentByAsin(Ljava/lang/String;ZLjava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getLocalBook()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 202
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/TransientActivity;->recordContentOpenMetrics(Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    .line 204
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/TransientActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/library/TransientActivity$3;-><init>(Lcom/amazon/kcp/library/TransientActivity;Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 210
    :cond_d
    sget-object p1, Lcom/amazon/kcp/library/TransientActivity;->TAG:Ljava/lang/String;

    const-string v0, "Transient screen got item finished event, but couldn\'t find the book in the local library"

    invoke-static {p1, v4, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;ZLjava/lang/String;)V

    :goto_3
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 413
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverCache()Lcom/amazon/kcp/cover/ICoverCacheManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/cover/ICoverCacheManager;->pauseUpdates()V

    .line 414
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 407
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onResume()V

    .line 408
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverCache()Lcom/amazon/kcp/cover/ICoverCacheManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/cover/ICoverCacheManager;->resumeUpdates()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 423
    iget-boolean v0, p0, Lcom/amazon/kcp/library/TransientActivity;->translucentMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 425
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/library/TransientActivity;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 426
    iget-object v2, p0, Lcom/amazon/kcp/library/TransientActivity;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 427
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-direct {v3, v4, v5, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 428
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 436
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method
