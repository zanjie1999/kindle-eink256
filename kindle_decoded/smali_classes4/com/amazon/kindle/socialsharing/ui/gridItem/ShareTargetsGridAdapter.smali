.class public Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetsGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShareTargetsGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetsGridAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final itemSize:I

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetsGridAdapter;->items:Ljava/util/List;

    .line 41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetsGridAdapter;->itemSize:I

    .line 42
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetsGridAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetsGridAdapter;->itemSize:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetsGridAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 84
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetsGridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;

    .line 86
    iget-object p3, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetsGridAdapter;->context:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 87
    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    if-nez p2, :cond_0

    .line 92
    sget p2, Lcom/amazon/kindle/socialsharing/common/R$layout;->grid_application_item:I

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 94
    new-instance p3, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetsGridAdapter$ViewHolder;

    invoke-direct {p3, p0, v0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetsGridAdapter$ViewHolder;-><init>(Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetsGridAdapter;Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetsGridAdapter$1;)V

    .line 95
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$id;->tv_application_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetsGridAdapter$ViewHolder;->titleText:Landroid/widget/TextView;

    .line 96
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$id;->iv_app_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetsGridAdapter$ViewHolder;->iconImage:Landroid/widget/ImageView;

    .line 98
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetsGridAdapter$ViewHolder;

    .line 103
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->getSharedInstance()Lcom/amazon/kindle/socialsharing/util/ThemeUtil;

    move-result-object v0

    .line 104
    iget-object v1, p3, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetsGridAdapter$ViewHolder;->titleText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->getApplicationNameTextColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    iget-object v0, p3, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetsGridAdapter$ViewHolder;->titleText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getItemTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object p3, p3, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetsGridAdapter$ViewHolder;->iconImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getIconImage()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method
