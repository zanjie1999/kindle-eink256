.class public Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;
.super Ljava/lang/Object;
.source "NonLinearFragmentStateManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private birdsEyeThumbnailScale:F

.field private currentMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private modeBeforeBirdsEye:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

.field private pageFlipThumbnailScale:F

.field private thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-class v0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->TAG:Ljava/lang/String;

    .line 620
    new-instance v0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$5;

    invoke-direct {v0}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$5;-><init>()V

    sput-object v0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 69
    iput v0, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->pageFlipThumbnailScale:F

    .line 70
    iput v0, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->birdsEyeThumbnailScale:F

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 633
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 634
    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->fromFragmentTag(Ljava/lang/String;)Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->modeBeforeBirdsEye:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    const/4 p1, 0x0

    .line 635
    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->fromFragmentTag(Ljava/lang/String;)Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 637
    iput-object p1, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->currentMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    return-void

    .line 639
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Reloading the fragment state manager from a parcel, missing current mode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$1;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/nln/IThumbnailManager;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 69
    iput v0, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->pageFlipThumbnailScale:F

    .line 70
    iput v0, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->birdsEyeThumbnailScale:F

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 75
    iput-object p1, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->currentMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    .line 76
    iput-object v0, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->modeBeforeBirdsEye:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    .line 77
    iput-object p2, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;Lcom/amazon/kindle/nln/NonLinearNavigationMode;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentTransaction;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->hideFragment(Lcom/amazon/kindle/nln/NonLinearNavigationMode;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentTransaction;)V

    return-void
.end method

.method private getThumbnailManager()Lcom/amazon/kindle/nln/IThumbnailManager;
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    if-nez v0, :cond_0

    .line 612
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 614
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getThumbnailManager()Lcom/amazon/kindle/nln/IThumbnailManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    return-object v0
.end method

