.class public Lcom/amazon/klo/KLOHeaderBar;
.super Ljava/lang/Object;
.source "KLOHeaderBar.java"

# interfaces
.implements Lcom/amazon/klo/IKLOHeaderBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/klo/KLOHeaderBar$KLOChapterListAdapter;
    }
.end annotation


# instance fields
.field private actionBar:Landroidx/appcompat/app/ActionBar;

.field private chapterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ignoreFirstHit:Z

.field private kloChapterOnItemSelectedListener:Lcom/amazon/klo/IKLOHeaderBar$IKLOOnNavigationMenuItemClickListener;

.field private listView:Landroid/widget/ListView;

.field private selectedIndex:I

.field private subTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/amazon/klo/KLOHeaderBar;->ignoreFirstHit:Z

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/amazon/klo/KLOHeaderBar;->selectedIndex:I

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/amazon/klo/KLOHeaderBar;->subTitle:Landroid/widget/TextView;

    .line 32
    iput-object v0, p0, Lcom/amazon/klo/KLOHeaderBar;->listView:Landroid/widget/ListView;

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/klo/KLOHeaderBar;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/klo/KLOHeaderBar;->chapterList:Ljava/util/List;

    return-object p0
.end method

.method private setSelectedIndex(I)V
    .locals 2

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 131
    :goto_0
    iput p1, p0, Lcom/amazon/klo/KLOHeaderBar;->selectedIndex:I

    .line 132
    iget-object v0, p0, Lcom/amazon/klo/KLOHeaderBar;->listView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 134
    invoke-direct {p0}, Lcom/amazon/klo/KLOHeaderBar;->updateHeaderMenuSubtitle()V

    return-void
.end method

.method private updateHeaderMenuSubtitle()V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/amazon/klo/KLOHeaderBar;->subTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amazon/klo/KLOHeaderBar;->chapterList:Ljava/util/List;

    iget v2, p0, Lcom/amazon/klo/KLOHeaderBar;->selectedIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getSelectedChapterPosition()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/amazon/klo/KLOHeaderBar;->selectedIndex:I

    return v0
.end method

