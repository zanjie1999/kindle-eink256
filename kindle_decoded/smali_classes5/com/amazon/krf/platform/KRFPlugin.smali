.class public interface abstract Lcom/amazon/krf/platform/KRFPlugin;
.super Ljava/lang/Object;
.source "KRFPlugin.java"


# virtual methods
.method public abstract attached()V
.end method

.method public abstract detaching()V
.end method

.method public abstract execute(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/AbstractMap$SimpleEntry;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/AbstractMap$SimpleEntry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract setParentView(Lcom/amazon/krf/platform/KRFView;)V
.end method

.method public abstract setRect(Lcom/amazon/krf/platform/Rect25D;)V
.end method

.method public abstract setScaleFactor(D)V
.end method

.method public abstract setVisible(Z)V
.end method
