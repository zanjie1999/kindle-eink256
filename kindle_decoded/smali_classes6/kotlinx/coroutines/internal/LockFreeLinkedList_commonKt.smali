.class public final Lkotlinx/coroutines/internal/LockFreeLinkedList_commonKt;
.super Ljava/lang/Object;
.source "LockFreeLinkedList.common.kt"


# static fields
.field public static final REMOVE_PREPARED:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 90
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "REMOVE_PREPARED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedList_commonKt;->REMOVE_PREPARED:Ljava/lang/Object;

    return-void
.end method
