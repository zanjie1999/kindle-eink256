.class public final Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorManager;
.super Ljava/lang/Object;
.source "HushpuppyUpsellDetector.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorManager;

.field private static final INSTANCE$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorManager;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorManager;-><init>()V

    sput-object v0, Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorManager;->INSTANCE:Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorManager;

    .line 54
    sget-object v0, Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorManager$INSTANCE$2;->INSTANCE:Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorManager$INSTANCE$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorManager;->INSTANCE$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getINSTANCE()Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorImpl;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorManager;->INSTANCE$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorImpl;

    return-object v0
.end method

.method public static final getInstance()Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetector;
    .locals 1

    .line 64
    sget-object v0, Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorManager;->INSTANCE:Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorManager;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorManager;->getINSTANCE()Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorImpl;

    move-result-object v0

    return-object v0
.end method
