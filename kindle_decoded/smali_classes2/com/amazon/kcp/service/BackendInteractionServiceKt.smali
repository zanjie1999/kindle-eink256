.class public final Lcom/amazon/kcp/service/BackendInteractionServiceKt;
.super Ljava/lang/Object;
.source "BackendInteractionService.kt"


# static fields
.field private static final NOTIFICATION_ID:I = 0xddba11

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    const-class v0, Lcom/amazon/kcp/service/BackendInteractionService;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(BackendInte\u2026ctionService::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/service/BackendInteractionServiceKt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kcp/service/BackendInteractionServiceKt;->TAG:Ljava/lang/String;

    return-object v0
.end method
