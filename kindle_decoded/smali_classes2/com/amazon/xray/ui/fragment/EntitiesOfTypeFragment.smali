.class public Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;
.super Lcom/amazon/xray/ui/fragment/XrayFragment;
.source "EntitiesOfTypeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$EntityListOnScrollListener;,
        Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$EntityListOnItemClickListener;,
        Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$SortTypeOnChangeListener;,
        Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$SortOnMenuItemClickListener;,
        Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$SortButtonOnClickListener;,
        Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$LoaderStrategy;,
        Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENTITY_TYPE:I = 0x0

.field private static final LOAD_TIMEOUT_MS:J = 0x4bL

.field private static final STATE_ENTITY_SORT_TYPE:Ljava/lang/String; = "entitySortType"

.field private static final STATE_LIST_OFFSET:Ljava/lang/String; = "listOffset"

.field private static final STATE_LIST_POSITION:Ljava/lang/String; = "listPosition"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private entityListOnItemClickListener:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$EntityListOnItemClickListener;

.field private entityTypeId:I

.field private holder:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;

.field private listAdapter:Lcom/amazon/xray/ui/adapter/EntityGroupListAdapter;

.field private listOffset:I

.field private listPosition:I

.field private final loader:Lcom/amazon/xray/model/loader/ContentLoader;

.field private final sortChangeListener:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$SortTypeOnChangeListener;

.field private sortPopupMenu:Landroid/widget/PopupMenu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 44
    invoke-direct {p0}, Lcom/amazon/xray/ui/fragment/XrayFragment;-><init>()V

    .line 64
    new-instance v0, Lcom/amazon/xray/model/loader/ContentLoader;

    new-instance v1, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$LoaderStrategy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$LoaderStrategy;-><init>(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$1;)V

    invoke-direct {v0, v1}, Lcom/amazon/xray/model/loader/ContentLoader;-><init>(Lcom/amazon/xray/model/loader/ContentLoader$Strategy;)V

    iput-object v0, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->loader:Lcom/amazon/xray/model/loader/ContentLoader;

    .line 67
    new-instance v0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$SortTypeOnChangeListener;

    invoke-direct {v0, p0, v2}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$SortTypeOnChangeListener;-><init>(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$1;)V

    iput-object v0, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->sortChangeListener:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$SortTypeOnChangeListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;)Lcom/amazon/xray/model/loader/ContentLoader;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->loader:Lcom/amazon/xray/model/loader/ContentLoader;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->listPosition:I

    return p1
.end method

