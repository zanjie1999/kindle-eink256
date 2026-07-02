.class public final Lkotlinx/coroutines/test/TestCoroutineContext$$special$$inlined$CoroutineExceptionHandler$1;
.super Lkotlin/coroutines/AbstractCoroutineContextElement;
.source "CoroutineExceptionHandler.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/test/TestCoroutineContext;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n+ 2 TestCoroutineContext.kt\nkotlinx/coroutines/test/TestCoroutineContext\n*L\n1#1,110:1\n42#2,2:111\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lkotlinx/coroutines/test/TestCoroutineContext;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext$Key;Lkotlinx/coroutines/test/TestCoroutineContext;)V
    .locals 0

    iput-object p2, p0, Lkotlinx/coroutines/test/TestCoroutineContext$$special$$inlined$CoroutineExceptionHandler$1;->this$0:Lkotlinx/coroutines/test/TestCoroutineContext;

    .line 49
    invoke-direct {p0, p1}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    return-void
.end method


# virtual methods
.method public handleException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V
    .locals 0

    .line 111
    iget-object p1, p0, Lkotlinx/coroutines/test/TestCoroutineContext$$special$$inlined$CoroutineExceptionHandler$1;->this$0:Lkotlinx/coroutines/test/TestCoroutineContext;

    invoke-static {p1}, Lkotlinx/coroutines/test/TestCoroutineContext;->access$getUncaughtExceptions$p(Lkotlinx/coroutines/test/TestCoroutineContext;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method
