.class public final Lcom/amazon/kindle/BaseUpgradePageKt;
.super Ljava/lang/Object;
.source "BaseUpgradePage.kt"


# static fields
.field private static final EXTRA_TIMER_START:Ljava/lang/String; = "timerStartElapsedRealtime"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    const-class v0, Lcom/amazon/kindle/BaseUpgradePage;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(BaseUpgradePage::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/BaseUpgradePageKt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kindle/BaseUpgradePageKt;->TAG:Ljava/lang/String;

    return-object v0
.end method
