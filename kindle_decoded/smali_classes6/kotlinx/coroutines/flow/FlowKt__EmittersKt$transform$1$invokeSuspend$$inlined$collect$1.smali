.class public final Lkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1;
.super Ljava/lang/Object;
.source "Collect.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt$collect$3\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1\n*L\n1#1,132:1\n42#2:133\n*E\n"
.end annotation


# instance fields
.field final synthetic $this_flow$inlined:Lkotlinx/coroutines/flow/FlowCollector;

.field final synthetic this$0:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1;Lkotlinx/coroutines/flow/FlowCollector;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1;->this$0:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1;->$this_flow$inlined:Lkotlinx/coroutines/flow/FlowCollector;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 133
    iget-object v0, p0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1;->this$0:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1;

    iget-object v0, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1;->$transform:Lkotlin/jvm/functions/Function3;

    iget-object v1, p0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1;->$this_flow$inlined:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {v0, v1, p1, p2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
