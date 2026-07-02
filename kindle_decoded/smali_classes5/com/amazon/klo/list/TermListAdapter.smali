.class public Lcom/amazon/klo/list/TermListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TermListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/klo/list/TermListAdapter$ItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/amazon/klo/list/TermListItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final m_context:Landroid/content/Context;

.field private final m_layoutResourceId:I

.field private final m_listData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/klo/list/TermListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/amazon/klo/list/TermListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/klo/list/TermListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/amazon/klo/list/TermListItem;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 46
    sget-object v0, Lcom/amazon/klo/list/TermListAdapter;->TAG:Ljava/lang/String;

    const-string v1, "TermListAdaptor constructor started"

    invoke-static {v0, v1}, Lcom/amazon/klo/sdk/KRX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcom/amazon/klo/list/TermListAdapter;->m_context:Landroid/content/Context;

    .line 48
    iput p2, p0, Lcom/amazon/klo/list/TermListAdapter;->m_layoutResourceId:I

    .line 49
    iput-object p3, p0, Lcom/amazon/klo/list/TermListAdapter;->m_listData:Ljava/util/List;

    .line 50
    sget-object p1, Lcom/amazon/klo/list/TermListAdapter;->TAG:Ljava/lang/String;

    const-string p2, "TermListAdaptor constructor done"

    invoke-static {p1, p2}, Lcom/amazon/klo/sdk/KRX;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDescriptionState(Landroid/view/View;)Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;
    .locals 0

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/klo/list/TermListAdapter$ItemHolder;

    .line 119
    iget-object p1, p1, Lcom/amazon/klo/list/TermListAdapter$ItemHolder;->itemDesc:Lcom/amazon/klo/EllipsizingTextView;

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p1}, Lcom/amazon/klo/EllipsizingTextView;->getSavedState()Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTermState(Landroid/view/View;)Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;
    .locals 0

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/klo/list/TermListAdapter$ItemHolder;

    .line 107
    iget-object p1, p1, Lcom/amazon/klo/list/TermListAdapter$ItemHolder;->itemTerm:Lcom/amazon/klo/EllipsizingTextView;

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p1}, Lcom/amazon/klo/EllipsizingTextView;->getSavedState()Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 56
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/klo/list/TermListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;)Landroid/view/View;
    .locals 2

    .line 61
    sget-object v0, Lcom/amazon/klo/list/TermListAdapter;->TAG:Ljava/lang/String;

    const-string v1, "TermListAdaptor getView called"

    invoke-static {v0, v1}, Lcom/amazon/klo/sdk/KRX;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 67
    iget-object p2, p0, Lcom/amazon/klo/list/TermListAdapter;->m_context:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    .line 68
    iget v0, p0, Lcom/amazon/klo/list/TermListAdapter;->m_layoutResourceId:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 69
    new-instance p3, Lcom/amazon/klo/list/TermListAdapter$ItemHolder;

    invoke-direct {p3}, Lcom/amazon/klo/list/TermListAdapter$ItemHolder;-><init>()V

    .line 70
    sget v0, Lcom/amazon/klo/R$id;->klo_termlist_item_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/klo/EllipsizingTextView;

    iput-object v0, p3, Lcom/amazon/klo/list/TermListAdapter$ItemHolder;->itemTerm:Lcom/amazon/klo/EllipsizingTextView;

    .line 71
    sget v0, Lcom/amazon/klo/R$id;->klo_termlist_item_desc:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/klo/EllipsizingTextView;

    iput-object v0, p3, Lcom/amazon/klo/list/TermListAdapter$ItemHolder;->itemDesc:Lcom/amazon/klo/EllipsizingTextView;

    .line 72
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/klo/list/TermListAdapter$ItemHolder;

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/amazon/klo/list/TermListAdapter;->m_listData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/klo/list/TermListItem;

    if-nez p4, :cond_1

    .line 83
    iget-object p4, p3, Lcom/amazon/klo/list/TermListAdapter$ItemHolder;->itemTerm:Lcom/amazon/klo/EllipsizingTextView;

    invoke-virtual {p1}, Lcom/amazon/klo/list/TermListItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 87
    :cond_1
    iget-object v0, p3, Lcom/amazon/klo/list/TermListAdapter$ItemHolder;->itemTerm:Lcom/amazon/klo/EllipsizingTextView;

    .line 88
    invoke-virtual {v0, p4}, Lcom/amazon/klo/EllipsizingTextView;->restoreState(Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;)V

    :goto_1
    if-nez p5, :cond_2

    .line 93
    iget-object p3, p3, Lcom/amazon/klo/list/TermListAdapter$ItemHolder;->itemDesc:Lcom/amazon/klo/EllipsizingTextView;

    invoke-virtual {p1}, Lcom/amazon/klo/list/TermListItem;->getListDefinition()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 97
    :cond_2
    iget-object p1, p3, Lcom/amazon/klo/list/TermListAdapter$ItemHolder;->itemDesc:Lcom/amazon/klo/EllipsizingTextView;

    .line 98
    invoke-virtual {p1, p5}, Lcom/amazon/klo/EllipsizingTextView;->restoreState(Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;)V

    :goto_2
    return-object p2
.end method
