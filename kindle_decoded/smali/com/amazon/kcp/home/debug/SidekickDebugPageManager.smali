.class public final Lcom/amazon/kcp/home/debug/SidekickDebugPageManager;
.super Ljava/lang/Object;
.source "SidekickDebugPageProvider.kt"


# static fields
.field private static final INSTANCE:Lcom/amazon/android/util/LazyWith;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/android/util/LazyWith<",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;",
            "Landroid/content/Context;",
            ">;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/amazon/kcp/home/debug/SidekickDebugPageManager;

    invoke-direct {v0}, Lcom/amazon/kcp/home/debug/SidekickDebugPageManager;-><init>()V

    .line 28
    sget-object v0, Lcom/amazon/kcp/home/debug/SidekickDebugPageManager$INSTANCE$1;->INSTANCE:Lcom/amazon/kcp/home/debug/SidekickDebugPageManager$INSTANCE$1;

    invoke-static {v0}, Lcom/amazon/android/util/LazyKt;->lazyWith(Lkotlin/jvm/functions/Function1;)Lcom/amazon/android/util/LazyWith;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/home/debug/SidekickDebugPageManager;->INSTANCE:Lcom/amazon/android/util/LazyWith;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getProvider()Lcom/amazon/kindle/krx/providers/IProvider;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .line 33
    sget-object v0, Lcom/amazon/kcp/home/debug/SidekickDebugPageManager;->INSTANCE:Lcom/amazon/android/util/LazyWith;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Utils.getFactory().context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazon/android/util/LazyWith;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/providers/IProvider;

    return-object v0
.end method
