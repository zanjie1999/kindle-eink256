.class public abstract Lcom/amazon/kcp/periodicals/fragments/SortedListFragment;
.super Landroidx/fragment/app/ListFragment;
.source "SortedListFragment.java"


# instance fields
.field protected final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/amazon/nwstd/bookmark/BookmarkListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;-><init>()V

    .line 15
    new-instance v0, Lcom/amazon/kcp/periodicals/fragments/SortedListFragment$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/periodicals/fragments/SortedListFragment$1;-><init>(Lcom/amazon/kcp/periodicals/fragments/SortedListFragment;)V

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SortedListFragment;->mComparator:Ljava/util/Comparator;

    return-void
.end method
