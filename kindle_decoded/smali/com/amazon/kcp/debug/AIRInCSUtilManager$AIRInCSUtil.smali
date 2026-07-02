.class public final Lcom/amazon/kcp/debug/AIRInCSUtilManager$AIRInCSUtil;
.super Ljava/lang/Object;
.source "AIRInCSUtilManager.kt"

# interfaces
.implements Lcom/amazon/kcp/debug/IAIRInCSUtil;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/debug/AIRInCSUtilManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AIRInCSUtil"
.end annotation


# instance fields
.field private docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/amazon/kcp/debug/AIRInCSUtilManager$AIRInCSUtil;-><init>(Lcom/amazon/kindle/krx/reader/IReaderManager;Lcom/amazon/android/docviewer/KindleDocViewer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/reader/IReaderManager;Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/debug/AIRInCSUtilManager$AIRInCSUtil;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    iput-object p2, p0, Lcom/amazon/kcp/debug/AIRInCSUtilManager$AIRInCSUtil;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/kindle/krx/reader/IReaderManager;Lcom/amazon/android/docviewer/KindleDocViewer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    const-string v1, "Utils.getFactory()"

    if-eqz p4, :cond_1

    .line 31
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :cond_1
    :goto_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_3

    .line 32
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p2

    goto :goto_1

    :cond_2
    move-object p2, v0

    :cond_3
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/debug/AIRInCSUtilManager$AIRInCSUtil;-><init>(Lcom/amazon/kindle/krx/reader/IReaderManager;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    return-void
.end method


# virtual methods
.method public emitPerfMarkerForUpdateTransientHighlights(Z)V
    .locals 3

    .line 58
    invoke-virtual {p0}, Lcom/amazon/kcp/debug/AIRInCSUtilManager$AIRInCSUtil;->isAccessibilityProviderPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/amazon/kcp/debug/AIRInCSUtilManager$AIRInCSUtil;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v0, :cond_1

    .line 60
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/amazon/kcp/debug/AIRInCSUtilManager$AIRInCSUtil;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/debug/AIRInCSUtilManager$AIRInCSUtil;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_2

    .line 63
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 64
    sget-object v1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->UPDATE_TRANSIENT_HIGHLIGHTS:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const-string v2, "KindlePerformanceConstan\u2026DATE_TRANSIENT_HIGHLIGHTS"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v1, v0, p1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public isAccessibilityProviderPlaying()Z
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/amazon/kcp/debug/AIRInCSUtilManager$AIRInCSUtil;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    if-nez v0, :cond_1

    .line 38
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/amazon/kcp/debug/AIRInCSUtilManager$AIRInCSUtil;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/debug/AIRInCSUtilManager$AIRInCSUtil;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    if-eqz v0, :cond_3

    .line 41
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getAccessibilityProviders()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "it.accessibilityProviders"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v2, Lcom/amazon/kcp/debug/AIRInCSUtilManager;->INSTANCE:Lcom/amazon/kcp/debug/AIRInCSUtilManager;

    invoke-static {v2}, Lcom/amazon/kcp/debug/AIRInCSUtilManager;->access$getTAG$p(Lcom/amazon/kcp/debug/AIRInCSUtilManager;)Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Total number of providers is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/accessibility/IAccessibilityProvider;

    .line 44
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 45
    invoke-interface {v2, v3}, Lcom/amazon/kindle/krx/accessibility/IAccessibilityProvider;->isReadingBook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method