.method private getTransitionViews(Lcom/amazon/kcp/reader/ReaderActivity;Landroidx/fragment/app/FragmentManager;Lcom/amazon/kindle/nln/NonLinearNavigationMode;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/reader/ReaderActivity;",
            "Landroidx/fragment/app/FragmentManager;",
            "Lcom/amazon/kindle/nln/NonLinearNavigationMode;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 264
    invoke-virtual {p3}, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_0

    .line 268
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 271
    :cond_0
    sget-object v3, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$6;->$SwitchMap$com$amazon$kindle$nln$NonLinearNavigationMode:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v3, p3

    const/4 v3, 0x2

    const/4 v5, 0x1

    if-eq p3, v5, :cond_3

    if-eq p3, v3, :cond_3

    if-eq p3, v1, :cond_1

    goto :goto_2

    .line 274
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 275
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v4

    :cond_2
    invoke-interface {v0, v5, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 281
    :cond_3
    instance-of p1, p2, Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    if-eqz p1, :cond_4

    move-object v4, p2

    check-cast v4, Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    :cond_4
    if-eqz v4, :cond_5

    :goto_1
    if-gt v2, v3, :cond_5

    .line 284
    invoke-virtual {v4, v2}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getFocusedPageView(I)Landroid/view/View;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-object v0
.end method

.method private hideFragment(Lcom/amazon/kindle/nln/NonLinearNavigationMode;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentTransaction;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    .line 348
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p3

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 351
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->getFragmentTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 353
    invoke-virtual {p3, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 356
    :cond_1
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v2, :cond_3

    .line 358
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_1

    .line 362
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    new-instance p2, Lcom/amazon/kindle/krx/metrics/MetricsData;

    const-string p3, "AmazonKindle"

    const-string v2, "NonLinearFragmentStateManager"

    invoke-direct {p2, p3, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "HideFragmentAfterActivityDestroyed"

    const-string v2, "hideFragment"

    .line 364
    invoke-virtual {p2, p3, v0, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;ILjava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p2

    sget-object p3, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 365
    invoke-virtual {p2, p3}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setMetricType(Lcom/amazon/kindle/krx/metrics/MetricType;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p2

    .line 366
    invoke-virtual {p2, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setWithAppVersion(Z)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p2

    .line 362
    invoke-virtual {p1, p2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private setMode(Lcom/amazon/kindle/nln/NonLinearNavigationMode;)V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->currentMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    if-ne v0, p1, :cond_0

    return-void

    .line 123
    :cond_0
    sget-object v1, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->BIRDSEYE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->modeBeforeBirdsEye:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    .line 124
    iput-object p1, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->currentMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    .line 126
    sget-object v0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$6;->$SwitchMap$com$amazon$kindle$nln$NonLinearNavigationMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 135
    sget-object v0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected invalid mode "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " while setting mode"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1

    .line 132
    :cond_2
    iget v0, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->pageFlipThumbnailScale:F

    goto :goto_1

    .line 128
    :cond_3
    iget v0, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->birdsEyeThumbnailScale:F

    .line 138
    :goto_1
    invoke-direct {p0}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->getThumbnailManager()Lcom/amazon/kindle/nln/IThumbnailManager;

    move-result-object v1

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 140
    invoke-interface {v1, v0}, Lcom/amazon/kindle/nln/IThumbnailManager;->setThumbnailScale(F)V

    .line 143
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/nln/NlnModeChangeEvent;

    sget-object v2, Lcom/amazon/kindle/nln/NlnModeChangeEvent$EventType;->START:Lcom/amazon/kindle/nln/NlnModeChangeEvent$EventType;

    invoke-direct {v1, p1, v2}, Lcom/amazon/kindle/nln/NlnModeChangeEvent;-><init>(Lcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/nln/NlnModeChangeEvent$EventType;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method private showBirdsEyeFragment(Lcom/amazon/kindle/krx/reader/IPosition;Ljava/util/List;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentTransaction;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/fragment/app/FragmentManager;",
            "Landroidx/fragment/app/FragmentTransaction;",
            ")V"
        }
    .end annotation

    .line 508
    sget-object v0, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->BIRDSEYE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v0}, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 511
    new-instance v0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;

    invoke-direct {v0}, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;-><init>()V

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 515
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v2, :cond_1

    .line 517
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    :cond_1
    if-nez v3, :cond_2

    return-void

    :cond_2
    const-string v4, "FRAGMENT_MANAGER"

    .line 522
    invoke-virtual {v3, v4, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 524
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    const/4 v5, 0x2

    const/4 v6, 0x0

    if-gt v1, v5, :cond_4

    .line 526
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-eqz v5, :cond_3

    .line 529
    invoke-static {v5}, Lcom/amazon/android/util/UIUtils;->getWindowRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v6

    .line 531
    :cond_3
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const-string p2, "ANIMATE_RECT"

    .line 533
    invoke-virtual {v3, p2, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 535
    iget-object p2, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->currentMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    const-string v1, "PREVIOUS_MODE"

    invoke-virtual {v3, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_5

    .line 538
    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 539
    sget p2, Lcom/amazon/kindle/krl/R$id;->reader_content_fragment_container:I

    sget-object v1, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->BIRDSEYE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v1}, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p2, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 542
    :cond_5
    sget-object p2, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-direct {p0, p2, p3, p4}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->hideFragment(Lcom/amazon/kindle/nln/NonLinearNavigationMode;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentTransaction;)V

    .line 543
    new-instance p2, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$4;

    invoke-direct {p2, p0, p3}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$4;-><init>(Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;Landroidx/fragment/app/FragmentManager;)V

    .line 551
    iget-object v1, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->currentMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    sget-object v2, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    if-ne v1, v2, :cond_6

    .line 552
    invoke-virtual {v2}, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    move-object v6, p3

    check-cast v6, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;

    .line 554
    :cond_6
    iget-object p3, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->currentMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v0, p2, v6, p1, p3}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->setupTransitionIn(Ljava/lang/Runnable;Lcom/amazon/kindle/nln/BaseNonLinearFragment;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/nln/NonLinearNavigationMode;)V

    .line 555
    invoke-virtual {p4, v0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    return-void
.end method

.method private showFullPageFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentTransaction;Z)V
    .locals 3

    .line 378
    sget-object v0, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v0}, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 380
    sget-object p1, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->TAG:Ljava/lang/String;

    const-string p2, "Can\'t show full page fragment as it doesn\'t appear to exist."

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 384
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->currentMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    sget-object v2, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    if-eq v1, v2, :cond_3

    if-nez p3, :cond_1

    goto :goto_0

    .line 388
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->getFragmentTag()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    check-cast p3, Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    if-nez p3, :cond_2

    .line 390
    sget-object p1, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->TAG:Ljava/lang/String;

    const-string p2, "Cannot get current non-linear fragment from its tag. Do not attempt showing full page fragment."

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 394
    :cond_2
    new-instance v1, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$1;-><init>(Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;Landroidx/fragment/app/FragmentManager;)V

    .line 411
    invoke-virtual {p3, v1}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->addCleanupRunnable(Ljava/lang/Runnable;)V

    .line 412
    new-instance p1, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$2;

    invoke-direct {p1, p0, p3}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$2;-><init>(Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;Lcom/amazon/kindle/nln/BaseNonLinearFragment;)V

    invoke-virtual {p3, p1}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->addCleanupRunnable(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 385
    :cond_3
    :goto_0
    sget-object p3, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-direct {p0, p3, p1, p2}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->hideFragment(Lcom/amazon/kindle/nln/NonLinearNavigationMode;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentTransaction;)V

    .line 386
    sget-object p3, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->BIRDSEYE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-direct {p0, p3, p1, p2}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->hideFragment(Lcom/amazon/kindle/nln/NonLinearNavigationMode;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentTransaction;)V

    .line 421
    :goto_1
    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    return-void
.end method

.method private showPageFlipFragment(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kindle/krx/reader/IPosition;Ljava/util/List;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentTransaction;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/reader/ReaderActivity;",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/fragment/app/FragmentManager;",
            "Landroidx/fragment/app/FragmentTransaction;",
            ")V"
        }
    .end annotation

    .line 434
    sget-object v0, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v0}, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    if-nez v0, :cond_0

    .line 437
    new-instance v0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;

    invoke-direct {v0}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;-><init>()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 441
    :goto_0
    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->addArgsForPageFlip(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kindle/nln/BaseNonLinearFragment;ZLjava/util/List;)V

    if-eqz v1, :cond_1

    .line 444
    sget p1, Lcom/amazon/kindle/krl/R$id;->reader_chrome_fragment_container:I

    sget-object p3, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {p3}, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->getFragmentTag()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p1, v0, p3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 447
    :cond_1
    sget-object p1, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-direct {p0, p1, p4, p5}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->hideFragment(Lcom/amazon/kindle/nln/NonLinearNavigationMode;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentTransaction;)V

    .line 448
    new-instance p1, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$3;

    invoke-direct {p1, p0, p4}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$3;-><init>(Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;Landroidx/fragment/app/FragmentManager;)V

    const/4 p3, 0x0

    .line 456
    iget-object v1, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->currentMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    sget-object v2, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->BIRDSEYE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    if-ne v1, v2, :cond_2

    .line 457
    invoke-virtual {v2}, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->getFragmentTag()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    check-cast p3, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;

    .line 459
    :cond_2
    iget-object p4, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->currentMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v0, p1, p3, p2, p4}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->setupTransitionIn(Ljava/lang/Runnable;Lcom/amazon/kindle/nln/BaseNonLinearFragment;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/nln/NonLinearNavigationMode;)V

    .line 460
    invoke-virtual {p5, v0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    return-void
.end method


# virtual methods
.method public addArgsForPageFlip(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kindle/nln/BaseNonLinearFragment;ZLjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/reader/ReaderActivity;",
            "Lcom/amazon/kindle/nln/BaseNonLinearFragment;",
            "Z",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 465
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 467
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "FRAGMENT_MANAGER"

    .line 472
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 474
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-gt v2, v3, :cond_4

    .line 476
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 477
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 482
    iget-object v4, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->currentMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    sget-object v5, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    if-ne v4, v5, :cond_2

    .line 483
    invoke-static {p1}, Lcom/amazon/android/util/UIUtils;->isActivityInMultiWindowedMode(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 484
    invoke-static {p1}, Lcom/amazon/kindle/nln/NlnTransitionHelper;->getFullscreenRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v4

    goto :goto_1

    .line 486
    :cond_2
    invoke-static {v3}, Lcom/amazon/android/util/UIUtils;->getWindowRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    .line 489
    :cond_3
    :goto_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const-string p1, "ANIMATE_RECT"

    .line 491
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 492
    iget-object p1, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->currentMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string p4, "PREVIOUS_MODE"

    invoke-virtual {v0, p4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_5

    .line 495
    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_5
    return-void
.end method

.method public canTransitionBack()Z
    .locals 2

    .line 299
    sget-object v0, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->BIRDSEYE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    iget-object v1, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->currentMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->currentMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    return-object v0
.end method

.method protected getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    if-nez v0, :cond_0

    .line 251
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object v0
.end method

.method protected getTransitionPosition(Lcom/amazon/android/docviewer/KindleDocViewer;Landroidx/fragment/app/FragmentManager;)Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 2

    .line 572
    sget-object v0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$6;->$SwitchMap$com$amazon$kindle$nln$NonLinearNavigationMode:[I

    iget-object v1, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->currentMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 580
    iget-object v0, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->currentMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v0}, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    if-nez p2, :cond_0

    .line 582
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPositionObject()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    return-object p1

    .line 584
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getFocusedPage()Lcom/amazon/kindle/nln/IThumbnailPage;

    move-result-object v0

    .line 585
    invoke-virtual {p2}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getCurrentPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 586
    invoke-virtual {p2}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getCurrentPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPositionObject()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    :goto_0
    if-eqz v0, :cond_3

    .line 587
    invoke-interface {v0}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    goto :goto_1

    .line 574
    :cond_2
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPositionObject()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    :cond_3
    :goto_1
    return-object p1
.end method

.method public onNlnThumbnailScaleEvent(Lcom/amazon/kindle/nln/NonLinearThumbnailScaleEvent;)V
    .locals 5
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 83
    sget-object v0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$6;->$SwitchMap$com$amazon$kindle$nln$NonLinearNavigationMode:[I

    iget-object v1, p1, Lcom/amazon/kindle/nln/NonLinearThumbnailScaleEvent;->mode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const v1, 0x33d6bf95    # 1.0E-7f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    .line 94
    sget-object v0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detected invalid event mode "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/amazon/kindle/nln/NonLinearThumbnailScaleEvent;->mode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " on non linear thumbnail scale event "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_2

    .line 90
    :cond_0
    iget v0, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->pageFlipThumbnailScale:F

    iget v4, p1, Lcom/amazon/kindle/nln/NonLinearThumbnailScaleEvent;->scale:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 91
    :goto_0
    iget v1, p1, Lcom/amazon/kindle/nln/NonLinearThumbnailScaleEvent;->scale:F

    iput v1, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->pageFlipThumbnailScale:F

    goto :goto_2

    .line 85
    :cond_2
    iget v0, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->birdsEyeThumbnailScale:F

    iget v4, p1, Lcom/amazon/kindle/nln/NonLinearThumbnailScaleEvent;->scale:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 86
    :goto_1
    iget v1, p1, Lcom/amazon/kindle/nln/NonLinearThumbnailScaleEvent;->scale:F

    iput v1, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->birdsEyeThumbnailScale:F

    .line 97
    :goto_2
    iget-object v1, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->currentMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    iget-object v4, p1, Lcom/amazon/kindle/nln/NonLinearThumbnailScaleEvent;->mode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    if-ne v1, v4, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    and-int/2addr v0, v2

    .line 98
    invoke-direct {p0}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->getThumbnailManager()Lcom/amazon/kindle/nln/IThumbnailManager;

    move-result-object v1

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 99
    invoke-interface {v1}, Lcom/amazon/kindle/nln/IThumbnailManager;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 100
    iget p1, p1, Lcom/amazon/kindle/nln/NonLinearThumbnailScaleEvent;->scale:F

    invoke-interface {v1, p1}, Lcom/amazon/kindle/nln/IThumbnailManager;->setThumbnailScale(F)V

    :cond_5
    return-void
.end method

.method public onThumbnailManagerReadyEvent(Lcom/amazon/android/docviewer/BaseKindleDocViewer$ThumbnailManagerReadyEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    if-nez v0, :cond_1

    .line 107
    iget v0, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->birdsEyeThumbnailScale:F

    .line 109
    iget-object v1, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->currentMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    sget-object v2, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    if-ne v1, v2, :cond_0

    .line 110
    iget v0, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->pageFlipThumbnailScale:F

    .line 113
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer$ThumbnailManagerReadyEvent;->getThumbnailManager()Lcom/amazon/kindle/nln/IThumbnailManager;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/amazon/kindle/nln/IThumbnailManager;->setThumbnailScale(F)V

    :cond_1
    return-void
.end method

.method public transitionBack(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 3

    .line 308
    iget-object v0, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->modeBeforeBirdsEye:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    .line 309
    invoke-virtual {p0}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->canTransitionBack()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    sget-object v1, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->BIRDSEYE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    sget-object p1, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->TAG:Ljava/lang/String;

    const-string v0, "Yo dog, you can\'t go back from Birdseye to Birdseye."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iput-object v2, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->modeBeforeBirdsEye:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    return-void

    .line 320
    :cond_1
    iput-object v2, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->modeBeforeBirdsEye:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    .line 321
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->showNLNContentFragment(Lcom/amazon/kindle/nln/NonLinearNavigationMode;)V

    return-void

    .line 310
    :cond_2
    :goto_0
    iput-object v2, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->modeBeforeBirdsEye:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    return-void
.end method

.method public transitionToBirdsEye(Lcom/amazon/kcp/reader/ReaderActivity;Landroidx/fragment/app/FragmentTransaction;)Z
    .locals 5

    .line 220
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->NLN_FRAGMENT_BEV_SHOW:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Z)V

    .line 222
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 227
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 228
    iget-object v3, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->currentMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    sget-object v4, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->BIRDSEYE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    if-ne v3, v4, :cond_1

    .line 230
    sget-object p1, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-direct {p0, p1, v2, p2}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->hideFragment(Lcom/amazon/kindle/nln/NonLinearNavigationMode;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentTransaction;)V

    .line 231
    sget-object p1, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-direct {p0, p1, v2, p2}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->hideFragment(Lcom/amazon/kindle/nln/NonLinearNavigationMode;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentTransaction;)V

    return v1

    .line 235
    :cond_1
    invoke-direct {p0, p1, v2, v3}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->getTransitionViews(Lcom/amazon/kcp/reader/ReaderActivity;Landroidx/fragment/app/FragmentManager;Lcom/amazon/kindle/nln/NonLinearNavigationMode;)Ljava/util/List;

    move-result-object p1

    .line 236
    invoke-virtual {p0, v0, v2}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->getTransitionPosition(Lcom/amazon/android/docviewer/KindleDocViewer;Landroidx/fragment/app/FragmentManager;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    .line 237
    invoke-direct {p0, v0, p1, v2, p2}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->showBirdsEyeFragment(Lcom/amazon/kindle/krx/reader/IPosition;Ljava/util/List;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentTransaction;)V

    .line 238
    sget-object p1, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->BIRDSEYE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->setMode(Lcom/amazon/kindle/nln/NonLinearNavigationMode;)V

    return v1
.end method

.method public transitionToFullPage(Lcom/amazon/kcp/reader/ReaderActivity;Landroidx/fragment/app/FragmentTransaction;Z)Z
    .locals 0

    .line 175
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 176
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->showFullPageFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentTransaction;Z)V

    .line 177
    sget-object p1, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->setMode(Lcom/amazon/kindle/nln/NonLinearNavigationMode;)V

    const/4 p1, 0x1

    return p1
.end method

.method public transitionToPageFlip(Lcom/amazon/kcp/reader/ReaderActivity;Landroidx/fragment/app/FragmentTransaction;)Z
    .locals 8

    .line 189
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->NLN_FRAGMENT_PFV_SHOW:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Z)V

    .line 191
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 196
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    .line 197
    iget-object v2, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->currentMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    sget-object v3, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    if-ne v2, v3, :cond_1

    .line 199
    sget-object p1, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-direct {p0, p1, v6, p2}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->hideFragment(Lcom/amazon/kindle/nln/NonLinearNavigationMode;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentTransaction;)V

    .line 200
    sget-object p1, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->BIRDSEYE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-direct {p0, p1, v6, p2}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->hideFragment(Lcom/amazon/kindle/nln/NonLinearNavigationMode;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentTransaction;)V

    return v1

    .line 204
    :cond_1
    invoke-direct {p0, p1, v6, v2}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->getTransitionViews(Lcom/amazon/kcp/reader/ReaderActivity;Landroidx/fragment/app/FragmentManager;Lcom/amazon/kindle/nln/NonLinearNavigationMode;)Ljava/util/List;

    move-result-object v5

    .line 205
    invoke-virtual {p0, v0, v6}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->getTransitionPosition(Lcom/amazon/android/docviewer/KindleDocViewer;Landroidx/fragment/app/FragmentManager;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    .line 206
    invoke-direct/range {v2 .. v7}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->showPageFlipFragment(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kindle/krx/reader/IPosition;Ljava/util/List;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentTransaction;)V

    .line 207
    sget-object p1, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->setMode(Lcom/amazon/kindle/nln/NonLinearNavigationMode;)V

    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    .line 599
    iget-object v0, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->currentMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v0}, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 601
    iget-object v0, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->modeBeforeBirdsEye:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 603
    invoke-virtual {v0}, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    .line 606
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
