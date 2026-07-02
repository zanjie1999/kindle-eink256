.class public final Lcom/amazon/kcp/debug/AIRInCSUtilManager;
.super Ljava/lang/Object;
.source "AIRInCSUtilManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/debug/AIRInCSUtilManager$AIRInCSUtil;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/debug/AIRInCSUtilManager;

.field private static final INSTANCE$delegate:Lkotlin/Lazy;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/amazon/kcp/debug/AIRInCSUtilManager;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/AIRInCSUtilManager;-><init>()V

    sput-object v0, Lcom/amazon/kcp/debug/AIRInCSUtilManager;->INSTANCE:Lcom/amazon/kcp/debug/AIRInCSUtilManager;

    .line 21
    const-class v0, Lcom/amazon/kcp/debug/AIRInCSUtilManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(AIRInCSUtilManager::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/debug/AIRInCSUtilManager;->TAG:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/amazon/kcp/debug/AIRInCSUtilManager$INSTANCE$2;->INSTANCE:Lcom/amazon/kcp/debug/AIRInCSUtilManager$INSTANCE$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/debug/AIRInCSUtilManager;->INSTANCE$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTAG$p(Lcom/amazon/kcp/debug/AIRInCSUtilManager;)Ljava/lang/String;
    .locals 0

    .line 20
    sget-object p0, Lcom/amazon/kcp/debug/AIRInCSUtilManager;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private final getINSTANCE()Lcom/amazon/kcp/debug/AIRInCSUtilManager$AIRInCSUtil;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/debug/AIRInCSUtilManager;->INSTANCE$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/debug/AIRInCSUtilManager$AIRInCSUtil;

    return-object v0
.end method

.method public static final getInstance()Lcom/amazon/kcp/debug/IAIRInCSUtil;
    .locals 1

    .line 27
    sget-object v0, Lcom/amazon/kcp/debug/AIRInCSUtilManager;->INSTANCE:Lcom/amazon/kcp/debug/AIRInCSUtilManager;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/AIRInCSUtilManager;->getINSTANCE()Lcom/amazon/kcp/debug/AIRInCSUtilManager$AIRInCSUtil;

    move-result-object v0

    return-object v0
.end method
