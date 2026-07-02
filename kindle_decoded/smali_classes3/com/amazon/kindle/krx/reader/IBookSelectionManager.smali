.class public interface abstract Lcom/amazon/kindle/krx/reader/IBookSelectionManager;
.super Ljava/lang/Object;
.source "IBookSelectionManager.java"


# virtual methods
.method public abstract getSelectedElements()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/amazon/kindle/krx/content/IBookElement;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSelectedText()Ljava/lang/String;
.end method
