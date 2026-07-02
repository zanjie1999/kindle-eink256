.class public Lcom/amazon/kindle/krx/library/BaseLibraryNavActionGroup;
.super Lcom/amazon/kindle/krx/foundation/BasePrioritized;
.source "BaseLibraryNavActionGroup.java"

# interfaces
.implements Lcom/amazon/kindle/krx/library/LibraryNavActionGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/amazon/kindle/krx/foundation/BasePrioritized;-><init>()V

    return-void
.end method


# virtual methods
.method public getActions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/krx/library/LibraryNavAction;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 17
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
