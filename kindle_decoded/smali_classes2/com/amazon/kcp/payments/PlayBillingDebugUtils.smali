.class public final Lcom/amazon/kcp/payments/PlayBillingDebugUtils;
.super Ljava/lang/Object;
.source "PlayBillingUtilsImpl.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/payments/PlayBillingDebugUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    new-instance v0, Lcom/amazon/kcp/payments/PlayBillingDebugUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/payments/PlayBillingDebugUtils;-><init>()V

    sput-object v0, Lcom/amazon/kcp/payments/PlayBillingDebugUtils;->INSTANCE:Lcom/amazon/kcp/payments/PlayBillingDebugUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isForceIphoneStoreEnabled()Z
    .locals 1

    .line 116
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isForceIphoneStoreEnabled()Z

    move-result v0

    return v0
.end method

.method public final setForceIphoneStore(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-static {p1, p2}, Lcom/amazon/kcp/debug/DebugUtils;->setForceIphoneStore(Landroid/content/Context;Z)V

    return-void
.end method
