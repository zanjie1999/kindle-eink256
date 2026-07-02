.class public Lcom/amazon/kcp/util/DownloadAccessibilityHelper;
.super Ljava/lang/Object;
.source "DownloadAccessibilityHelper.java"


# static fields
.field private static final MIN_ANNOUNCEMENT_INTERVAL:J = 0x1388L

.field private static final MIN_FIRST_ANNOUNCEMENT_DELAY:J = 0x3e8L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private firstAnnouncementPending:Z

.field private prevAnnouncementProgress:D

.field private prevAnnouncementTime:J

.field private final view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 21
    iput-wide v0, p0, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->prevAnnouncementTime:J

    .line 26
    iput-object p1, p0, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->view:Landroid/view/View;

    return-void
.end method

.method private varargs announceForAccessibility(ZI[Ljava/lang/Object;)V
    .locals 1

    .line 121
    invoke-direct {p0}, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->hasAccessibilityFocus()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 124
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccessibilitySpeaker()Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->view:Landroid/view/View;

    .line 125
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->view:Landroid/view/View;

    .line 124
    invoke-virtual {p1, p2, p3}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->speakViaTalkback(Ljava/lang/CharSequence;Landroid/view/View;)V

    return-void
.end method

.method private static createAccessibilityNodeInfo(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1

    .line 161
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    .line 163
    invoke-virtual {v0, p0}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->createAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p0

    return-object p0

    .line 167
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 168
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 171
    :catch_0
    sget-object p0, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->TAG:Ljava/lang/String;

    const-string v0, "Failed to get AcessibilityInfo when setting up view"

    invoke-static {p0, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getLibraryDisplayItemState(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Lcom/amazon/kindle/model/content/ContentState;
    .locals 1

    if-eqz p1, :cond_1

    .line 179
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private hasAccessibilityFocus()Z
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->view:Landroid/view/View;

    invoke-static {v0}, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->isAccessibilityFocused(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->view:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 133
    invoke-static {v0}, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->isAccessibilityFocused(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static isAccessibilityFocused(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 144
    :cond_0
    invoke-static {p0}, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->createAccessibilityNodeInfo(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 150
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isAccessibilityFocused()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 153
    throw v0
.end method

.method private static isTalkBackEnabled()Z
    .locals 1

    .line 109
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isScreenReaderEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public handleDownloadProgressUpdate(D)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->handleDownloadProgressUpdate(DZ)V

    return-void
.end method

.method public handleDownloadProgressUpdate(DZ)V
    .locals 9

    .line 64
    invoke-static {}, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->isTalkBackEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->hasAccessibilityFocus()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->prevAnnouncementTime:J

    .line 70
    iput-wide p1, p0, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->prevAnnouncementProgress:D

    .line 71
    iput-boolean v1, p0, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->firstAnnouncementPending:Z

    return-void

    .line 80
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 81
    iget-wide v4, p0, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->prevAnnouncementTime:J

    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    cmp-long v8, v4, v6

    if-ltz v8, :cond_5

    cmp-long v6, v2, v4

    if-lez v6, :cond_5

    iget-wide v6, p0, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->prevAnnouncementProgress:D

    cmpl-double v8, p1, v6

    if-ltz v8, :cond_5

    sub-long v4, v2, v4

    .line 85
    iget-boolean v6, p0, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->firstAnnouncementPending:Z

    if-eqz v6, :cond_2

    const-wide/16 v6, 0x3e8

    cmp-long v8, v4, v6

    if-gtz v8, :cond_3

    :cond_2
    const-wide/16 v6, 0x1388

    cmp-long v8, v4, v6

    if-lez v8, :cond_6

    .line 89
    :cond_3
    iget-wide v6, p0, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->prevAnnouncementProgress:D

    sub-double v6, p1, v6

    long-to-double v4, v4

    div-double/2addr v6, v4

    const-wide/16 v4, 0x0

    cmpl-double v8, v6, v4

    if-lez v8, :cond_4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    sub-double/2addr v4, p1

    div-double/2addr v4, v6

    goto :goto_0

    :cond_4
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_0
    const-wide v6, 0x40b3880000000000L    # 5000.0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_6

    .line 95
    sget v4, Lcom/amazon/kindle/krl/R$string;->speak_book_download_progress:I

    new-array v0, v0, [Ljava/lang/Object;

    double-to-int v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v1

    invoke-direct {p0, p3, v4, v0}, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->announceForAccessibility(ZI[Ljava/lang/Object;)V

    .line 96
    iput-wide v2, p0, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->prevAnnouncementTime:J

    .line 97
    iput-wide p1, p0, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->prevAnnouncementProgress:D

    .line 98
    iput-boolean v1, p0, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->firstAnnouncementPending:Z

    goto :goto_1

    .line 102
    :cond_5
    iput-wide v2, p0, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->prevAnnouncementTime:J

    .line 103
    iput-wide p1, p0, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->prevAnnouncementProgress:D

    .line 104
    iput-boolean v0, p0, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->firstAnnouncementPending:Z

    :cond_6
    :goto_1
    return-void
.end method

.method public handleUpdate(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/library/ILibraryDisplayItem;)V
    .locals 2

    .line 30
    invoke-static {}, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->isTalkBackEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 34
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->getLibraryDisplayItemState(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Lcom/amazon/kindle/model/content/ContentState;

    move-result-object p1

    .line 35
    invoke-direct {p0, p2}, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->getLibraryDisplayItemState(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Lcom/amazon/kindle/model/content/ContentState;

    move-result-object p2

    .line 37
    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING:Lcom/amazon/kindle/model/content/ContentState;

    if-eq p2, v0, :cond_1

    const-wide/16 v0, -0x1

    .line 38
    iput-wide v0, p0, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->prevAnnouncementTime:J

    .line 41
    :cond_1
    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING:Lcom/amazon/kindle/model/content/ContentState;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    if-ne p1, v0, :cond_3

    :cond_2
    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->LOCAL:Lcom/amazon/kindle/model/content/ContentState;

    if-ne p2, v0, :cond_3

    .line 43
    sget p1, Lcom/amazon/kindle/krl/R$string;->speak_book_download_complete:I

    new-array p2, v1, [Ljava/lang/Object;

    invoke-direct {p0, v1, p1, p2}, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->announceForAccessibility(ZI[Ljava/lang/Object;)V

    goto :goto_0

    .line 44
    :cond_3
    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->QUEUED:Lcom/amazon/kindle/model/content/ContentState;

    if-eq p1, v0, :cond_4

    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING:Lcom/amazon/kindle/model/content/ContentState;

    if-eq p1, v0, :cond_4

    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    if-ne p1, v0, :cond_6

    :cond_4
    sget-object p1, Lcom/amazon/kindle/model/content/ContentState;->FAILED:Lcom/amazon/kindle/model/content/ContentState;

    if-eq p2, p1, :cond_5

    sget-object p1, Lcom/amazon/kindle/model/content/ContentState;->FAILED_RETRYABLE:Lcom/amazon/kindle/model/content/ContentState;

    if-ne p2, p1, :cond_6

    :cond_5
    const/4 p1, 0x1

    .line 46
    sget p2, Lcom/amazon/kindle/krl/R$string;->download_failed:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->announceForAccessibility(ZI[Ljava/lang/Object;)V

    :cond_6
    :goto_0
    return-void
.end method
