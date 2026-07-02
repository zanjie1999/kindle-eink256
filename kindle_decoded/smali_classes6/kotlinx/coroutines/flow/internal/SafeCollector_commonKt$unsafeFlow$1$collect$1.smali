.class public final Lkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SafeCollector.common.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1\n*L\n1#1,112:1\n*E\n"
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1;


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1;->result:Ljava/lang/Object;

    iget p1, p0, Lkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1;->label:I

    iget-object p1, p0, Lkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1;->this$0:Lkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
