.class public final Lcom/amazon/kindle/recaps/util/RecapsPerfHelper;
.super Ljava/lang/Object;
.source "RecapsPerfHelper.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/recaps/util/RecapsPerfHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/amazon/kindle/recaps/util/RecapsPerfHelper;

    invoke-direct {v0}, Lcom/amazon/kindle/recaps/util/RecapsPerfHelper;-><init>()V

    sput-object v0, Lcom/amazon/kindle/recaps/util/RecapsPerfHelper;->INSTANCE:Lcom/amazon/kindle/recaps/util/RecapsPerfHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final logPerfMarker(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 19
    sget-object p2, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;->Companion:Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;

    invoke-virtual {p2}, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPerformanceMarkerFactory()Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;->createStartMarker(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->emit()V

    goto :goto_0

    .line 21
    :cond_0
    sget-object p2, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;->Companion:Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;

    invoke-virtual {p2}, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPerformanceMarkerFactory()Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;->createEndMarker(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->emit()V

    :goto_0
    return-void
.end method
