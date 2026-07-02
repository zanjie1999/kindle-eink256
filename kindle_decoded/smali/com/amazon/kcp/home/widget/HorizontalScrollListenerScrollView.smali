.class public final Lcom/amazon/kcp/home/widget/HorizontalScrollListenerScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "HorizontalScrollListenerScrollView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/home/widget/HorizontalScrollListenerScrollView$OnScrollChangedListener;
    }
.end annotation


# instance fields
.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kcp/home/widget/HorizontalScrollListenerScrollView$OnScrollChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/HorizontalScrollListenerScrollView;->listeners:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/HorizontalScrollListenerScrollView;->listeners:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/HorizontalScrollListenerScrollView;->listeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final addScrollChangedListener(Lcom/amazon/kcp/home/widget/HorizontalScrollListenerScrollView$OnScrollChangedListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/HorizontalScrollListenerScrollView;->listeners:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/HorizontalScrollListenerScrollView;->listeners:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 36
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 37
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/HorizontalScrollListenerScrollView;->listeners:Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/home/widget/HorizontalScrollListenerScrollView$OnScrollChangedListener;

    .line 38
    invoke-interface {p2, p0}, Lcom/amazon/kcp/home/widget/HorizontalScrollListenerScrollView$OnScrollChangedListener;->onScrollChanged(Lcom/amazon/kcp/home/widget/HorizontalScrollListenerScrollView;)V

    goto :goto_0

    :cond_0
    return-void
.end method
