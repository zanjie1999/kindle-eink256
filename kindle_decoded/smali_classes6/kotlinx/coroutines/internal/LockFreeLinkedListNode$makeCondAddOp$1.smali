.class public final Lkotlinx/coroutines/internal/LockFreeLinkedListNode$makeCondAddOp$1;
.super Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode$makeCondAddOp$1\n*L\n1#1,667:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $condition:Lkotlin/jvm/functions/Function0;


# virtual methods
.method public bridge synthetic prepare(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 87
    check-cast p1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$makeCondAddOp$1;->prepare(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public prepare(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Ljava/lang/Object;
    .locals 0

    .line 88
    iget-object p1, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$makeCondAddOp$1;->$condition:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/internal/LockFreeLinkedListKt;->getCONDITION_FALSE()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method
