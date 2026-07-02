.class public interface abstract Lcom/amazon/kindle/krx/library/LibraryBookActionContext;
.super Ljava/lang/Object;
.source "LibraryBookActionContext.java"

# interfaces
.implements Lcom/amazon/kindle/krx/action/ActionContext;


# virtual methods
.method public abstract getBooks()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;
.end method
