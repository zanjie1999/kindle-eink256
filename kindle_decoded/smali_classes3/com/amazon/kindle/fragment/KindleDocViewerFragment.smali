.class public Lcom/amazon/kindle/fragment/KindleDocViewerFragment;
.super Landroidx/fragment/app/Fragment;
.source "KindleDocViewerFragment.java"

# interfaces
.implements Lcom/amazon/kindle/fragment/ReaderFragmentDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/fragment/KindleDocViewerFragment$KindleDocViewerProvider;
    }
.end annotation


# static fields
.field private static final BOOKMARK_TAG:Ljava/lang/String; = "BookmarkToggleFragment"

.field private static final BOOK_ID:Ljava/lang/String; = "BOOK_ID"

.field private static final GRADIENT_MASK_TAG:Ljava/lang/String; = "ALPHAGradientMask"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private viewParent:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/amazon/kindle/fragment/KindleDocViewerFragment;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/fragment/KindleDocViewerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/amazon/kindle/fragment/KindleDocViewerFragment;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v0, :cond_1

    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/kindle/fragment/KindleDocViewerFragment$KindleDocViewerProvider;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/fragment/KindleDocViewerFragment$KindleDocViewerProvider;

    invoke-interface {v0}, Lcom/amazon/kindle/fragment/KindleDocViewerFragment$KindleDocViewerProvider;->getKindleDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    .line 149
    iput-object v0, p0, Lcom/amazon/kindle/fragment/KindleDocViewerFragment;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    goto :goto_0

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attached activity must implement KindleDocViewerProvider."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method static shouldAddBookmarkFragment(Landroid/app/Activity;Lcom/amazon/kindle/model/content/ILocalBookItem;)Z
    .locals 2

    .line 117
    invoke-static {p1}, Lcom/amazon/kcp/reader/features/BookmarkActivityFeature;->isSupported(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    instance-of v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz v1, :cond_0

    .line 119
    check-cast p0, Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->shouldUseBookmarkFragment(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v0

    :cond_0
    return v0
.end method


# virtual methods
.method public getAnnotationManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;
    .locals 1

    .line 176
    invoke-direct {p0}, Lcom/amazon/kindle/fragment/KindleDocViewerFragment;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getKindleDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 1

    .line 183
    invoke-direct {p0}, Lcom/amazon/kindle/fragment/KindleDocViewerFragment;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 69
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 71
    invoke-direct {p0}, Lcom/amazon/kindle/fragment/KindleDocViewerFragment;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 72
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 74
    :goto_0
    iget-object v1, p0, Lcom/amazon/kindle/fragment/KindleDocViewerFragment;->viewParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, ""

    .line 76
    :goto_1
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/krx/metrics/MetricsData;

    sget-object v2, Lcom/amazon/kindle/fragment/KindleDocViewerFragment;->TAG:Ljava/lang/String;

    const-string v3, "AmazonKindle"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 77
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setMetricType(Lcom/amazon/kindle/krx/metrics/MetricType;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KDocFragNullViewParent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 78
    invoke-virtual {v1, p1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p1

    .line 76
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    return-void

    .line 84
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/amazon/android/util/BookTypeUtil;->isLavaMagazine(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 85
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/amazon/kindle/fragment/KindleDocViewerFragment;->shouldAddBookmarkFragment(Landroid/app/Activity;Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1}, Lcom/amazon/android/util/BookTypeUtil;->isLavaMagazine(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const/4 p1, 0x1

    const/4 v2, 0x1

    .line 88
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, "BookmarkToggleFragment"

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz v2, :cond_6

    if-nez p1, :cond_6

    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 91
    sget v2, Lcom/amazon/kindle/krl/R$id;->reader_page_fragment_container:I

    new-instance v3, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;

    invoke-direct {v3}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;-><init>()V

    invoke-virtual {p1, v2, v3, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 92
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 94
    invoke-static {v0}, Lcom/amazon/kindle/utils/RTLUtils;->shouldDisplayBookmarkAsRTL(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result p1

    .line 95
    iget-object v1, p0, Lcom/amazon/kindle/fragment/KindleDocViewerFragment;->viewParent:Landroid/view/ViewGroup;

    sget v2, Lcom/amazon/kindle/krl/R$id;->reader_page_fragment_container:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 96
    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 100
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, "ALPHAGradientMask"

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_7

    if-eqz v0, :cond_7

    .line 101
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFalkorEpisode()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->isSample()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 103
    sget v0, Lcom/amazon/kindle/krl/R$id;->reader_page_fragment_container:I

    new-instance v2, Lcom/amazon/kindle/fragment/DocViewerGradientMaskFragment;

    invoke-direct {v2}, Lcom/amazon/kindle/fragment/DocViewerGradientMaskFragment;-><init>()V

    invoke-virtual {p1, v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 104
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_7
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 54
    invoke-direct {p0}, Lcom/amazon/kindle/fragment/KindleDocViewerFragment;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 55
    invoke-interface {p3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 56
    :goto_0
    sget v0, Lcom/amazon/kindle/krl/R$layout;->reader_content_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/amazon/kindle/fragment/KindleDocViewerFragment;->viewParent:Landroid/view/ViewGroup;

    if-eqz p3, :cond_2

    .line 58
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 60
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 62
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/fragment/KindleDocViewerFragment;->viewParent:Landroid/view/ViewGroup;

    invoke-virtual {p1, p3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 64
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/fragment/KindleDocViewerFragment;->viewParent:Landroid/view/ViewGroup;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 132
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 134
    iget-object v0, p0, Lcom/amazon/kindle/fragment/KindleDocViewerFragment;->viewParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lcom/amazon/kindle/fragment/KindleDocViewerFragment;->viewParent:Landroid/view/ViewGroup;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 127
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method
