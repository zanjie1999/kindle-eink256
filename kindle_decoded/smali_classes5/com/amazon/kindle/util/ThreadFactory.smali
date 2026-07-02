.class public final Lcom/amazon/kindle/util/ThreadFactory;
.super Ljava/lang/Object;
.source "ThreadFactory.kt"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nThreadFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThreadFactory.kt\ncom/amazon/kindle/util/ThreadFactory\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,12:1\n13506#2,2:13\n*E\n*S KotlinDebug\n*F\n+ 1 ThreadFactory.kt\ncom/amazon/kindle/util/ThreadFactory\n*L\n9#1,2:13\n*E\n"
.end annotation


# instance fields
.field private final decorators:[Lcom/amazon/kindle/util/IThreadDecorator;


# direct methods
.method public varargs constructor <init>([Lcom/amazon/kindle/util/IThreadDecorator;)V
    .locals 1

    const-string v0, "decorators"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/util/ThreadFactory;->decorators:[Lcom/amazon/kindle/util/IThreadDecorator;

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 5

    .line 8
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/amazon/kindle/util/ThreadFactory;->decorators:[Lcom/amazon/kindle/util/IThreadDecorator;

    .line 13
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const-string/jumbo v3, "thread"

    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 9
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, p1}, Lcom/amazon/kindle/util/IThreadDecorator;->decorate(Ljava/lang/Thread;)Ljava/lang/Thread;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
