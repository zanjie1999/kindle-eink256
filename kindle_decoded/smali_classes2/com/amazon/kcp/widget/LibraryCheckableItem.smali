.class public Lcom/amazon/kcp/widget/LibraryCheckableItem;
.super Lcom/amazon/kcp/widget/LibraryFilterItemView;
.source "LibraryCheckableItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/kcp/widget/LibraryFilterItemView;"
    }
.end annotation


# instance fields
.field private checkMarker:Landroid/widget/ImageView;

.field private icon:Landroid/widget/ImageView;

.field private identityObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private isEnabled:Z

.field private itemCount:Landroid/widget/TextView;

.field private labelTextView:Landroid/widget/TextView;

.field private titleImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Lcom/amazon/kcp/widget/LibraryFilterItemView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/amazon/kcp/widget/LibraryCheckableItem;->isEnabled:Z

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/kcp/widget/LibraryCheckableItem;->getLayout()I

    move-result v0

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    invoke-direct {p0}, Lcom/amazon/kcp/widget/LibraryCheckableItem;->initViewVariables()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/widget/LibraryFilterItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/amazon/kcp/widget/LibraryCheckableItem;->isEnabled:Z

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/widget/LibraryCheckableItem;->initViewsWithCustomizedAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/widget/LibraryFilterItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 34
    iput-boolean p3, p0, Lcom/amazon/kcp/widget/LibraryCheckableItem;->isEnabled:Z

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/widget/LibraryCheckableItem;->initViewsWithCustomizedAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initViewVariables()V
    .locals 1

    .line 73
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->checkable_item_image_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kcp/widget/LibraryCheckableItem;->checkMarker:Landroid/widget/ImageView;

    .line 74
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->checkable_item_text_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/widget/LibraryCheckableItem;->labelTextView:Landroid/widget/TextView;

    .line 75
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->checkable_item_left_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kcp/widget/LibraryCheckableItem;->icon:Landroid/widget/ImageView;

    .line 76
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->checkable_item_title_image:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kcp/widget/LibraryCheckableItem;->titleImage:Landroid/widget/ImageView;

    .line 77
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->checkable_item_count:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/widget/LibraryCheckableItem;->itemCount:Landroid/widget/TextView;

    return-void
.end method

.method private initViewsWithCustomizedAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/librarymodule/R$styleable;->LibraryCheckableItem:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 59
    :try_start_0
    sget v0, Lcom/amazon/kindle/librarymodule/R$styleable;->LibraryCheckableItem_drawableLeft:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/kcp/widget/LibraryCheckableItem;->getLayout()I

    move-result p2

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 65
    invoke-direct {p0}, Lcom/amazon/kcp/widget/LibraryCheckableItem;->initViewVariables()V

    if-eqz v0, :cond_0

    .line 66
    iget-object p1, p0, Lcom/amazon/kcp/widget/LibraryCheckableItem;->icon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    iget-object p1, p0, Lcom/amazon/kcp/widget/LibraryCheckableItem;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 61
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    throw p1
.end method

.method private scaleTitleImage(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 167
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 168
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 169
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 170
    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 171
    iget-object v2, p0, Lcom/amazon/kcp/widget/LibraryCheckableItem;->titleImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    int-to-float p1, p1

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 172
    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float p1, v0

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 173
    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 174
    iget-object p1, p0, Lcom/amazon/kcp/widget/LibraryCheckableItem;->titleImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private setTitleImageEnabled(Z)V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/amazon/kcp/widget/LibraryCheckableItem;->titleImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-nez p1, :cond_0

    .line 139
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 140
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 141
    sget v1, Lcom/amazon/kindle/librarymodule/R$attr;->item_count_disabled_tint:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 142
    iget p1, p1, Landroid/util/TypedValue;->data:I

    .line 143
    iget-object v0, p0, Lcom/amazon/kcp/widget/LibraryCheckableItem;->titleImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 145
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/widget/LibraryCheckableItem;->titleImage:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getIdentityObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/amazon/kcp/widget/LibraryCheckableItem;->identityObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/amazon/kcp/widget/LibraryCheckableItem;->labelTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getLayout()I
    .locals 1

    .line 82
    sget v0, Lcom/amazon/kindle/librarymodule/R$layout;->checkable_item:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/amazon/kcp/widget/LibraryCheckableItem;->isEnabled:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 87
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const/4 v0, 0x0

    .line 88
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 89
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 90
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->checkable_item_left_icon:I

    if-ne v2, v3, :cond_0

    .line 91
    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/amazon/kcp/widget/LibraryCheckableItem;->icon:Landroid/widget/ImageView;

    goto :goto_1

    .line 92
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->checkable_item_title_image:I

    if-ne v2, v3, :cond_1

    .line 93
    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/amazon/kcp/widget/LibraryCheckableItem;->titleImage:Landroid/widget/ImageView;

    goto :goto_1

    .line 94
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->checkable_item_image_view:I

    if-ne v2, v3, :cond_2

    .line 95
    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/amazon/kcp/widget/LibraryCheckableItem;->checkMarker:Landroid/widget/ImageView;

    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->checkable_item_text_view:I

    if-ne v2, v3, :cond_3

    .line 97
    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/amazon/kcp/widget/LibraryCheckableItem;->labelTextView:Landroid/widget/TextView;

    goto :goto_1

    .line 98
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->checkable_item_count:I

    if-ne v2, v3, :cond_4

    .line 99
    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/amazon/kcp/widget/LibraryCheckableItem;->itemCount:Landroid/widget/TextView;

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 107
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/widget/LibraryCheckableItem;->checkMarker:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    invoke-super {p0, p1}, Lcom/amazon/kcp/cover/CheckableFrameLayout;->setChecked(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 128
    iput-boolean p1, p0, Lcom/amazon/kcp/widget/LibraryCheckableItem;->isEnabled:Z

    .line 129
    iget-object v0, p0, Lcom/amazon/kcp/widget/LibraryCheckableItem;->labelTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 130
    iget-object v0, p0, Lcom/amazon/kcp/widget/LibraryCheckableItem;->checkMarker:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 131
    iget-object v0, p0, Lcom/amazon/kcp/widget/LibraryCheckableItem;->itemCount:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 132
    invoke-direct {p0, p1}, Lcom/amazon/kcp/widget/LibraryCheckableItem;->setTitleImageEnabled(Z)V

    .line 133
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    return-void
.end method

.method public setIdentityObject(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lcom/amazon/kcp/widget/LibraryCheckableItem;->identityObject:Ljava/lang/Object;

    return-void
.end method

.method public setItemCount(J)V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/amazon/kcp/widget/LibraryCheckableItem;->itemCount:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/amazon/kcp/widget/LibraryCheckableItem;->itemCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/amazon/kcp/widget/LibraryCheckableItem;->labelTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleImage(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/amazon/kcp/widget/LibraryCheckableItem;->titleImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    iget-object v0, p0, Lcom/amazon/kcp/widget/LibraryCheckableItem;->titleImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    invoke-direct {p0, p1}, Lcom/amazon/kcp/widget/LibraryCheckableItem;->scaleTitleImage(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public toggle()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/amazon/kcp/widget/LibraryCheckableItem;->checkMarker:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/amazon/kcp/widget/LibraryCheckableItem;->checkMarker:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/widget/LibraryCheckableItem;->checkMarker:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    :goto_0
    invoke-super {p0}, Lcom/amazon/kcp/cover/CheckableFrameLayout;->toggle()V

    return-void
.end method
