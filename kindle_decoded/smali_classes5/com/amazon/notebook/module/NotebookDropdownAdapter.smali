.class public Lcom/amazon/notebook/module/NotebookDropdownAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "NotebookDropdownAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;,
        Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;
    }
.end annotation


# static fields
.field private static final GROUP_INDENTATION_LEVEL:I = 0x0

.field private static final ITEM_INDENTATION_LEVEL:I = 0x1

.field private static countViewAlpha:F

.field private static isTouched:Ljava/lang/Boolean;


# instance fields
.field private final MAX_CHILDREN_PER_GROUP:I

.field private final SUB_FILTER_ITEM_INDENTATION:I

.field private context:Landroid/content/Context;

.field private hasDarkBackground:Z

.field private header:Lcom/amazon/notebook/module/BaseNotebookHeaderBar;

.field private inflater:Landroid/view/LayoutInflater;

.field private isTablet:Z

.field notebookNoteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

.field private themeProvider:Lcom/amazon/notebook/ThemeProvider;

.field private topLevelFilter:Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->isTouched:Ljava/lang/Boolean;

    const v0, 0x3f0a3d71    # 0.54f

    .line 35
    sput v0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->countViewAlpha:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/notebook/module/BaseNotebookHeaderBar;ZLcom/amazon/notebook/module/NotebookNoteTools;Lcom/amazon/notebook/ThemeProvider;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    const/16 p3, 0x400

    .line 30
    iput p3, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->MAX_CHILDREN_PER_GROUP:I

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/amazon/notebook/module/R$dimen;->notebook_header_drop_down_indentation:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->SUB_FILTER_ITEM_INDENTATION:I

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    iput-object p3, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 49
    iput-object p2, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->topLevelFilter:Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    .line 50
    iput-object p7, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->themeProvider:Lcom/amazon/notebook/ThemeProvider;

    .line 51
    invoke-interface {p7}, Lcom/amazon/notebook/ThemeProvider;->isDarkThemed()Z

    move-result p2

    iput-boolean p2, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->hasDarkBackground:Z

    .line 52
    iput-object p6, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->notebookNoteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

    .line 53
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->context:Landroid/content/Context;

    .line 54
    iput-object p4, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->header:Lcom/amazon/notebook/module/BaseNotebookHeaderBar;

    .line 55
    iput-boolean p5, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->isTablet:Z

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Boolean;
    .locals 1

    .line 29
    sget-object v0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->isTouched:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 29
    sput-object p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->isTouched:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/notebook/module/NotebookDropdownAdapter;)Lcom/amazon/notebook/module/BaseNotebookHeaderBar;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->header:Lcom/amazon/notebook/module/BaseNotebookHeaderBar;

    return-object p0
.end method

