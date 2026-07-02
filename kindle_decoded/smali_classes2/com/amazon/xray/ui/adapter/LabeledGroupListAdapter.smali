.class public abstract Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "LabeledGroupListAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseExpandableListAdapter;",
        "Landroid/widget/SectionIndexer;"
    }
.end annotation


# static fields
.field private static final CHILD_TYPE_COUNT:I = 0x2


# instance fields
.field protected final context:Landroid/content/Context;

.field protected final count:I

.field private groupViewHeight:I

.field protected final groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/LabeledGroup<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field protected final positionForSection:[I

.field protected final sectionForPosition:[I

.field protected final sections:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/LabeledGroup<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->context:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->groups:Ljava/util/List;

    .line 62
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/xray/model/object/LabeledGroup;

    .line 63
    invoke-virtual {v2}, Lcom/amazon/xray/model/object/LabeledGroup;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    .line 66
    invoke-virtual {v2}, Lcom/amazon/xray/model/object/LabeledGroup;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_1
    iput v1, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->count:I

    .line 73
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    .line 74
    new-array v2, p1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->sections:[Ljava/lang/String;

    .line 75
    new-array v2, p1, [I

    iput-object v2, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->positionForSection:[I

    .line 76
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->sectionForPosition:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v1, p1, :cond_4

    .line 80
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/xray/model/object/LabeledGroup;

    .line 81
    iget-object v4, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->sections:[Ljava/lang/String;

    invoke-virtual {v3}, Lcom/amazon/xray/model/object/LabeledGroup;->getLabel()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 82
    iget-object v4, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->positionForSection:[I

    aput v2, v4, v1

    .line 83
    iget-object v4, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->sectionForPosition:[I

    add-int/lit8 v5, v2, 0x1

    aput v1, v4, v2

    const/4 v2, 0x0

    .line 85
    :goto_2
    invoke-virtual {v3}, Lcom/amazon/xray/model/object/LabeledGroup;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 86
    iget-object v4, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->sectionForPosition:[I

    add-int/lit8 v6, v5, 0x1

    aput v1, v4, v5

    add-int/lit8 v2, v2, 0x1

    move v5, v6

    goto :goto_2

    .line 90
    :cond_2
    invoke-virtual {v3}, Lcom/amazon/xray/model/object/LabeledGroup;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 91
    iget-object v2, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->sectionForPosition:[I

    add-int/lit8 v3, v5, 0x1

    aput v1, v2, v5

    move v2, v3

    goto :goto_3

    :cond_3
    move v2, v5

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private getChildEmptyView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p1, :cond_0

    return-object p1

    .line 220
    :cond_0
    iget-object p1, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/xray/R$layout;->xray_list_item_empty:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 222
    invoke-static {}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSecondaryTextColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p1
.end method

.method private inflateGroupView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/xray/R$layout;->xray_list_group:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 253
    new-instance v0, Lcom/amazon/xray/ui/listener/ViewNoTouchListener;

    invoke-direct {v0}, Lcom/amazon/xray/ui/listener/ViewNoTouchListener;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 255
    invoke-static {}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getPrimaryTextColor()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 257
    invoke-virtual {v0}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getHeaderBackgroundColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    return-object p1
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/xray/model/object/LabeledGroup;

    invoke-virtual {v0}, Lcom/amazon/xray/model/object/LabeledGroup;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/xray/model/object/LabeledGroup;

    invoke-virtual {p1}, Lcom/amazon/xray/model/object/LabeledGroup;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract getChildContentView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getChildId(II)J
    .locals 0

    int-to-long p1, p2

    return-wide p1
.end method

.method public getChildItemForPosition(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->sectionForPosition:[I

    aget v0, v0, p1

    .line 298
    iget-object v1, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->positionForSection:[I

    aget v1, v1, v0

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, -0x1

    .line 300
    iget-object v1, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->groups:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/xray/model/object/LabeledGroup;

    invoke-virtual {v1}, Lcom/amazon/xray/model/object/LabeledGroup;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->groups:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/xray/model/object/LabeledGroup;

    invoke-virtual {v0}, Lcom/amazon/xray/model/object/LabeledGroup;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getChildPositionExcludingGroups(I)I
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->sectionForPosition:[I

    aget v0, v0, p1

    sub-int v0, p1, v0

    invoke-virtual {p0, p1}, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->isGroup(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    sub-int/2addr v0, p1

    return v0
.end method

.method public getChildType(II)I
    .locals 0

    .line 228
    iget-object p2, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->groups:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/xray/model/object/LabeledGroup;

    invoke-virtual {p1}, Lcom/amazon/xray/model/object/LabeledGroup;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getChildTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 178
    invoke-virtual {p0, p1, p2}, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->getChildType(II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 179
    invoke-virtual/range {p0 .. p5}, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->getChildContentView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 181
    :cond_0
    invoke-direct {p0, p4, p5}, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->getChildEmptyView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getChildrenCount(I)I
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/xray/model/object/LabeledGroup;

    invoke-virtual {v0}, Lcom/amazon/xray/model/object/LabeledGroup;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/xray/model/object/LabeledGroup;

    invoke-virtual {p1}, Lcom/amazon/xray/model/object/LabeledGroup;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getGroupCount()I
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->groups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    if-eqz p3, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    invoke-direct {p0, p4}, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->inflateGroupView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    :goto_0
    check-cast p3, Landroid/widget/TextView;

    .line 166
    iget-object p2, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->groups:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/xray/model/object/LabeledGroup;

    .line 167
    invoke-virtual {p1}, Lcom/amazon/xray/model/object/LabeledGroup;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-virtual {p3}, Landroid/widget/TextView;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->groupViewHeight:I

    return-object p3
.end method

.method public getGroupViewHeight()I
    .locals 1

    .line 240
    iget v0, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->groupViewHeight:I

    return v0
.end method

.method public getListPosition(II)I
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->positionForSection:[I

    aget p1, v0, p1

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getPositionForSection(I)I
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->positionForSection:[I

    iget-object v1, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->sections:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Lcom/amazon/xray/util/MathUtil;->constrain(III)I

    move-result p1

    aget p1, v0, p1

    return p1
.end method

.method public getSectionForPosition(I)I
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->sectionForPosition:[I

    aget p1, v0, p1

    return p1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->sections:[Ljava/lang/String;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isGroup(I)Z
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->positionForSection:[I

    iget-object v1, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->sectionForPosition:[I

    aget v1, v1, p1

    aget v0, v0, v1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
