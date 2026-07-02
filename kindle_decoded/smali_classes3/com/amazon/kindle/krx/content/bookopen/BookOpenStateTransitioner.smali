.class public interface abstract Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateTransitioner;
.super Ljava/lang/Object;
.source "BookOpenStateTransitioner.kt"


# virtual methods
.method public abstract addMetrics(Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateMetrics;)V
.end method

.method public abstract addValidation(Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateValidation;)V
.end method

.method public abstract getMetrics()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateMetrics;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getState()Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;
.end method

.method public abstract getValidation()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateValidation;",
            ">;"
        }
    .end annotation
.end method
