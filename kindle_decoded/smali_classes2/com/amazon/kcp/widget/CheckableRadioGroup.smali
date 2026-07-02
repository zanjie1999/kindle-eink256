.class public Lcom/amazon/kcp/widget/CheckableRadioGroup;
.super Landroid/widget/LinearLayout;
.source "CheckableRadioGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/widget/CheckableRadioGroup$MenuItemActionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/LinearLayout;"
    }
.end annotation


# instance fields
.field protected items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/widget/LibraryCheckableItem<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private menuItemActionListener:Lcom/amazon/kcp/widget/CheckableRadioGroup$MenuItemActionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kcp/widget/CheckableRadioGroup$MenuItemActionListener<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/widget/CheckableRadioGroup;->items:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/widget/CheckableRadioGroup;)Lcom/amazon/kcp/widget/CheckableRadioGroup$MenuItemActionListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/amazon/kcp/widget/CheckableRadioGroup;->menuItemActionListener:Lcom/amazon/kcp/widget/CheckableRadioGroup$MenuItemActionListener;

    return-object p0
.end method

.method private setItemLabel(Lcom/amazon/kcp/widget/LibraryCheckableItem;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/widget/LibraryCheckableItem<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/amazon/kcp/widget/CheckableRadioGroup;->getItemMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/widget/LibraryCheckableItem;->setLabel(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public configureOptionItem(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 61
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/widget/LibraryCheckableItem;

    if-nez p1, :cond_1

    return-void

    .line 66
    :cond_1
    invoke-virtual {p1, p2}, Lcom/amazon/kcp/widget/LibraryCheckableItem;->setIdentityObject(Ljava/lang/Object;)V

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/widget/CheckableRadioGroup;->setItemLabel(Lcom/amazon/kcp/widget/LibraryCheckableItem;Ljava/lang/Object;)V

    return-void
.end method

.method protected getItemMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 3

    .line 26
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const/4 v0, 0x0

    .line 27
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 28
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/widget/LibraryCheckableItem;

    .line 31
    new-instance v2, Lcom/amazon/kcp/widget/CheckableRadioGroup$1;

    invoke-direct {v2, p0, v1}, Lcom/amazon/kcp/widget/CheckableRadioGroup$1;-><init>(Lcom/amazon/kcp/widget/CheckableRadioGroup;Lcom/amazon/kcp/widget/LibraryCheckableItem;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v2, p0, Lcom/amazon/kcp/widget/CheckableRadioGroup;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMenuItemActionListener(Lcom/amazon/kcp/widget/CheckableRadioGroup$MenuItemActionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/widget/CheckableRadioGroup$MenuItemActionListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/amazon/kcp/widget/CheckableRadioGroup;->menuItemActionListener:Lcom/amazon/kcp/widget/CheckableRadioGroup$MenuItemActionListener;

    return-void
.end method

.method public setMenuItemChecked(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/widget/CheckableRadioGroup;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/widget/LibraryCheckableItem;

    .line 97
    invoke-virtual {v1}, Lcom/amazon/kcp/widget/LibraryCheckableItem;->getIdentityObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 98
    invoke-virtual {v1, v2}, Lcom/amazon/kcp/widget/LibraryCheckableItem;->setChecked(Z)V

    .line 99
    iget-object v2, p0, Lcom/amazon/kcp/widget/CheckableRadioGroup;->menuItemActionListener:Lcom/amazon/kcp/widget/CheckableRadioGroup$MenuItemActionListener;

    if-eqz v2, :cond_1

    .line 100
    invoke-virtual {v1}, Lcom/amazon/kcp/widget/LibraryCheckableItem;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/amazon/kcp/widget/CheckableRadioGroup$MenuItemActionListener;->onMenuItemChecked(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 103
    invoke-virtual {v1, v2}, Lcom/amazon/kcp/widget/LibraryCheckableItem;->setChecked(Z)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setMenuItemVisible(Ljava/lang/Object;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/widget/CheckableRadioGroup;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/widget/LibraryCheckableItem;

    .line 139
    invoke-virtual {v1}, Lcom/amazon/kcp/widget/LibraryCheckableItem;->getIdentityObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    .line 140
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    return-void
.end method
