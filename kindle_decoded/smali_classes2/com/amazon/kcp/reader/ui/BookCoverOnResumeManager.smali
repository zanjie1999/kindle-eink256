.class public final Lcom/amazon/kcp/reader/ui/BookCoverOnResumeManager;
.super Ljava/lang/Object;
.source "BookCoverOnResumeManager.kt"


# static fields
.field private static final INSTANCE:Lcom/amazon/kcp/reader/ui/BookCoverOnResumeImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeManager;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeManager;-><init>()V

    .line 28
    new-instance v0, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeImpl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeImpl;-><init>(Lcom/amazon/kindle/persistence/AndroidSharedPreferences;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeManager;->INSTANCE:Lcom/amazon/kcp/reader/ui/BookCoverOnResumeImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/amazon/kcp/reader/ui/BookCoverOnResume;
    .locals 1

    .line 31
    sget-object v0, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeManager;->INSTANCE:Lcom/amazon/kcp/reader/ui/BookCoverOnResumeImpl;

    return-object v0
.end method

.method public static final initialize()V
    .locals 2

    .line 35
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeManager;->INSTANCE:Lcom/amazon/kcp/reader/ui/BookCoverOnResumeImpl;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method
