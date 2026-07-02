.class public Lcom/amazon/kindle/krx/library/BaseLibraryNavActionGroupFactory;
.super Ljava/lang/Object;
.source "BaseLibraryNavActionGroupFactory.java"

# interfaces
.implements Lcom/amazon/kindle/krx/library/LibraryNavActionGroupFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createGroups(Lcom/amazon/kindle/krx/library/LibraryNavActionContext;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/library/LibraryNavActionContext;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/krx/library/LibraryNavActionGroup;",
            ">;"
        }
    .end annotation

    .line 16
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
