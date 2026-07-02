.class public final Lcom/amazon/kcp/util/ServiceUtilsManager;
.super Ljava/lang/Object;
.source "ServiceUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/util/ServiceUtilsManager;

.field private static final INSTANCE$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/amazon/kcp/util/ServiceUtilsManager;

    invoke-direct {v0}, Lcom/amazon/kcp/util/ServiceUtilsManager;-><init>()V

    sput-object v0, Lcom/amazon/kcp/util/ServiceUtilsManager;->INSTANCE:Lcom/amazon/kcp/util/ServiceUtilsManager;

    .line 34
    sget-object v0, Lcom/amazon/kcp/util/ServiceUtilsManager$INSTANCE$2;->INSTANCE:Lcom/amazon/kcp/util/ServiceUtilsManager$INSTANCE$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/util/ServiceUtilsManager;->INSTANCE$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getINSTANCE()Lcom/amazon/kcp/util/ServiceUtils;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/util/ServiceUtilsManager;->INSTANCE$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/util/ServiceUtils;

    return-object v0
.end method

.method public static final getInstance()Lcom/amazon/kcp/util/ServiceUtils;
    .locals 1

    .line 37
    sget-object v0, Lcom/amazon/kcp/util/ServiceUtilsManager;->INSTANCE:Lcom/amazon/kcp/util/ServiceUtilsManager;

    invoke-direct {v0}, Lcom/amazon/kcp/util/ServiceUtilsManager;->getINSTANCE()Lcom/amazon/kcp/util/ServiceUtils;

    move-result-object v0

    return-object v0
.end method
