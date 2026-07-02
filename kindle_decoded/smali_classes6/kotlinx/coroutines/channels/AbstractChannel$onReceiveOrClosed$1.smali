.class public final Lkotlinx/coroutines/channels/AbstractChannel$onReceiveOrClosed$1;
.super Ljava/lang/Object;
.source "AbstractChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/selects/SelectClause1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/selects/SelectClause1<",
        "Lkotlinx/coroutines/channels/ValueOrClosed<",
        "+TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lkotlinx/coroutines/channels/AbstractChannel;


# virtual methods
.method public registerSelectClause1(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "-TR;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/channels/ValueOrClosed<",
            "+TE;>;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 749
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$onReceiveOrClosed$1;->this$0:Lkotlinx/coroutines/channels/AbstractChannel;

    if-eqz p2, :cond_0

    const/4 v1, 0x2

    invoke-static {v0, p1, v1, p2}, Lkotlinx/coroutines/channels/AbstractChannel;->access$registerSelectReceiveMode(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlinx/coroutines/selects/SelectInstance;ILkotlin/jvm/functions/Function2;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type suspend (kotlin.Any?) -> R"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
