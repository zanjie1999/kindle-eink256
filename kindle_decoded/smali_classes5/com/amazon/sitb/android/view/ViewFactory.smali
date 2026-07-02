.class public interface abstract Lcom/amazon/sitb/android/view/ViewFactory;
.super Ljava/lang/Object;
.source "ViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract create()Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract resolveDependencies(Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;)V
.end method
