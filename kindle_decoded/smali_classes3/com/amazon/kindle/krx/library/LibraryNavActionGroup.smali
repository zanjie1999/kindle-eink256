.class public interface abstract Lcom/amazon/kindle/krx/library/LibraryNavActionGroup;
.super Ljava/lang/Object;
.source "LibraryNavActionGroup.java"

# interfaces
.implements Lcom/amazon/kindle/krx/foundation/Prioritized;


# virtual methods
.method public abstract getActions()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/krx/library/LibraryNavAction;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method
