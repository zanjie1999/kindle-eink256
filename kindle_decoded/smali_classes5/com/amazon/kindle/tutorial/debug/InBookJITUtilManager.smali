.class public final Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager;
.super Ljava/lang/Object;
.source "InBookJITUtilManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager$InBookJITUtilImpl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager;

.field private static final INSTANCE$delegate:Lkotlin/Lazy;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager;

    invoke-direct {v0}, Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager;-><init>()V

    sput-object v0, Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager;->INSTANCE:Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager;

    .line 11
    const-class v0, Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(InBookJITUtilManager::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager;->TAG:Ljava/lang/String;

    .line 13
    sget-object v0, Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager$INSTANCE$2;->INSTANCE:Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager$INSTANCE$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager;->INSTANCE$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTAG$p(Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager;)Ljava/lang/String;
    .locals 0

    .line 9
    sget-object p0, Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private final getINSTANCE()Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager$InBookJITUtilImpl;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager;->INSTANCE$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager$InBookJITUtilImpl;

    return-object v0
.end method

.method public static final getInstance()Lcom/amazon/kindle/tutorial/debug/InBookJITUtil;
    .locals 1

    .line 17
    sget-object v0, Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager;->INSTANCE:Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager;

    invoke-direct {v0}, Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager;->getINSTANCE()Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager$InBookJITUtilImpl;

    move-result-object v0

    return-object v0
.end method
