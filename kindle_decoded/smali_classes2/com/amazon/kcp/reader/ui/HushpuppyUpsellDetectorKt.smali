.class public final Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorKt;
.super Ljava/lang/Object;
.source "HushpuppyUpsellDetector.kt"


# static fields
.field private static final ACTIONBAR_CLASS:Ljava/lang/String; = "UpsellPlayerProvider"

.field private static final METRICS_TAG:Ljava/lang/String; = "HushpuppyUpsellDetector"

.field private static final PREFERENCES:Ljava/lang/String; = "HPUpsellSuppression"

.field private static final SEEKER_CLASS:Ljava/lang/String; = "PersistentFullPlayerDecoration"

.field private static final TAG:Ljava/lang/String;

.field private static final WEBLAB_ID:Ljava/lang/String; = "KINDLE_APP_CORE_245143"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    const-class v0, Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetector;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(HushpuppyUpsellDetector::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorKt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorKt;->TAG:Ljava/lang/String;

    return-object v0
.end method
