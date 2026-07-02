.class public final Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$onSend$1;
.super Ljava/lang/Object;
.source "ConflatedBroadcastChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/selects/SelectClause2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;->getOnSend()Lkotlinx/coroutines/selects/SelectClause2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/selects/SelectClause2<",
        "TE;",
        "Lkotlinx/coroutines/channels/SendChannel<",
        "-TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 268
    iput-object p1, p0, Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$onSend$1;->this$0:Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public registerSelectClause2(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "-TR;>;TE;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-TE;>;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$onSend$1;->this$0:Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;

    invoke-static {v0, p1, p2, p3}, Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;->access$registerSelectSend(Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
