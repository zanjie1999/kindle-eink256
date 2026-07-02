.class public final Lcom/amazon/kcp/review/KfaReviewUtilsKt;
.super Ljava/lang/Object;
.source "KfaReviewUtils.kt"


# static fields
.field private static final APP_OPEN_DAYS:I = 0x1e

.field private static final MIN_APP_OPEN_COUNT:I = 0x3

.field private static final OPEN_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    const-class v0, Lcom/amazon/kcp/review/KfaReviewUtils;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(KfaReviewUtils::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/review/KfaReviewUtilsKt;->TAG:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy/MM/dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/amazon/kcp/review/KfaReviewUtilsKt;->OPEN_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kcp/review/KfaReviewUtilsKt;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final getOPEN_DATE_FORMAT()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 33
    sget-object v0, Lcom/amazon/kcp/review/KfaReviewUtilsKt;->OPEN_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-object v0
.end method
