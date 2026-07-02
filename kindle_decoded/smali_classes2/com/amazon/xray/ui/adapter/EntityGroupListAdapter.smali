.class public Lcom/amazon/xray/ui/adapter/EntityGroupListAdapter;
.super Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;
.source "EntityGroupListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/xray/ui/adapter/EntityGroupListAdapter$ChildViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter<",
        "Lcom/amazon/xray/model/object/Entity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/LabeledGroup<",
            "Lcom/amazon/xray/model/object/Entity;",
            ">;>;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method private inflateChildView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/xray/R$layout;->xray_list_item_entity:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 76
    new-instance v0, Lcom/amazon/xray/ui/adapter/EntityGroupListAdapter$ChildViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/xray/ui/adapter/EntityGroupListAdapter$ChildViewHolder;-><init>(Lcom/amazon/xray/ui/adapter/EntityGroupListAdapter$1;)V

    .line 77
    sget v1, Lcom/amazon/kindle/xray/R$id;->xray_entity_icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/amazon/xray/ui/adapter/EntityGroupListAdapter$ChildViewHolder;->entityIconView:Landroid/widget/ImageView;

    .line 78
    sget v1, Lcom/amazon/kindle/xray/R$id;->xray_label:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/amazon/xray/ui/adapter/EntityGroupListAdapter$ChildViewHolder;->labelView:Landroid/widget/TextView;

    .line 79
    sget v1, Lcom/amazon/kindle/xray/R$id;->xray_num_occurrences:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/amazon/xray/ui/adapter/EntityGroupListAdapter$ChildViewHolder;->numOccurrencesView:Landroid/widget/TextView;

    .line 80
    sget v1, Lcom/amazon/kindle/xray/R$id;->xray_description:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/amazon/xray/ui/widget/EnhancedTextView;

    iput-object v1, v0, Lcom/amazon/xray/ui/adapter/EntityGroupListAdapter$ChildViewHolder;->descriptionView:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 83
    invoke-static {}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object v1

    .line 84
    iget-object v2, v0, Lcom/amazon/xray/ui/adapter/EntityGroupListAdapter$ChildViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getPrimaryTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    iget-object v0, v0, Lcom/amazon/xray/ui/adapter/EntityGroupListAdapter$ChildViewHolder;->numOccurrencesView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSecondaryTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p1
.end method


# virtual methods
.method public getChildContentView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-eqz p4, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    invoke-direct {p0, p5}, Lcom/amazon/xray/ui/adapter/EntityGroupListAdapter;->inflateChildView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 41
    :goto_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/xray/ui/adapter/EntityGroupListAdapter$ChildViewHolder;

    .line 44
    iget-object p5, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->groups:Ljava/util/List;

    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/xray/model/object/LabeledGroup;

    invoke-virtual {p1}, Lcom/amazon/xray/model/object/LabeledGroup;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/xray/model/object/Entity;

    .line 45
    iget-object p2, p3, Lcom/amazon/xray/ui/adapter/EntityGroupListAdapter$ChildViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/amazon/xray/model/object/Entity;->getLabel()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object p2, p3, Lcom/amazon/xray/ui/adapter/EntityGroupListAdapter$ChildViewHolder;->entityIconView:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/amazon/xray/ui/util/EntityIconUtil;->getSmallIcon(Lcom/amazon/xray/model/object/Entity;)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    invoke-virtual {p2, p5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    iget-object p2, p3, Lcom/amazon/xray/ui/adapter/EntityGroupListAdapter$ChildViewHolder;->numOccurrencesView:Landroid/widget/TextView;

    iget-object p5, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->context:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget v0, Lcom/amazon/kindle/xray/R$plurals;->xray_mentions_count:I

    .line 50
    invoke-virtual {p1}, Lcom/amazon/xray/model/object/Entity;->getCount()I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/xray/model/object/Entity;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 49
    invoke-virtual {p5, v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {p1}, Lcom/amazon/xray/model/object/Entity;->getDescription()Lcom/amazon/xray/model/object/Description;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 55
    iget-object p2, p3, Lcom/amazon/xray/ui/adapter/EntityGroupListAdapter$ChildViewHolder;->descriptionView:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    invoke-virtual {p1}, Lcom/amazon/xray/model/object/Description;->isFromBook()Z

    move-result p5

    invoke-virtual {p2, p5}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setShowingQuotes(Z)V

    .line 56
    iget-object p2, p3, Lcom/amazon/xray/ui/adapter/EntityGroupListAdapter$ChildViewHolder;->descriptionView:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    invoke-virtual {p1}, Lcom/amazon/xray/model/object/Description;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setTextWithExtras(Ljava/lang/CharSequence;)V

    .line 57
    iget-object p1, p3, Lcom/amazon/xray/ui/adapter/EntityGroupListAdapter$ChildViewHolder;->descriptionView:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 59
    :cond_1
    iget-object p1, p3, Lcom/amazon/xray/ui/adapter/EntityGroupListAdapter$ChildViewHolder;->descriptionView:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-object p4
.end method
