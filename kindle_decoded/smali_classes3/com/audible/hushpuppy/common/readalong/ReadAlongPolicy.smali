.class public abstract Lcom/audible/hushpuppy/common/readalong/ReadAlongPolicy;
.super Ljava/lang/Object;
.source "ReadAlongPolicy.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/readalong/IReadAlongPolicy;


# instance fields
.field private currentPage:Lcom/audible/hushpuppy/common/readalong/CurrentPage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCurrentPage()Lcom/audible/hushpuppy/common/readalong/CurrentPage;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/audible/hushpuppy/common/readalong/ReadAlongPolicy;->currentPage:Lcom/audible/hushpuppy/common/readalong/CurrentPage;

    return-object v0
.end method

.method public final setCurrentPage(Lcom/audible/hushpuppy/common/readalong/CurrentPage;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/audible/hushpuppy/common/readalong/ReadAlongPolicy;->currentPage:Lcom/audible/hushpuppy/common/readalong/CurrentPage;

    return-void
.end method
