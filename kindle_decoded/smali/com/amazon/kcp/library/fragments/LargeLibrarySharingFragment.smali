.class public final Lcom/amazon/kcp/library/fragments/LargeLibrarySharingFragment;
.super Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;
.source "LargeLibrarySharingFragment.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibrarySharingFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LargeLibrarySharingFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method
