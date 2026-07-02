.class public interface abstract Lcom/amazon/krf/platform/PageTransitionListener;
.super Ljava/lang/Object;
.source "PageTransitionListener.java"


# virtual methods
.method public abstract didDisplayPages(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/platform/KRFPageView;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/platform/KRFPageView;",
            ">;ZZ)V"
        }
    .end annotation
.end method

.method public abstract willDisplayPages(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/platform/KRFPageView;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/platform/KRFPageView;",
            ">;Z)V"
        }
    .end annotation
.end method
