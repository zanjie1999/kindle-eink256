.class public Lcom/amazon/kindle/krx/library/BaseLibraryBookActionContext;
.super Lcom/amazon/kindle/krx/action/BaseActionContext;
.source "BaseLibraryBookActionContext.java"

# interfaces
.implements Lcom/amazon/kindle/krx/library/LibraryBookActionContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/amazon/kindle/krx/action/BaseActionContext;-><init>()V

    return-void
.end method


# virtual methods
.method public getBooks()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;
    .locals 1

    .line 20
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
