.class public final Lcom/amazon/android/util/ReviewUtilsManager;
.super Ljava/lang/Object;
.source "ReviewUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/android/util/ReviewUtilsManager;

.field private static final INSTANCE$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/amazon/android/util/ReviewUtilsManager;

    invoke-direct {v0}, Lcom/amazon/android/util/ReviewUtilsManager;-><init>()V

    sput-object v0, Lcom/amazon/android/util/ReviewUtilsManager;->INSTANCE:Lcom/amazon/android/util/ReviewUtilsManager;

    .line 16
    sget-object v0, Lcom/amazon/android/util/ReviewUtilsManager$INSTANCE$2;->INSTANCE:Lcom/amazon/android/util/ReviewUtilsManager$INSTANCE$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/util/ReviewUtilsManager;->INSTANCE$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getINSTANCE()Lcom/amazon/android/util/ReviewUtils;
    .locals 1

    sget-object v0, Lcom/amazon/android/util/ReviewUtilsManager;->INSTANCE$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/util/ReviewUtils;

    return-object v0
.end method

.method public static final getReviewUtils()Lcom/amazon/android/util/ReviewUtils;
    .locals 2

    .line 24
    sget-object v0, Lcom/amazon/android/util/ReviewUtilsManager;->INSTANCE:Lcom/amazon/android/util/ReviewUtilsManager;

    invoke-direct {v0}, Lcom/amazon/android/util/ReviewUtilsManager;->getINSTANCE()Lcom/amazon/android/util/ReviewUtils;

    move-result-object v0

    const-string v1, "INSTANCE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
