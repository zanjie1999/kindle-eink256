.class public Lcom/amazon/android/widget/ScrollListenerScrollView;
.super Landroid/widget/ScrollView;
.source "ScrollListenerScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/widget/ScrollListenerScrollView$onScrollChangedListener;
    }
.end annotation


# instance fields
.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/android/widget/ScrollListenerScrollView$onScrollChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/widget/ScrollListenerScrollView;->listeners:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/widget/ScrollListenerScrollView;->listeners:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/widget/ScrollListenerScrollView;->listeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addScrollChangedListener(Lcom/amazon/android/widget/ScrollListenerScrollView$onScrollChangedListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/amazon/android/widget/ScrollListenerScrollView;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/amazon/android/widget/ScrollListenerScrollView;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 36
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 37
    iget-object p1, p0, Lcom/amazon/android/widget/ScrollListenerScrollView;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/android/widget/ScrollListenerScrollView$onScrollChangedListener;

    .line 38
    invoke-interface {p2, p0}, Lcom/amazon/android/widget/ScrollListenerScrollView$onScrollChangedListener;->onScrollChanged(Lcom/amazon/android/widget/ScrollListenerScrollView;)V

    goto :goto_0

    :cond_0
    return-void
.end method
