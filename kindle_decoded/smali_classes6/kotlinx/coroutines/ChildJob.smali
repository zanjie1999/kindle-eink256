.class public interface abstract Lkotlinx/coroutines/ChildJob;
.super Ljava/lang/Object;
.source "Job.kt"

# interfaces
.implements Lkotlinx/coroutines/Job;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/ChildJob$DefaultImpls;
    }
.end annotation

.annotation build Lkotlinx/coroutines/InternalCoroutinesApi;
.end annotation


# virtual methods
.method public abstract parentCancelled(Lkotlinx/coroutines/ParentJob;)V
    .annotation build Lkotlinx/coroutines/InternalCoroutinesApi;
    .end annotation
.end method