.method public loadContent(Landroidx/appcompat/app/ActionBarActivity;Ljava/util/List;ZILcom/amazon/klo/IKLOHeaderBar$IKLOOnNavigationMenuItemClickListener;Lcom/amazon/klo/IKLOHeaderBar$IKLOOnHeaderActionBarClickListener;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/app/ActionBarActivity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZI",
            "Lcom/amazon/klo/IKLOHeaderBar$IKLOOnNavigationMenuItemClickListener;",
            "Lcom/amazon/klo/IKLOHeaderBar$IKLOOnHeaderActionBarClickListener;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 59
    iput-object p2, p0, Lcom/amazon/klo/KLOHeaderBar;->chapterList:Ljava/util/List;

    .line 61
    iput-object p5, p0, Lcom/amazon/klo/KLOHeaderBar;->kloChapterOnItemSelectedListener:Lcom/amazon/klo/IKLOHeaderBar$IKLOOnNavigationMenuItemClickListener;

    .line 62
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p5

    iput-object p5, p0, Lcom/amazon/klo/KLOHeaderBar;->actionBar:Landroidx/appcompat/app/ActionBar;

    const-string p5, "layout_inflater"

    .line 64
    invoke-virtual {p1, p5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/view/LayoutInflater;

    .line 66
    sget p6, Lcom/amazon/klo/R$layout;->klo_header:I

    const/4 v0, 0x0

    invoke-virtual {p5, p6, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p6

    .line 67
    sget v1, Lcom/amazon/klo/R$layout;->klo_dropdown:I

    invoke-virtual {p5, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p5

    .line 68
    sget v0, Lcom/amazon/klo/R$id;->klo_dropdown_list:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/amazon/klo/KLOHeaderBar;->listView:Landroid/widget/ListView;

    .line 69
    new-instance v1, Lcom/amazon/klo/KLOHeaderBar$KLOChapterListAdapter;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/klo/KLOHeaderBar$KLOChapterListAdapter;-><init>(Lcom/amazon/klo/KLOHeaderBar;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    iget-object p2, p0, Lcom/amazon/klo/KLOHeaderBar;->listView:Landroid/widget/ListView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 73
    sget p2, Lcom/amazon/klo/R$id;->dropdown:I

    invoke-virtual {p6, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 74
    sget v1, Lcom/amazon/klo/R$id;->nav_spinner_subtitle:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/amazon/klo/KLOHeaderBar;->subTitle:Landroid/widget/TextView;

    .line 76
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 77
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v1, p5, v2, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 79
    invoke-virtual {v1, p5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 80
    sget p5, Lcom/amazon/klo/R$dimen;->klo_action_bar_dropdown_width:I

    invoke-virtual {p1, p5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p5

    float-to-int p5, p5

    invoke-virtual {v1, p5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 82
    new-instance p5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p5}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, p5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 84
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 86
    new-instance p5, Lcom/amazon/klo/KLOHeaderBar$1;

    invoke-direct {p5, p0, v1, p2, p1}, Lcom/amazon/klo/KLOHeaderBar$1;-><init>(Lcom/amazon/klo/KLOHeaderBar;Landroid/widget/PopupWindow;Landroid/view/View;Landroid/content/res/Resources;)V

    invoke-virtual {p2, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object p1, p0, Lcom/amazon/klo/KLOHeaderBar;->listView:Landroid/widget/ListView;

    new-instance p2, Lcom/amazon/klo/KLOHeaderBar$2;

    invoke-direct {p2, p0, v1}, Lcom/amazon/klo/KLOHeaderBar$2;-><init>(Lcom/amazon/klo/KLOHeaderBar;Landroid/widget/PopupWindow;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 107
    iget-object p1, p0, Lcom/amazon/klo/KLOHeaderBar;->actionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 108
    iget-object p1, p0, Lcom/amazon/klo/KLOHeaderBar;->actionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {p1, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 109
    iget-object p1, p0, Lcom/amazon/klo/KLOHeaderBar;->actionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 110
    iget-object p1, p0, Lcom/amazon/klo/KLOHeaderBar;->actionBar:Landroidx/appcompat/app/ActionBar;

    sget p2, Lcom/amazon/klo/R$string;->klo_XR4T:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 111
    iget-object p1, p0, Lcom/amazon/klo/KLOHeaderBar;->actionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {p1, v3}, Landroidx/appcompat/app/ActionBar;->setNavigationMode(I)V

    .line 112
    iget-object p1, p0, Lcom/amazon/klo/KLOHeaderBar;->actionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {p1, p6}, Landroidx/appcompat/app/ActionBar;->setCustomView(Landroid/view/View;)V

    if-eqz p3, :cond_0

    const/4 p4, 0x0

    .line 118
    :cond_0
    invoke-direct {p0, p4}, Lcom/amazon/klo/KLOHeaderBar;->setSelectedIndex(I)V

    .line 120
    iget-object p1, p0, Lcom/amazon/klo/KLOHeaderBar;->chapterList:Ljava/util/List;

    iget p2, p0, Lcom/amazon/klo/KLOHeaderBar;->selectedIndex:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public onNavigationItemSelected(IJ)Z
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/amazon/klo/KLOHeaderBar;->setSelectedIndex(I)V

    .line 38
    iget-object p2, p0, Lcom/amazon/klo/KLOHeaderBar;->kloChapterOnItemSelectedListener:Lcom/amazon/klo/IKLOHeaderBar$IKLOOnNavigationMenuItemClickListener;

    iget-object p3, p0, Lcom/amazon/klo/KLOHeaderBar;->chapterList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2, p3, p1}, Lcom/amazon/klo/IKLOHeaderBar$IKLOOnNavigationMenuItemClickListener;->onNavigationMenuItemClick(Ljava/lang/String;I)Z

    const/4 p1, 0x1

    return p1
.end method

.method public restoreChapterSelection(I)Ljava/lang/String;
    .locals 1

    if-gez p1, :cond_1

    .line 46
    iget-object v0, p0, Lcom/amazon/klo/KLOHeaderBar;->chapterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    return-object p1

    .line 48
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/amazon/klo/KLOHeaderBar;->setSelectedIndex(I)V

    .line 49
    iget-object v0, p0, Lcom/amazon/klo/KLOHeaderBar;->chapterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
