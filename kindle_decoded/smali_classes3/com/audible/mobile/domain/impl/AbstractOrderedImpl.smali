.class public abstract Lcom/audible/mobile/domain/impl/AbstractOrderedImpl;
.super Ljava/lang/Object;
.source "AbstractOrderedImpl.java"

# interfaces
.implements Lcom/audible/mobile/domain/Ordered;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/audible/mobile/domain/Ordered<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/audible/mobile/domain/Ordered<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compareTo(Lcom/audible/mobile/domain/Ordered;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    const-string v0, "another cannot be null."

    .line 18
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    invoke-interface {p0}, Lcom/audible/mobile/domain/Ordered;->getOrdinal()I

    move-result v0

    invoke-interface {p1}, Lcom/audible/mobile/domain/Ordered;->getOrdinal()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 14
    check-cast p1, Lcom/audible/mobile/domain/Ordered;

    invoke-virtual {p0, p1}, Lcom/audible/mobile/domain/impl/AbstractOrderedImpl;->compareTo(Lcom/audible/mobile/domain/Ordered;)I

    move-result p1

    return p1
.end method
