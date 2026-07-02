.class public Lcom/amazon/kcp/library/ui/bottombar/BottomBar;
.super Landroid/widget/LinearLayout;
.source "BottomBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DEFAULT_SELECTED_INDEX:I = -0x1

.field private static final STATE_CURRENT_SELECTED_INDEX:Ljava/lang/String; = "STATE_BOTTOM_BAR_CURRENT_SELECTED_INDEX"

.field private static final STATE_SUPER_INSTANCE_STATE:Ljava/lang/String; = "STATE_BOTTOM_BAR_SUPER_INSTANCE_STATE"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final buttonViews:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kcp/library/ui/bottombar/BottomBarButton;",
            ">;"
        }
    .end annotation
.end field

.field private currentSelectedIndex:I

.field private listener:Lcom/amazon/kcp/library/ui/bottombar/IBottomBarListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/amazon/kcp/library/ui/bottombar/BottomBar;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/ui/bottombar/BottomBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/library/ui/bottombar/BottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 36
    iput p1, p0, Lcom/amazon/kcp/library/ui/bottombar/BottomBar;->currentSelectedIndex:I

    .line 39
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/ui/bottombar/BottomBar;->buttonViews:Ljava/util/Set;

    return-void
.end method

.method private areLabelsVisible()Z
    .locals 3

    .line 291
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/bottombar/BottomBar;->buttonViews:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/ui/bottombar/BottomBarButton;

    .line 292
    invoke-virtual {v1}, Lcom/amazon/kcp/library/ui/bottombar/BottomBarButton;->getLabelVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private shouldShowLabels()Z
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/bottombar/BottomBar;->buttonViews:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/ui/bottombar/BottomBarButton;

    .line 282
    invoke-virtual {v1}, Lcom/amazon/kcp/library/ui/bottombar/BottomBarButton;->getShouldHideLabel()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private showOrHideAllButtonLabels(Z)V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/bottombar/BottomBar;->buttonViews:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/ui/bottombar/BottomBarButton;

    .line 301
    invoke-virtual {v1, p1}, Lcom/amazon/kcp/library/ui/bottombar/BottomBarButton;->showOrHideLabel(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addItem(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;IZ)V
    .locals 1

    if-ltz p3, :cond_1

    .line 94
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-gt p3, v0, :cond_1

    .line 98
    invoke-virtual {p0, p1, p2, p4}, Lcom/amazon/kcp/library/ui/bottombar/BottomBar;->createButton(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Z)Lcom/amazon/kcp/library/ui/bottombar/BottomBarButton;

    move-result-object p1

    .line 99
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object p2, p0, Lcom/amazon/kcp/library/ui/bottombar/BottomBar;->buttonViews:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {p0, p1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 103
    iget p1, p0, Lcom/amazon/kcp/library/ui/bottombar/BottomBar;->currentSelectedIndex:I

    if-lt p1, p3, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 104
    iput p1, p0, Lcom/amazon/kcp/library/ui/bottombar/BottomBar;->currentSelectedIndex:I

    :cond_0
    return-void

    .line 95
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public addItem(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Z)V
    .locals 1

    .line 115
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/amazon/kcp/library/ui/bottombar/BottomBar;->addItem(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;IZ)V

    return-void
.end method

.method public addItem(Landroid/view/View;I)V
    .locals 1

    if-ltz p2, :cond_1

    .line 135
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-gt p2, v0, :cond_1

    .line 139
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 141
    iget p1, p0, Lcom/amazon/kcp/library/ui/bottombar/BottomBar;->currentSelectedIndex:I

    if-lt p1, p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 142
    iput p1, p0, Lcom/amazon/kcp/library/ui/bottombar/BottomBar;->currentSelectedIndex:I

    :cond_0
    return-void

    .line 136
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method createButton(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Z)Lcom/amazon/kcp/library/ui/bottombar/BottomBarButton;
    .locals 4

    .line 69
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 70
    sget v1, Lcom/amazon/kindle/librarymodule/R$layout;->bottom_bar_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/ui/bottombar/BottomBarButton;

    .line 71
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->label:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 72
    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->icon:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 75
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    :cond_0
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->tab:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v2

    invoke-virtual {p1, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setActivated(Z)V

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->isActivated()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->demo_mode_settings_disabled:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 189
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 193
    invoke-virtual {p0, p1, v1}, Lcom/amazon/kcp/library/ui/bottombar/BottomBar;->selectButtonAt(IZ)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 267
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 269
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/bottombar/BottomBar;->shouldShowLabels()Z

    move-result v0

    .line 270
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/bottombar/BottomBar;->areLabelsVisible()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 272
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/ui/bottombar/BottomBar;->showOrHideAllButtonLabels(Z)V

    .line 275
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 251
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 252
    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_0

    .line 255
    iget v0, p0, Lcom/amazon/kcp/library/ui/bottombar/BottomBar;->currentSelectedIndex:I

    const-string v1, "STATE_BOTTOM_BAR_CURRENT_SELECTED_INDEX"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    .line 256
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/library/ui/bottombar/BottomBar;->selectButtonAt(IZ)V

    :cond_0
    const-string v0, "STATE_BOTTOM_BAR_SUPER_INSTANCE_STATE"

    .line 259
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 261
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 241
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 242
    iget v1, p0, Lcom/amazon/kcp/library/ui/bottombar/BottomBar;->currentSelectedIndex:I

    const-string v2, "STATE_BOTTOM_BAR_CURRENT_SELECTED_INDEX"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 243
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "STATE_BOTTOM_BAR_SUPER_INSTANCE_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public selectButtonAt(IZ)V
    .locals 4

    if-ltz p1, :cond_4

    .line 208
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 212
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 214
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/bottombar/BottomBar;->buttonViews:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 215
    iget v1, p0, Lcom/amazon/kcp/library/ui/bottombar/BottomBar;->currentSelectedIndex:I

    const-string v2, "A button at "

    if-ne v1, p1, :cond_1

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is reselected."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    iget-object p1, p0, Lcom/amazon/kcp/library/ui/bottombar/BottomBar;->listener:Lcom/amazon/kcp/library/ui/bottombar/IBottomBarListener;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 218
    iget p2, p0, Lcom/amazon/kcp/library/ui/bottombar/BottomBar;->currentSelectedIndex:I

    invoke-interface {p1, p2}, Lcom/amazon/kcp/library/ui/bottombar/IBottomBarListener;->onItemReselected(I)V

    :cond_0
    return-void

    .line 224
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    .line 226
    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 229
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is selected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v1, 0x1

    .line 230
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 231
    iput p1, p0, Lcom/amazon/kcp/library/ui/bottombar/BottomBar;->currentSelectedIndex:I

    .line 232
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/bottombar/BottomBar;->listener:Lcom/amazon/kcp/library/ui/bottombar/IBottomBarListener;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 233
    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/ui/bottombar/IBottomBarListener;->onItemSelected(I)V

    :cond_3
    return-void

    .line 209
    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public setBottomBarListener(Lcom/amazon/kcp/library/ui/bottombar/IBottomBarListener;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/bottombar/BottomBar;->listener:Lcom/amazon/kcp/library/ui/bottombar/IBottomBarListener;

    return-void
.end method
