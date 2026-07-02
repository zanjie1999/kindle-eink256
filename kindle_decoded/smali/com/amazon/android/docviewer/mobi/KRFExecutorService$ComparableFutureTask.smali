.class final Lcom/amazon/android/docviewer/mobi/KRFExecutorService$ComparableFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "KRFExecutorService.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/mobi/KRFExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ComparableFutureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TT;>;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/android/docviewer/mobi/KRFExecutorService$ComparableFutureTask<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private callable:Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 59
    check-cast p1, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$ComparableFutureTask;->callable:Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$ComparableFutureTask;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/mobi/KRFExecutorService$ComparableFutureTask<",
            "TT;>;)I"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$ComparableFutureTask;->callable:Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    iget-object p1, p1, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$ComparableFutureTask;->callable:Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->compareTo(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 54
    check-cast p1, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$ComparableFutureTask;

    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$ComparableFutureTask;->compareTo(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$ComparableFutureTask;)I

    move-result p1

    return p1
.end method
