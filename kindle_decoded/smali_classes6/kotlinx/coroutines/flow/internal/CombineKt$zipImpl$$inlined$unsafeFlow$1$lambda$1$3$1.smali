.class public final Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1$3$1;
.super Ljava/lang/Object;
.source "Collect.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "TT1;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt$collect$3\n+ 2 Combine.kt\nkotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$2\n*L\n1#1,132:1\n131#2,5:133\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1$3;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1$3;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1$3$1;->this$0:Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1$3;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 133
    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1$3$1;->this$0:Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1$3;

    iget-object v1, v0, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1$3;->$scopeContext:Lkotlin/coroutines/CoroutineContext;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object v0, v0, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1$3;->$cnt:Ljava/lang/Object;

    new-instance v3, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1$3$1$1;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4, p0}, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1$3$1$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1$3$1;)V

    invoke-static {v1, v2, v0, v3, p2}, Lkotlinx/coroutines/flow/internal/ChannelFlowKt;->withContextUndispatched(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    .line 137
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
