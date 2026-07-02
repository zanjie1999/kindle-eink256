.class public abstract Lcom/amazon/kcp/library/BindCoverViewCallback;
.super Ljava/lang/Object;
.source "BindCoverViewCallback.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IObjectCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/foundation/internal/IObjectCallback<",
        "Ljava/util/List<",
        "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field protected final position:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/amazon/kcp/library/BindCoverViewCallback;->position:I

    return-void
.end method


# virtual methods
.method public abstract bindCover(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/BindCoverViewCallback;->execute(Ljava/util/List;)V

    return-void
.end method

.method public execute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)V"
        }
    .end annotation

    .line 21
    iget v0, p0, Lcom/amazon/kcp/library/BindCoverViewCallback;->position:I

    if-ltz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 22
    iget v0, p0, Lcom/amazon/kcp/library/BindCoverViewCallback;->position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/BindCoverViewCallback;->bindCover(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V

    :cond_0
    return-void
.end method
