.class public final Lcom/amazon/kcp/debug/ScopedStorageUtilsManager;
.super Ljava/lang/Object;
.source "ScopedStorageUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/debug/ScopedStorageUtilsManager;

.field private static final INSTANCE$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 222
    new-instance v0, Lcom/amazon/kcp/debug/ScopedStorageUtilsManager;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/ScopedStorageUtilsManager;-><init>()V

    sput-object v0, Lcom/amazon/kcp/debug/ScopedStorageUtilsManager;->INSTANCE:Lcom/amazon/kcp/debug/ScopedStorageUtilsManager;

    .line 228
    sget-object v0, Lcom/amazon/kcp/debug/ScopedStorageUtilsManager$INSTANCE$2;->INSTANCE:Lcom/amazon/kcp/debug/ScopedStorageUtilsManager$INSTANCE$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/debug/ScopedStorageUtilsManager;->INSTANCE$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getINSTANCE()Lcom/amazon/kcp/debug/ScopedStorageUtils;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/debug/ScopedStorageUtilsManager;->INSTANCE$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/debug/ScopedStorageUtils;

    return-object v0
.end method

.method public static final getInstance()Lcom/amazon/kcp/debug/ScopedStorageUtils;
    .locals 1

    .line 231
    sget-object v0, Lcom/amazon/kcp/debug/ScopedStorageUtilsManager;->INSTANCE:Lcom/amazon/kcp/debug/ScopedStorageUtilsManager;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/ScopedStorageUtilsManager;->getINSTANCE()Lcom/amazon/kcp/debug/ScopedStorageUtils;

    move-result-object v0

    return-object v0
.end method
