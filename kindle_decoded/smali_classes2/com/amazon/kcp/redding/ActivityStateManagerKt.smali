.class public final Lcom/amazon/kcp/redding/ActivityStateManagerKt;
.super Ljava/lang/Object;
.source "ActivityStateManager.kt"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    const-class v0, Lcom/amazon/kcp/redding/ActivityStateManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(ActivityStateManager::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/redding/ActivityStateManagerKt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kcp/redding/ActivityStateManagerKt;->TAG:Ljava/lang/String;

    return-object v0
.end method
