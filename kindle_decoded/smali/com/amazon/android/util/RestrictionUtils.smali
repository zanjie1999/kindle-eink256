.class public final Lcom/amazon/android/util/RestrictionUtils;
.super Ljava/lang/Object;
.source "RestrictionUtils.java"


# static fields
.field private static final instance:Lcom/amazon/android/util/RestrictionUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/amazon/android/util/RestrictionUtils;

    invoke-direct {v0}, Lcom/amazon/android/util/RestrictionUtils;-><init>()V

    sput-object v0, Lcom/amazon/android/util/RestrictionUtils;->instance:Lcom/amazon/android/util/RestrictionUtils;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/android/util/RestrictionUtils;Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;Landroid/app/Activity;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/android/util/RestrictionUtils;->showBlockedDialog(Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;Landroid/app/Activity;)V

    return-void
.end method

.method public static getInstance()Lcom/amazon/android/util/RestrictionUtils;
    .locals 1

    .line 33
    sget-object v0, Lcom/amazon/android/util/RestrictionUtils;->instance:Lcom/amazon/android/util/RestrictionUtils;

    return-object v0
.end method

.method private showBlockedDialog(Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;Landroid/app/Activity;)V
    .locals 0

    .line 98
    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->showBlockedDialog(Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;)V

    .line 99
    invoke-virtual {p3}, Landroid/app/Activity;->finish()V

    .line 100
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderController;->finishAllActivities()V

    return-void
.end method


# virtual methods
.method public checkParentalRestriction(Lcom/amazon/kcp/library/models/BookType;Landroid/app/Activity;)V
    .locals 4

    const-string v0, "checkParentalRestriction"

    const/4 v1, 0x1

    .line 40
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 41
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v2

    new-instance v3, Lcom/amazon/android/util/RestrictionUtils$1;

    invoke-direct {v3, p0, p1, v1, p2}, Lcom/amazon/android/util/RestrictionUtils$1;-><init>(Lcom/amazon/android/util/RestrictionUtils;Lcom/amazon/kcp/library/models/BookType;Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;Landroid/app/Activity;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 p1, 0x0

    .line 80
    invoke-static {v0, p1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method public isBookTypeBlocked(Lcom/amazon/kcp/library/models/BookType;Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;)Z
    .locals 1

    .line 91
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-interface {p2}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isBooksBlocked()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    if-ne p1, v0, :cond_2

    .line 92
    invoke-interface {p2}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isDocsBlocked()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    if-ne p1, v0, :cond_4

    .line 93
    :cond_3
    invoke-interface {p2}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isNewsstandBlocked()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
