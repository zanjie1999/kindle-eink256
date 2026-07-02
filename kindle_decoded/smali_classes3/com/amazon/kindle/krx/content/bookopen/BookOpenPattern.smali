.class public interface abstract Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;
.super Ljava/lang/Object;
.source "BookOpenPattern.kt"


# virtual methods
.method public abstract addMetrics(Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateMetrics;)V
.end method

.method public abstract addValidation(Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateValidation;)V
.end method

.method public abstract getFailureHandler()Lcom/amazon/kindle/krx/content/bookopen/BookOpenDownloadFailureHandler;
.end method

.method public abstract getTransitioner(Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;)Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateTransitioner;
.end method

.method public abstract replaceFailureHandler(Lcom/amazon/kindle/krx/content/bookopen/BookOpenDownloadFailureHandler;)V
.end method

.method public abstract replaceTransitioner(Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateTransitioner;)V
.end method
