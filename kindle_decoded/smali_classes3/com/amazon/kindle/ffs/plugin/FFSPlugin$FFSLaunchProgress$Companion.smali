.class public final Lcom/amazon/kindle/ffs/plugin/FFSPlugin$FFSLaunchProgress$Companion;
.super Ljava/lang/Object;
.source "FFSPlugin.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/ffs/plugin/FFSPlugin$FFSLaunchProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$FFSLaunchProgress$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final completed()Lcom/amazon/kindle/ffs/plugin/FFSPlugin$FFSLaunchProgress;
    .locals 4

    .line 150
    new-instance v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$FFSLaunchProgress;

    sget-object v1, Lcom/amazon/kindle/ffs/utils/BlockingPromise;->Companion:Lcom/amazon/kindle/ffs/utils/BlockingPromise$Companion;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/ffs/utils/BlockingPromise$Companion;->completed(Ljava/lang/Object;)Lcom/amazon/kindle/ffs/utils/BlockingPromise;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/ffs/utils/BlockingPromise;->Companion:Lcom/amazon/kindle/ffs/utils/BlockingPromise$Companion;

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/ffs/utils/BlockingPromise$Companion;->completed(Ljava/lang/Object;)Lcom/amazon/kindle/ffs/utils/BlockingPromise;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$FFSLaunchProgress;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;)V

    return-object v0
.end method
