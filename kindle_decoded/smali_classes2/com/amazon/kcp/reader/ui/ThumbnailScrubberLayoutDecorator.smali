.class public Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator;
.super Ljava/lang/Object;
.source "ThumbnailScrubberLayoutDecorator.java"

# interfaces
.implements Lcom/amazon/kcp/reader/ui/IBookLayoutDecorator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator$SingletonHolder;
    }
.end annotation


# static fields
.field private static final NUMBER_OF_MILLIS_IN_DAY:J = 0x5265c00L

.field private static final THUMBNAIL_SCRUBBER_DECORATOR_ID:Ljava/lang/String; = "thumbnailScrubber"


# instance fields
.field private registered:Z

.field private thumbnailScrubberContainer:Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator;->registered:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator$1;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator;-><init>()V

    return-void
.end method

.method private getNumberOfDays(JLandroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/32 v0, 0x5265c00

    .line 206
    div-long/2addr p1, v0

    long-to-int p2, p1

    const/4 p1, 0x1

    if-ge p2, p1, :cond_0

    .line 208
    sget p1, Lcom/amazon/kindle/krl/R$string;->trial_expires_1_day:I

    invoke-virtual {p3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 210
    :cond_0
    sget v0, Lcom/amazon/kindle/krl/R$string;->trial_expires_n_days:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static instance()Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator;
    .locals 1

    .line 51
    invoke-static {}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator$SingletonHolder;->access$100()Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator;

    move-result-object v0

    return-object v0
.end method

.method private static isBookPurchasingBlocked()Z
    .locals 1

    .line 166
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 170
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object v0

    .line 172
    invoke-interface {v0}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isBookPurchaseBlocked()Z

    move-result v0

    return v0
.end method

.method private shutdownScrubber()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator;->thumbnailScrubberContainer:Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator;->thumbnailScrubberContainer:Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->releaseScrubber()V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator;->thumbnailScrubberContainer:Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->shutdownScrubber()V

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator;->thumbnailScrubberContainer:Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;

    :cond_1
    return-void
.end method

.method private updateExpirationMessage(Landroid/view/View;Lcom/amazon/kindle/model/content/ILocalBookItem;Landroid/widget/TextView;Landroid/widget/Button;)Z
    .locals 5

    .line 177
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getExpirationDate()J

    move-result-wide v0

    .line 178
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getExpirationOffset()J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 181
    invoke-virtual {p4}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator;->getNumberOfDays(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 184
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/amazon/kindle/krl/R$bool;->enable_trial_buy_in_store_button:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator;->isBookPurchasingBlocked()Z

    move-result p1

    if-nez p1, :cond_0

    .line 187
    new-instance p1, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator$1;

    invoke-direct {p1, p0, p2, p4}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator$1;-><init>(Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator;Lcom/amazon/kindle/model/content/ILocalBookItem;Landroid/widget/Button;)V

    .line 195
    invoke-virtual {p4, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 197
    invoke-virtual {p4, p1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public configureFreeTrialBar(Landroid/view/View;Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 4

    .line 153
    sget v0, Lcom/amazon/kindle/krl/R$id;->trial_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 154
    sget v1, Lcom/amazon/kindle/krl/R$id;->trial_store_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 157
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getOwnershipType()Lcom/amazon/kindle/model/content/ContentOwnershipType;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/model/content/ContentOwnershipType;->FreeTrial:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    if-ne v2, v3, :cond_0

    .line 158
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator;->updateExpirationMessage(Landroid/view/View;Lcom/amazon/kindle/model/content/ILocalBookItem;Landroid/widget/TextView;Landroid/widget/Button;)Z

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    const/16 p2, 0x8

    .line 161
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public getAdditionalView(Lcom/amazon/kcp/reader/ui/IBookLayoutDecorator$LayoutAnchor;Landroid/view/ViewGroup;Lcom/amazon/kindle/model/content/ILocalBookItem;)Landroid/view/View;
    .locals 4

    .line 73
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator;->thumbnailScrubberContainer:Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->releaseScrubber()V

    .line 77
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 82
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 86
    :cond_1
    sget-object p1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->ThumbnailScrubber:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-interface {p3, p1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 87
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result p1

    if-nez p1, :cond_2

    .line 88
    move-object p1, p2

    check-cast p1, Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 89
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 90
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 91
    sget v2, Lcom/amazon/kindle/krl/R$layout;->trial_bar_and_scrubber:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 92
    sget v1, Lcom/amazon/kindle/krl/R$id;->trial_bar_wrapper:I

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator;->configureFreeTrialBar(Landroid/view/View;Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    .line 93
    sget p3, Lcom/amazon/kindle/krl/R$id;->thumbnail_scrubber:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;

    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator;->thumbnailScrubberContainer:Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;

    .line 94
    invoke-virtual {p3, v0, p1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->resetScrubber(Landroid/content/Context;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    .line 98
    sget p1, Lcom/amazon/kindle/krl/R$id;->location_seeker_decorator_priority:I

    const p3, 0x7fffffff

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 99
    sget p1, Lcom/amazon/kindle/krl/R$id;->location_seeker_decorator_id:I

    const-string p3, "thumbnailScrubber"

    invoke-virtual {p2, p1, p3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    return-object p2

    :cond_2
    return-object v0
.end method

.method public onActivityLifecycleEvent(Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 137
    sget-object v0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;->PAUSE:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;->getActivityLifecycleType()Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    move-result-object p1

    if-ne v0, p1, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator;->shutdownScrubber()V

    :cond_0
    return-void
.end method

.method public onPageLabelPopulatedEvent(Lcom/amazon/android/docviewer/BaseKindleDocViewer$PageLabelReadyEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 111
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    .line 112
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v1

    .line 114
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer$ReadyEvent;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-ne v0, p1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 120
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 121
    invoke-virtual {p1, v0, v0, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    :cond_1
    :goto_0
    return-void
.end method

.method public onTocLoadedEvent(Lcom/amazon/android/docviewer/BaseKindleDocViewer$TocReadyEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 127
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator;->thumbnailScrubberContainer:Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->getCurrentPageLabelAndIndex()Lcom/amazon/kcp/reader/ui/PageLabelAndIndex;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator;->thumbnailScrubberContainer:Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/PageLabelAndIndex;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/PageLabelAndIndex;->getIndex()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->updateChapterTooltipText(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator;->registered:Z

    if-nez v0, :cond_0

    sget v0, Lcom/amazon/kcp/reader/features/ReaderFeatures;->PDF_THUMBNAIL_SCRUBBER:I

    invoke-static {v0}, Lcom/amazon/kcp/reader/features/ReaderFeatures;->isFeatureSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/BookLayoutFactory;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/reader/ui/BookLayoutFactory;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/amazon/kcp/reader/ui/BookLayoutFactory;->addDecorator(Lcom/amazon/kcp/reader/ui/IBookLayoutDecorator;)V

    .line 57
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    .line 58
    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator;->registered:Z

    :cond_0
    return-void
.end method
