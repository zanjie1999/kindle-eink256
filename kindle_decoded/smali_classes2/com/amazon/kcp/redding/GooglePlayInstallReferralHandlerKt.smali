.class public final Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandlerKt;
.super Ljava/lang/Object;
.source "GooglePlayInstallReferralHandler.kt"


# static fields
.field private static final PLAY_REFERRAL_API_HAS_BEEN_CALLED:Ljava/lang/String; = "playReferralApiHasBeenCalled"

.field private static final PLAY_REFERRAL_METRIC_NAME:Ljava/lang/String; = "PlayStoreReferral"

.field private static final PLAY_REFERRAL_PREFIX:Ljava/lang/String; = "PlayReferral"

.field private static final PLAY_UNAVAILABLE_METRIC_NAME:Ljava/lang/String; = "PlayReferralServiceUnavailable"

.field private static final PLAY_UNSUPPORTED_METRIC_NAME:Ljava/lang/String; = "PlayReferralApiNotSupported"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    const-class v0, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(GooglePlayI\u2026erralHandler::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandlerKt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandlerKt;->TAG:Ljava/lang/String;

    return-object v0
.end method
