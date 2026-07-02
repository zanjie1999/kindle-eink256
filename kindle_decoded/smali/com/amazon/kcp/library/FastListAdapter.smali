.class public abstract Lcom/amazon/kcp/library/FastListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FastListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field protected final context:Landroid/content/Context;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazon/kcp/library/FastListAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract bindView(Landroid/view/View;Landroid/content/Context;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/content/Context;",
            "ITT;)V"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/library/FastListAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/amazon/kcp/library/FastListAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 45
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/FastListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-nez p2, :cond_0

    .line 48
    iget-object p2, p0, Lcom/amazon/kcp/library/FastListAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0, p2, p3}, Lcom/amazon/kcp/library/FastListAdapter;->newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    :cond_0
    iget-object p3, p0, Lcom/amazon/kcp/library/FastListAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0, p2, p3, p1, v0}, Lcom/amazon/kcp/library/FastListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;ILjava/lang/Object;)V

    return-object p2
.end method

.method public abstract newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public swapList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/amazon/kcp/library/FastListAdapter;->list:Ljava/util/List;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 94
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/library/FastListAdapter;->list:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 96
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    :goto_0
    return-object v0
.end method
