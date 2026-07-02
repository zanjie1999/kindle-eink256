.class final Lkotlinx/coroutines/Active;
.super Ljava/lang/Object;
.source "CancellableContinuationImpl.kt"

# interfaces
.implements Lkotlinx/coroutines/NotCompleted;


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/Active;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 523
    new-instance v0, Lkotlinx/coroutines/Active;

    invoke-direct {v0}, Lkotlinx/coroutines/Active;-><init>()V

    sput-object v0, Lkotlinx/coroutines/Active;->INSTANCE:Lkotlinx/coroutines/Active;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Active"

    return-object v0
.end method
