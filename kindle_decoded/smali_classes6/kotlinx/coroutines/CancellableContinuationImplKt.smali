.class public final Lkotlinx/coroutines/CancellableContinuationImplKt;
.super Ljava/lang/Object;
.source "CancellableContinuationImpl.kt"


# static fields
.field private static final RESUMED:I = 0x2

.field public static final RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

.field private static final SUSPENDED:I = 0x1

.field private static final UNDECIDED:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "RESUME_TOKEN"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    return-void
.end method
