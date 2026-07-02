.class public final Lcom/amazon/kcp/debug/NeutronUtilManager;
.super Ljava/lang/Object;
.source "NeutronUtilManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/debug/NeutronUtilManager$NeutronUtil;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/debug/NeutronUtilManager;

.field private static final INSTANCE$delegate:Lkotlin/Lazy;

.field private static final TAG:Ljava/lang/String;

.field private static final TREATMENT_C:Ljava/lang/String; = "C"

.field private static final TREATMENT_T1:Ljava/lang/String; = "T1"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/amazon/kcp/debug/NeutronUtilManager;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/NeutronUtilManager;-><init>()V

    sput-object v0, Lcom/amazon/kcp/debug/NeutronUtilManager;->INSTANCE:Lcom/amazon/kcp/debug/NeutronUtilManager;

    .line 16
    const-class v0, Lcom/amazon/kcp/debug/NeutronUtilManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(NeutronUtilManager::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/debug/NeutronUtilManager;->TAG:Ljava/lang/String;

    .line 20
    sget-object v0, Lcom/amazon/kcp/debug/NeutronUtilManager$INSTANCE$2;->INSTANCE:Lcom/amazon/kcp/debug/NeutronUtilManager$INSTANCE$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/debug/NeutronUtilManager;->INSTANCE$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTAG$p(Lcom/amazon/kcp/debug/NeutronUtilManager;)Ljava/lang/String;
    .locals 0

    .line 15
    sget-object p0, Lcom/amazon/kcp/debug/NeutronUtilManager;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private final getINSTANCE()Lcom/amazon/kcp/debug/NeutronUtilManager$NeutronUtil;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/debug/NeutronUtilManager;->INSTANCE$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/debug/NeutronUtilManager$NeutronUtil;

    return-object v0
.end method

.method public static final getInstance()Lcom/amazon/kcp/debug/INeutronUtil;
    .locals 1

    .line 25
    sget-object v0, Lcom/amazon/kcp/debug/NeutronUtilManager;->INSTANCE:Lcom/amazon/kcp/debug/NeutronUtilManager;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getINSTANCE()Lcom/amazon/kcp/debug/NeutronUtilManager$NeutronUtil;

    move-result-object v0

    return-object v0
.end method
