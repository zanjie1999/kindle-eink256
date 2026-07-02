.class public interface abstract Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;
.super Ljava/lang/Object;
.source "LibraryFilterStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/LibraryFilterStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ILibraryFilterStateChangedListener"
.end annotation


# virtual methods
.method public abstract onLibraryFilterStateChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/LibraryFilterItem;",
            ">;>;)V"
        }
    .end annotation
.end method