.method static synthetic access$1202(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->listOffset:I

    return p1
.end method

.method static synthetic access$500(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->entityTypeId:I

    return p0
.end method

.method static synthetic access$600(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;Ljava/util/List;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->configureView(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;)Landroid/widget/PopupMenu;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->sortPopupMenu:Landroid/widget/PopupMenu;

    return-object p0
.end method

.method static synthetic access$702(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->sortPopupMenu:Landroid/widget/PopupMenu;

    return-object p1
.end method

.method static synthetic access$800(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;)Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->holder:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;

    return-object p0
.end method

.method private configureListView()V
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->holder:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->listAdapter:Lcom/amazon/xray/ui/adapter/EntityGroupListAdapter;

    if-nez v1, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    iget-object v0, v0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;->listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->listPosition:I

    iget v2, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->listOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private configureView(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/LabeledGroup<",
            "Lcom/amazon/xray/model/object/Entity;",
            ">;>;Z)V"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->holder:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 242
    iput-object v1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->listAdapter:Lcom/amazon/xray/ui/adapter/EntityGroupListAdapter;

    .line 243
    iget-object v0, v0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;->listView:Landroid/widget/ListView;

    invoke-static {v0, v1}, Lcom/amazon/xray/ui/util/ListViewUtil;->setAdapter(Landroid/widget/ListView;Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;)V

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_5

    .line 246
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 255
    :cond_1
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->holder:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;

    iget-object p2, p2, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;->sortButton:Landroid/widget/Button;

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 256
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->holder:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;

    iget-object p2, p2, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;->listView:Landroid/widget/ListView;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 257
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->holder:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;

    iget-object p2, p2, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 258
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->holder:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;

    iget-object p2, p2, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;->error:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    invoke-virtual {p0}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->getSortType()I

    move-result p2

    const/4 v1, 0x1

    if-nez p2, :cond_2

    const/4 v0, 0x1

    .line 262
    :cond_2
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->holder:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;

    iget-object p2, p2, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;->sortButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    sget v2, Lcom/amazon/kindle/xray/R$string;->xray_sort_by_relevance:I

    goto :goto_0

    :cond_3
    sget v2, Lcom/amazon/kindle/xray/R$string;->xray_sort_by_name:I

    :goto_0
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->holder:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;

    iget-object p2, p2, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;->sortButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    sget v2, Lcom/amazon/kindle/xray/R$string;->xray_sort_by_relevance_content_description:I

    goto :goto_1

    :cond_4
    sget v2, Lcom/amazon/kindle/xray/R$string;->xray_sort_by_name_content_description:I

    :goto_1
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 268
    new-instance p2, Lcom/amazon/xray/ui/adapter/EntityGroupListAdapter;

    iget-object v2, p0, Lcom/amazon/xray/ui/fragment/XrayFragment;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-direct {p2, v2, p1}, Lcom/amazon/xray/ui/adapter/EntityGroupListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p2, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->listAdapter:Lcom/amazon/xray/ui/adapter/EntityGroupListAdapter;

    .line 269
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->holder:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;->listView:Landroid/widget/ListView;

    invoke-static {p1, p2}, Lcom/amazon/xray/ui/util/ListViewUtil;->setAdapter(Landroid/widget/ListView;Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;)V

    .line 274
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->holder:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;->listView:Landroid/widget/ListView;

    xor-int/lit8 p2, v0, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 275
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->holder:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;->listView:Landroid/widget/ListView;

    xor-int/lit8 p2, v0, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setFastScrollAlwaysVisible(Z)V

    .line 277
    invoke-direct {p0}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->configureListView()V

    .line 278
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->holder:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;->listView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->requestFocus()Z

    return-void

    .line 247
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->holder:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;->sortButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 248
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->holder:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;->listView:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 249
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->holder:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;->progress:Landroid/widget/ProgressBar;

    if-eqz p2, :cond_6

    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 250
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->holder:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;->error:Landroid/widget/TextView;

    if-eqz p2, :cond_7

    const/16 v0, 0x8

    :cond_7
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getSortType()I
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/XrayFragment;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    const/4 v1, 0x0

    const-string/jumbo v2, "xray.preference.config"

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "EntitySortType"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 90
    invoke-super {p0, p1}, Lcom/amazon/xray/ui/fragment/XrayFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 93
    iput v0, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->entityTypeId:I

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 96
    iget v2, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->entityTypeId:I

    const-string v3, "entityType"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->entityTypeId:I

    .line 100
    :cond_0
    iput v0, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->listPosition:I

    .line 101
    iput v0, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->listOffset:I

    if-eqz p1, :cond_1

    const-string v1, "entitySortType"

    .line 104
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->getSortType()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 105
    iget v1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->listPosition:I

    const-string v2, "listPosition"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->listPosition:I

    .line 106
    iget v1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->listOffset:I

    const-string v2, "listOffset"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->listOffset:I

    .line 110
    :cond_1
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/XrayFragment;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    const-string/jumbo v1, "xray.preference.config"

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->sortChangeListener:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$SortTypeOnChangeListener;

    .line 111
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 114
    invoke-virtual {p0}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->getSortType()I

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Relevance"

    goto :goto_0

    :cond_2
    const-string p1, "Name"

    .line 116
    :goto_0
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v1

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XrayTab_AllOfType"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->entityTypeId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;)V

    const-string v2, "Xray"

    const-string v3, "SortOrder"

    .line 118
    invoke-interface {v1, v2, v3, p1, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 124
    sget p3, Lcom/amazon/kindle/xray/R$layout;->xray_fragment_entities_of_type:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 128
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/XrayFragment;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 129
    sget-object p2, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->TAG:Ljava/lang/String;

    const-string p3, "Parent activity is finishing, aborting."

    invoke-static {p2, p3}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 134
    :cond_0
    new-instance p2, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;-><init>(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$1;)V

    iput-object p2, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->holder:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;

    .line 135
    sget v0, Lcom/amazon/kindle/xray/R$id;->xray_sort_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p2, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;->sortButton:Landroid/widget/Button;

    .line 136
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->holder:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;

    sget v0, Lcom/amazon/kindle/xray/R$id;->xray_entity_list:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p2, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;->listView:Landroid/widget/ListView;

    .line 137
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->holder:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;

    sget v0, Lcom/amazon/kindle/xray/R$id;->xray_progress:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p2, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;->progress:Landroid/widget/ProgressBar;

    .line 138
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->holder:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;

    sget v0, Lcom/amazon/kindle/xray/R$id;->xray_error:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;->error:Landroid/widget/TextView;

    .line 141
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->holder:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;

    iget-object p2, p2, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;->sortButton:Landroid/widget/Button;

    new-instance v0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$SortButtonOnClickListener;

    invoke-direct {v0, p0, p3}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$SortButtonOnClickListener;-><init>(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$1;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    new-instance p2, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$EntityListOnItemClickListener;

    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/XrayFragment;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    iget v1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->entityTypeId:I

    iget-object v2, p0, Lcom/amazon/xray/ui/fragment/XrayFragment;->metricsRecorder:Lcom/amazon/xray/metrics/MetricsRecorder;

    invoke-direct {p2, v0, v1, v2}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$EntityListOnItemClickListener;-><init>(Lcom/amazon/xray/ui/activity/XrayActivity;ILcom/amazon/xray/metrics/MetricsRecorder;)V

    iput-object p2, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->entityListOnItemClickListener:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$EntityListOnItemClickListener;

    .line 143
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->holder:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;

    iget-object v0, v0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 144
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->holder:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;

    iget-object p2, p2, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;->listView:Landroid/widget/ListView;

    new-instance v0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$EntityListOnScrollListener;

    invoke-direct {v0, p0, p3}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$EntityListOnScrollListener;-><init>(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$1;)V

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 147
    invoke-static {}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object p2

    .line 148
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->holder:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;

    iget-object v0, v0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;->sortButton:Landroid/widget/Button;

    invoke-virtual {p2}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSecondaryButtonColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 149
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->holder:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;

    iget-object v0, v0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;->sortButton:Landroid/widget/Button;

    invoke-virtual {p2}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getRefineCaretIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v0, p3, p3, p2, p3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 150
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->holder:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;

    iget-object p2, p2, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;->listView:Landroid/widget/ListView;

    invoke-static {}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getListViewBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/amazon/xray/ui/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 153
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->loader:Lcom/amazon/xray/model/loader/ContentLoader;

    const-wide/16 v0, 0x4b

    invoke-virtual {p2, v0, v1}, Lcom/amazon/xray/model/loader/ContentLoader;->load(J)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 212
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 214
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->loader:Lcom/amazon/xray/model/loader/ContentLoader;

    invoke-virtual {v0}, Lcom/amazon/xray/model/loader/ContentLoader;->cancel()V

    .line 216
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XrayTab_AllOfType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->entityTypeId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->hideContext(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 178
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 181
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->sortPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->holder:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;

    .line 186
    iput-object v0, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->listAdapter:Lcom/amazon/xray/ui/adapter/EntityGroupListAdapter;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 191
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 195
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->holder:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 196
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 202
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 205
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->holder:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 206
    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->entityListOnItemClickListener:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$EntityListOnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 169
    invoke-virtual {p0}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->getSortType()I

    move-result v0

    const-string v1, "entitySortType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    iget v0, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->listOffset:I

    const-string v1, "listOffset"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    iget v0, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->listPosition:I

    const-string v1, "listPosition"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 173
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0

    .line 160
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 164
    invoke-direct {p0}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->configureListView()V

    return-void
.end method
