.class public interface abstract Lkotlinx/coroutines/ParentJob;
.super Ljava/lang/Object;
.source "Job.kt"

# interfaces
.implements Lkotlinx/coroutines/Job;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/ParentJob$DefaultImpls;
    }
.end annotation

.annotation build Lkotlinx/coroutines/InternalCoroutinesApi;
.end annotation


# virtual methods
.method public abstract getChildJobCancellationCause()Ljava/util/concurrent/CancellationException;
    .annotation build Lkotlinx/coroutines/InternalCoroutinesApi;
    .end annotation
.end method
