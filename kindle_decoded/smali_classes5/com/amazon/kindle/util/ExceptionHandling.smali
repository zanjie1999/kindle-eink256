.class public final Lcom/amazon/kindle/util/ExceptionHandling;
.super Ljava/lang/Object;
.source "ThreadDecorators.kt"

# interfaces
.implements Lcom/amazon/kindle/util/IThreadDecorator;


# instance fields
.field private final handler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 1

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/util/ExceptionHandling;->handler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method


# virtual methods
.method public decorate(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 1

    const-string/jumbo v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/amazon/kindle/util/ExceptionHandling;->handler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-object p1
.end method
