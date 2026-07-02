.class public final Lcom/amazon/kcp/reader/ui/HPUpsellActionBarDecorationWrapper;
.super Ljava/lang/Object;
.source "HushpuppyUpsellDetector.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/IActionBarDecoration;


# instance fields
.field private final asin:Ljava/lang/String;

.field private final detector:Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorImpl;

.field private final threadPoolManager:Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

.field private final wrapped:Lcom/amazon/kindle/krx/ui/IActionBarDecoration;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorImpl;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/IActionBarDecoration;Lcom/amazon/kindle/krx/thread/IThreadPoolManager;)V
    .locals 1

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "wrapped"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "threadPoolManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/HPUpsellActionBarDecorationWrapper;->detector:Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorImpl;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/HPUpsellActionBarDecorationWrapper;->asin:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/HPUpsellActionBarDecorationWrapper;->wrapped:Lcom/amazon/kindle/krx/ui/IActionBarDecoration;

    iput-object p4, p0, Lcom/amazon/kcp/reader/ui/HPUpsellActionBarDecorationWrapper;->threadPoolManager:Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorImpl;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/IActionBarDecoration;Lcom/amazon/kindle/krx/thread/IThreadPoolManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 197
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p4

    const-string p5, "ThreadPoolManager.getInstance()"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/reader/ui/HPUpsellActionBarDecorationWrapper;-><init>(Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorImpl;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/IActionBarDecoration;Lcom/amazon/kindle/krx/thread/IThreadPoolManager;)V

    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/HPUpsellActionBarDecorationWrapper;->wrapped:Lcom/amazon/kindle/krx/ui/IActionBarDecoration;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IActionBarDecoration;->getContentDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDecoration(Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;)Lcom/amazon/kindle/krx/ui/ColorCodedView;
    .locals 1

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
