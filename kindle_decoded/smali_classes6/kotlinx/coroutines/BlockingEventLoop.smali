.class public final Lkotlinx/coroutines/BlockingEventLoop;
.super Lkotlinx/coroutines/EventLoopImplBase;
.source "EventLoop.kt"


# instance fields
.field private final thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lkotlinx/coroutines/EventLoopImplBase;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/BlockingEventLoop;->thread:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method protected getThread()Ljava/lang/Thread;
    .locals 1

    .line 23
    iget-object v0, p0, Lkotlinx/coroutines/BlockingEventLoop;->thread:Ljava/lang/Thread;

    return-object v0
.end method
