.class public final Lcom/amazon/kcp/application/DeeplinkSonarUtilsKt;
.super Ljava/lang/Object;
.source "DeeplinkSonarUtils.kt"


# static fields
.field private static final SONAR_DEEPLINK_PARAM_KEY:Ljava/lang/String; = "U"

.field private static final SONAR_NODE:Ljava/lang/String; = "r.html"

.field private static final SONAR_NODE_INDEX:I = 0x1

.field private static final SONAR_PATH_PREFIX:Ljava/lang/String; = "gp"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    const-class v0, Lcom/amazon/kcp/application/DeeplinkSonarUtils;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(DeeplinkSonarUtils::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/DeeplinkSonarUtilsKt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kcp/application/DeeplinkSonarUtilsKt;->TAG:Ljava/lang/String;

    return-object v0
.end method