.method private getChildren(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;",
            ">;"
        }
    .end annotation

    .line 63
    invoke-virtual {p0, p1}, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    invoke-virtual {p1}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->getSubFilters()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->topLevelFilter:Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->getSubFilters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getItemView(Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 5

    const/4 p4, 0x0

    if-nez p2, :cond_1

    .line 123
    iget-object p2, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/amazon/notebook/module/R$layout;->notebook_module_dropdown_item:I

    invoke-virtual {p2, v0, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 125
    new-instance p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;-><init>(Lcom/amazon/notebook/module/NotebookDropdownAdapter;Lcom/amazon/notebook/module/NotebookDropdownAdapter$1;)V

    .line 126
    sget v0, Lcom/amazon/notebook/module/R$id;->module_filter_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 127
    sget v0, Lcom/amazon/notebook/module/R$id;->module_filter_toggle:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->toggle:Landroidx/appcompat/widget/SwitchCompat;

    .line 128
    sget v0, Lcom/amazon/notebook/module/R$id;->module_filter_checked:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->checkmark:Landroid/widget/ImageView;

    .line 129
    sget v0, Lcom/amazon/notebook/module/R$id;->module_filter_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->label:Landroid/widget/TextView;

    .line 130
    sget v0, Lcom/amazon/notebook/module/R$id;->module_filter_count:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->countView:Landroid/widget/TextView;

    .line 131
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 135
    iget-object v0, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->toggle:Landroidx/appcompat/widget/SwitchCompat;

    sget v1, Lcom/amazon/notebook/module/R$drawable;->ruby_switch_track_light:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setTrackResource(I)V

    .line 138
    :cond_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;

    .line 143
    :goto_0
    sget v0, Lcom/amazon/notebook/module/R$id;->notebook_filter_divider:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 144
    iget-object v1, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->label:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/notebook/module/R$string;->notebook_module_filter_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x8

    if-nez v1, :cond_3

    iget-object v1, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->label:Landroid/widget/TextView;

    .line 145
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/notebook/module/R$string;->notebook_module_starred:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->label:Landroid/widget/TextView;

    .line 146
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/notebook/module/R$string;->notebook_highlights_all:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->label:Landroid/widget/TextView;

    .line 147
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/notebook/module/R$string;->notebook_module_chapters_all_chapters:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 155
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 148
    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->hasDarkBackground:Z

    if-eqz v1, :cond_4

    const v1, -0xbfbfc0

    .line 149
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    :cond_4
    const v1, -0x1f1f20

    .line 151
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 153
    :goto_2
    invoke-virtual {v0, p4}, Landroid/view/View;->setVisibility(I)V

    .line 160
    :goto_3
    iget-object v0, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->label:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/amazon/notebook/module/R$string;->notebook_module_chapters_all_chapters:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->label:Landroid/widget/TextView;

    .line 161
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/amazon/notebook/module/R$string;->notebook_module_bookmark:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->label:Landroid/widget/TextView;

    .line 162
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/amazon/notebook/module/R$string;->notebook_module_notes:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->label:Landroid/widget/TextView;

    .line 163
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/amazon/notebook/module/R$string;->notebook_module_starred:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->label:Landroid/widget/TextView;

    .line 164
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/amazon/notebook/module/R$string;->notebook_highlights_all:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->label:Landroid/widget/TextView;

    .line 165
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/amazon/notebook/module/R$string;->notebook_module_filter_title:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->label:Landroid/widget/TextView;

    .line 166
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/amazon/notebook/module/R$string;->notebook_module_phl_title:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    .line 170
    :cond_5
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/notebook/module/R$dimen;->notebook_dropdown_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p2, v0, v1, p4, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_5

    .line 168
    :cond_6
    :goto_4
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p2, p4, v0, p4, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 173
    :goto_5
    iget-object v0, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->label:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->getFilterText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->toggle:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/amazon/notebook/module/NotebookDropdownAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$1;-><init>(Lcom/amazon/notebook/module/NotebookDropdownAdapter;Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 188
    iget-object v0, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->toggle:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/amazon/notebook/module/NotebookDropdownAdapter$2;

    invoke-direct {v1, p0}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$2;-><init>(Lcom/amazon/notebook/module/NotebookDropdownAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 196
    invoke-virtual {p1}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 197
    invoke-virtual {p1}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->isStarFilter()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 198
    iget-object v0, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->toggle:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, p4}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 199
    iget-object v0, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->toggle:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 200
    iget-object v0, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->checkmark:Landroid/widget/ImageView;

    sget v3, Lcom/amazon/notebook/module/R$color;->transparent:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 201
    iget-object v0, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->checkmark:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 203
    :cond_7
    iget-object v0, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->toggle:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 204
    iget-object v0, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->checkmark:Landroid/widget/ImageView;

    sget v3, Lcom/amazon/notebook/module/R$drawable;->ic_selected_check_light:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 205
    iget-object v0, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->checkmark:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    :goto_6
    iget-object v0, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->checkmark:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 208
    iget-object v0, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->checkmark:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/amazon/notebook/module/R$string;->notebook_module_filter_selected:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 210
    :cond_8
    invoke-virtual {p1}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->isStarFilter()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 211
    iget-object v0, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->toggle:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, p4}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 212
    iget-object v0, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->toggle:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, p4}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 213
    iget-object v0, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->toggle:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setImportantForAccessibility(I)V

    .line 214
    iget-object v0, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->checkmark:Landroid/widget/ImageView;

    sget v1, Lcom/amazon/notebook/module/R$color;->transparent:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    iget-object v0, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->checkmark:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    .line 217
    :cond_9
    iget-object v0, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->toggle:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 218
    iget-object v0, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->checkmark:Landroid/widget/ImageView;

    sget v1, Lcom/amazon/notebook/module/R$color;->transparent:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 219
    iget-object v0, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->checkmark:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    :goto_7
    iget-object v0, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->checkmark:Landroid/widget/ImageView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 224
    :goto_8
    iget-object v0, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->label:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->context:Landroid/content/Context;

    sget v3, Lcom/amazon/notebook/module/R$string;->notebook_module_chapters_all_chapters:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->label:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->context:Landroid/content/Context;

    sget v3, Lcom/amazon/notebook/module/R$string;->notebook_module_filter_title:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->label:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->context:Landroid/content/Context;

    sget v3, Lcom/amazon/notebook/module/R$string;->notebook_module_starred:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_a

    .line 227
    :cond_a
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->notebookNoteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookNoteTools;->getFilterCount()Ljava/util/Map;

    move-result-object v0

    .line 228
    iget-object v1, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->countView:Landroid/widget/TextView;

    sget v2, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->countViewAlpha:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 229
    invoke-virtual {p1}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->getFilterText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 230
    invoke-virtual {p1}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->getFilterText()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 231
    iget-object v0, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->countView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 233
    :cond_b
    iget-object p1, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->countView:Landroid/widget/TextView;

    const-string v0, "(0)"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    :goto_9
    iget-object p1, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->countView:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b

    .line 225
    :cond_c
    :goto_a
    iget-object p1, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->countView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    :goto_b
    iget-object p1, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->label:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p4, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/notebook/module/R$string;->notebook_module_filter_title:I

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 239
    iget-object p1, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->label:Landroid/widget/TextView;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p4

    invoke-interface {p4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object p4

    sget-object v0, Lcom/mobipocket/android/drawing/FontFamily;->EMBERBOLD:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {p4, v0}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 242
    :cond_d
    iget-boolean p1, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->hasDarkBackground:Z

    if-eqz p1, :cond_e

    .line 243
    iget-object p1, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->label:Landroid/widget/TextView;

    const/4 p4, -0x1

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 244
    iget-object p1, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->countView:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_c

    .line 247
    :cond_e
    iget-object p1, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->label:Landroid/widget/TextView;

    const/high16 p4, -0x1000000

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 248
    iget-object p1, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->countView:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 252
    :goto_c
    iget-boolean p1, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->isTablet:Z

    if-eqz p1, :cond_10

    .line 253
    iget-object p1, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_f

    .line 254
    iget-object p1, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->label:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/amazon/notebook/module/R$dimen;->notebook_dropdown_highlight_max_width:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_d

    .line 256
    :cond_f
    iget-object p1, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->label:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/amazon/notebook/module/R$dimen;->notebook_dropdown_text_max_width:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_d

    .line 259
    :cond_10
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->context:Landroid/content/Context;

    const-string/jumbo p4, "window"

    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 260
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 261
    new-instance p4, Landroid/graphics/Point;

    invoke-direct {p4}, Landroid/graphics/Point;-><init>()V

    .line 262
    invoke-virtual {p1, p4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 263
    iget p1, p4, Landroid/graphics/Point;->x:I

    .line 264
    iget-object p3, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->label:Landroid/widget/TextView;

    mul-int/lit8 p1, p1, 0x4

    div-int/lit8 p1, p1, 0x7

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 266
    :goto_d
    invoke-virtual {p0}, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->update()V

    return-object p2
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->getChildren(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getChildId(II)J
    .locals 0

    mul-int/lit16 p1, p1, 0x400

    add-int/2addr p1, p2

    int-to-long p1, p1

    return-wide p1
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    .line 82
    invoke-direct {p0, p1, p4, p5, p2}, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->getItemView(Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p2

    .line 84
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;

    .line 86
    invoke-virtual {p1}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 88
    iget-object p4, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object p1, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object p1, p3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public getChildrenCount(I)I
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->getChildren(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    .line 105
    invoke-direct {p0}, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->getGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getGroupCount()I
    .locals 1

    .line 110
    invoke-direct {p0}, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->getGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    mul-int/lit16 p1, p1, 0x400

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 273
    invoke-virtual {p0, p1}, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 276
    invoke-direct {p0, v0, p3, p4, v1}, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->getItemView(Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p3

    .line 278
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;

    .line 280
    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    iget-object p1, p4, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 283
    iget-object p1, p4, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 285
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->getChildrenCount(I)I

    move-result p1

    if-lez p1, :cond_2

    .line 286
    iget-object p1, p4, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->checkmark:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p2, :cond_1

    .line 290
    iget-object p1, p4, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->checkmark:Landroid/widget/ImageView;

    sget p2, Lcom/amazon/notebook/module/R$drawable;->drop_arrow_up:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 293
    :cond_1
    iget-object p1, p4, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->checkmark:Landroid/widget/ImageView;

    sget p2, Lcom/amazon/notebook/module/R$drawable;->drop_arrow_down:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 296
    :cond_2
    :goto_0
    iget-object p1, p4, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    :goto_1
    return-object p3
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public update()V
    .locals 0

    .line 313
    invoke-virtual {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    return-void
.end method
