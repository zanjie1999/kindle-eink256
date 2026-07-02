.class public Lcom/amazon/kcp/library/ui/MultiSelectSpinner;
.super Lcom/amazon/android/ui/UiFontTextView;
.source "MultiSelectSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/ui/MultiSelectSpinner$IMultiSelectSpinnerListener;
    }
.end annotation


# static fields
.field private static final DESELECT_ALL:I = 0x1

.field private static final SELECT_ALL:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private dropdrownIconResource:I

.field private listener:Lcom/amazon/kcp/library/ui/MultiSelectSpinner$IMultiSelectSpinnerListener;

.field private numSelected:I

.field private numTotal:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/amazon/kcp/library/ui/MultiSelectSpinner;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/ui/MultiSelectSpinner;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/amazon/android/ui/UiFontTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0, p2}, Lcom/amazon/kcp/library/ui/MultiSelectSpinner;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/ui/MultiSelectSpinner;)Lcom/amazon/kcp/library/ui/MultiSelectSpinner$IMultiSelectSpinnerListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/kcp/library/ui/MultiSelectSpinner;->listener:Lcom/amazon/kcp/library/ui/MultiSelectSpinner$IMultiSelectSpinnerListener;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/kcp/library/ui/MultiSelectSpinner;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/library/ui/MultiSelectSpinner;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/amazon/kcp/library/ui/MultiSelectSpinner;->numSelected:I

    return p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/library/ui/MultiSelectSpinner;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/amazon/kcp/library/ui/MultiSelectSpinner;->numTotal:I

    return p0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x1010393

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 47
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 49
    sget v0, Lcom/amazon/kindle/librarymodule/R$drawable;->dropdrown_icon:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/library/ui/MultiSelectSpinner;->dropdrownIconResource:I

    .line 51
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private updateText()V
    .locals 6

    .line 114
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->selected_count:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/amazon/kcp/library/ui/MultiSelectSpinner;->numSelected:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/amazon/kindle/librarymodule/R$string;->selected_count_accessibility:I

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/amazon/kcp/library/ui/MultiSelectSpinner;->numSelected:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 119
    iget v0, p0, Lcom/amazon/kcp/library/ui/MultiSelectSpinner;->numSelected:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/amazon/kcp/library/ui/MultiSelectSpinner;->numTotal:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p0, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    .line 121
    :cond_1
    :goto_0
    iget v0, p0, Lcom/amazon/kcp/library/ui/MultiSelectSpinner;->dropdrownIconResource:I

    invoke-virtual {p0, v5, v5, v0, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getNumSelected()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/amazon/kcp/library/ui/MultiSelectSpinner;->numSelected:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 56
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 57
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/MultiSelectSpinner;->updateText()V

    .line 59
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 60
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->select_all:I

    const/4 v3, 0x0

    invoke-interface {v1, v3, v3, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 61
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->deselect_all:I

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 62
    new-instance v1, Lcom/amazon/kcp/library/ui/MultiSelectSpinner$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/ui/MultiSelectSpinner$1;-><init>(Lcom/amazon/kcp/library/ui/MultiSelectSpinner;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 85
    new-instance v1, Lcom/amazon/kcp/library/ui/MultiSelectSpinner$2;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kcp/library/ui/MultiSelectSpinner$2;-><init>(Lcom/amazon/kcp/library/ui/MultiSelectSpinner;Landroid/widget/PopupMenu;)V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setListener(Lcom/amazon/kcp/library/ui/MultiSelectSpinner$IMultiSelectSpinnerListener;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/MultiSelectSpinner;->listener:Lcom/amazon/kcp/library/ui/MultiSelectSpinner$IMultiSelectSpinnerListener;

    return-void
.end method

.method public setNumSelected(II)V
    .locals 0

    .line 108
    iput p1, p0, Lcom/amazon/kcp/library/ui/MultiSelectSpinner;->numSelected:I

    .line 109
    iput p2, p0, Lcom/amazon/kcp/library/ui/MultiSelectSpinner;->numTotal:I

    .line 110
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/MultiSelectSpinner;->updateText()V

    return-void
.end method
