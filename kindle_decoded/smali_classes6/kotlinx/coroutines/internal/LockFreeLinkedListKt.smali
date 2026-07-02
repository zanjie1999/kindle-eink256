.class public final Lkotlinx/coroutines/internal/LockFreeLinkedListKt;
.super Ljava/lang/Object;
.source "LockFreeLinkedList.kt"


# static fields
.field private static final CONDITION_FALSE:Ljava/lang/Object;

.field private static final LIST_EMPTY:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "CONDITION_FALSE"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListKt;->CONDITION_FALSE:Ljava/lang/Object;

    .line 26
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "LIST_EMPTY"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListKt;->LIST_EMPTY:Ljava/lang/Object;

    return-void
.end method

.method public static final getCONDITION_FALSE()Ljava/lang/Object;
    .locals 1

    .line 23
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListKt;->CONDITION_FALSE:Ljava/lang/Object;

    return-object v0
.end method

.method public static final getLIST_EMPTY()Ljava/lang/Object;
    .locals 1

    .line 26
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListKt;->LIST_EMPTY:Ljava/lang/Object;

    return-object v0
.end method

.method public static final unwrap(Ljava/lang/Object;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .locals 1

    .line 627
    instance-of v0, p0, Lkotlinx/coroutines/internal/Removed;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Lkotlinx/coroutines/internal/Removed;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lkotlinx/coroutines/internal/Removed;->ref:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p0, :cond_2

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    :goto_1
    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
