.class public Lcom/amazon/nwstd/toc/TOCViewForStandAlone;
.super Lcom/amazon/nwstd/toc/TOCView;
.source "TOCViewForStandAlone.java"


# instance fields
.field protected mAlertBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

.field protected mAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mSectionListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 63
    invoke-direct {p0, p1}, Lcom/amazon/nwstd/toc/TOCView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/amazon/nwstd/toc/TOCViewForStandAlone;->mContext:Landroid/content/Context;

    .line 51
    iput-object v0, p0, Lcom/amazon/nwstd/toc/TOCViewForStandAlone;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 64
    iput-object p1, p0, Lcom/amazon/nwstd/toc/TOCViewForStandAlone;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/amazon/nwstd/toc/TOCView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 41
    iput-object p2, p0, Lcom/amazon/nwstd/toc/TOCViewForStandAlone;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/amazon/nwstd/toc/TOCViewForStandAlone;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 74
    iput-object p1, p0, Lcom/amazon/nwstd/toc/TOCViewForStandAlone;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/nwstd/toc/TOCViewForStandAlone;)Landroid/widget/ListView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/nwstd/toc/TOCViewForStandAlone;->mSectionListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/nwstd/toc/TOCViewForStandAlone;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/nwstd/toc/TOCViewForStandAlone;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 209
    invoke-super {p0}, Lcom/amazon/nwstd/toc/TOCView;->destroy()V

    .line 210
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCViewForStandAlone;->mSectionListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 211
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 212
    iput-object v1, p0, Lcom/amazon/nwstd/toc/TOCViewForStandAlone;->mSectionListView:Landroid/widget/ListView;

    :cond_0
    return-void
.end method

.method protected getLayoutView()Landroid/view/ViewGroup;
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCView;->mBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    if-ne v0, v1, :cond_0

    .line 89
    sget v0, Lcom/amazon/kindle/newsstand/forstandalone/R$id;->periodical_toc_magazine:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0

    .line 91
    :cond_0
    sget v0, Lcom/amazon/kindle/newsstand/forstandalone/R$id;->periodical_toc_newspaper:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public initialize(Lcom/amazon/nwstd/toc/IPeriodicalTOC;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/android/system/drawing/AndroidImageFactory;Z)V
    .locals 0

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Lcom/amazon/nwstd/toc/TOCView;->initialize(Lcom/amazon/nwstd/toc/IPeriodicalTOC;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/android/system/drawing/AndroidImageFactory;Z)V

    .line 81
    invoke-virtual {p0}, Lcom/amazon/nwstd/toc/TOCViewForStandAlone;->prepareSectionListView()V

    return-void
.end method

.method public prepareSectionListView()V
    .locals 6

    .line 106
    invoke-virtual {p0}, Lcom/amazon/nwstd/toc/TOCViewForStandAlone;->getLayoutView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    sget v1, Lcom/amazon/kindle/newsstand/forstandalone/R$id;->periodical_toc_section_btn:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/amazon/nwstd/toc/TOCView;->mPeriodicalToc:Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    invoke-interface {v1}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getTOCSections()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    const/16 v1, 0x8

    .line 114
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/amazon/kindle/newsstand/forstandalone/R$layout;->section_list_view:I

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/amazon/nwstd/toc/TOCViewForStandAlone;->mSectionListView:Landroid/widget/ListView;

    .line 117
    new-instance v3, Lcom/amazon/kcp/periodicals/model/SectionListAdapter;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/nwstd/toc/TOCView;->mPeriodicalToc:Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    invoke-direct {v3, v4, v5}, Lcom/amazon/kcp/periodicals/model/SectionListAdapter;-><init>(Landroid/content/Context;Lcom/amazon/nwstd/toc/IPeriodicalTOC;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amazon/nwstd/toc/TOCViewForStandAlone;->mAlertBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 120
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 121
    iget-object v1, p0, Lcom/amazon/nwstd/toc/TOCViewForStandAlone;->mSectionListView:Landroid/widget/ListView;

    const-string v2, "#FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 122
    iget-object v1, p0, Lcom/amazon/nwstd/toc/TOCViewForStandAlone;->mSectionListView:Landroid/widget/ListView;

    new-instance v2, Lcom/amazon/nwstd/toc/TOCViewForStandAlone$1;

    invoke-direct {v2, p0}, Lcom/amazon/nwstd/toc/TOCViewForStandAlone$1;-><init>(Lcom/amazon/nwstd/toc/TOCViewForStandAlone;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 139
    iget-object v1, p0, Lcom/amazon/nwstd/toc/TOCViewForStandAlone;->mSectionListView:Landroid/widget/ListView;

    new-instance v2, Lcom/amazon/nwstd/toc/TOCViewForStandAlone$2;

    invoke-direct {v2, p0}, Lcom/amazon/nwstd/toc/TOCViewForStandAlone$2;-><init>(Lcom/amazon/nwstd/toc/TOCViewForStandAlone;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 157
    new-instance v1, Lcom/amazon/nwstd/toc/TOCViewForStandAlone$3;

    invoke-direct {v1, p0}, Lcom/amazon/nwstd/toc/TOCViewForStandAlone$3;-><init>(Lcom/amazon/nwstd/toc/TOCViewForStandAlone;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method
