.class public final Lkotlinx/coroutines/scheduling/NonBlockingContext;
.super Ljava/lang/Object;
.source "Tasks.kt"

# interfaces
.implements Lkotlinx/coroutines/scheduling/TaskContext;


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/scheduling/NonBlockingContext;

.field private static final taskMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lkotlinx/coroutines/scheduling/NonBlockingContext;

    invoke-direct {v0}, Lkotlinx/coroutines/scheduling/NonBlockingContext;-><init>()V

    sput-object v0, Lkotlinx/coroutines/scheduling/NonBlockingContext;->INSTANCE:Lkotlinx/coroutines/scheduling/NonBlockingContext;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTask()V
    .locals 0

    return-void
.end method

.method public getTaskMode()I
    .locals 1

    .line 73
    sget v0, Lkotlinx/coroutines/scheduling/NonBlockingContext;->taskMode:I

    return v0
.end method
