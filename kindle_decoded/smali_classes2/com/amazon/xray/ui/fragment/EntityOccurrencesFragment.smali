.class public Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;
.super Lcom/amazon/xray/ui/fragment/XrayFragment;
.source "EntityOccurrencesFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$LoaderStrategy;,
        Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$OnScrollListener;,
        Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$PositionRangeOnItemClickListener;,
        Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$SeekBarOnChangeListener;,
        Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENTITY_ID:I = 0x0

.field private static final LOAD_TIMEOUT_MS:J = 0x4bL

.field private static final STATE_LIST_OFFSET:Ljava/lang/String; = "listOffset"

.field private static final STATE_LIST_POSITION:Ljava/lang/String; = "listPosition"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private entity:Lcom/amazon/xray/model/object/Entity;

.field private entityId:I

.field private holder:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;

.field private listAdapter:Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;

.field private listOffset:I

.field private listPosition:I

.field private final loader:Lcom/amazon/xray/model/loader/ContentLoader;

.field private positionRangeOnItemClickListener:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$PositionRangeOnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 42
    invoke-direct {p0}, Lcom/amazon/xray/ui/fragment/XrayFragment;-><init>()V

    .line 59
    new-instance v0, Lcom/amazon/xray/model/loader/ContentLoader;

    new-instance v1, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$LoaderStrategy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$LoaderStrategy;-><init>(Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$1;)V

    invoke-direct {v0, v1}, Lcom/amazon/xray/model/loader/ContentLoader;-><init>(Lcom/amazon/xray/model/loader/ContentLoader$Strategy;)V

    iput-object v0, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->loader:Lcom/amazon/xray/model/loader/ContentLoader;

    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;Lcom/amazon/xray/model/loader/EntityOccurrencesTask$Result;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->configureView(Lcom/amazon/xray/model/loader/EntityOccurrencesTask$Result;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;)Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->listAdapter:Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;)Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;

    return-object p0
.end method

.method static synthetic access$702(Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->listOffset:I

    return p1
.end method

.method static synthetic access$802(Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->listPosition:I

    return p1
.end method

.method static synthetic access$900(Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->entityId:I

    return p0
.end method

.method private configureListView()V
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->listAdapter:Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;

    if-nez v1, :cond_0

    goto :goto_0

    .line 277
    :cond_0
    iget-object v0, v0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;->listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->listPosition:I

    iget v2, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->listOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private configureView(Lcom/amazon/xray/model/loader/EntityOccurrencesTask$Result;Z)V
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;

    if-nez v0, :cond_0

    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->listAdapter:Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {v0}, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;->stop()V

    const/4 v0, 0x0

    .line 230
    iput-object v0, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->listAdapter:Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;

    .line 231
    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;

    iget-object v1, v1, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;->listView:Landroid/widget/ListView;

    invoke-static {v1, v0}, Lcom/amazon/xray/ui/util/ListViewUtil;->setAdapter(Landroid/widget/ListView;Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;)V

    :cond_1
    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_4

    .line 235
    invoke-virtual {p1}, Lcom/amazon/xray/model/loader/EntityOccurrencesTask$Result;->getOccurrences()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_1

    .line 243
    :cond_2
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;

    iget-object p2, p2, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;->content:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 244
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;

    iget-object p2, p2, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 245
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;

    iget-object p2, p2, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;->error:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    new-instance p2, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;

    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/XrayFragment;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-virtual {p1}, Lcom/amazon/xray/model/loader/EntityOccurrencesTask$Result;->getGroupedOccurrences()Ljava/util/List;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;-><init>(Lcom/amazon/xray/ui/activity/XrayActivity;Ljava/util/List;)V

    iput-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->listAdapter:Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;

    .line 249
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;

    iget-object v0, v0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;->listView:Landroid/widget/ListView;

    invoke-static {v0, p2}, Lcom/amazon/xray/ui/util/ListViewUtil;->setAdapter(Landroid/widget/ListView;Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;)V

    .line 250
    invoke-direct {p0}, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->configureListView()V

    .line 251
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;

    iget-object p2, p2, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;->listView:Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->requestFocus()Z

    .line 254
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;

    iget-object p2, p2, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;->seekBar:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-virtual {p1}, Lcom/amazon/xray/model/loader/EntityOccurrencesTask$Result;->getOccurrences()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->getEvents(Ljava/util/List;)[I

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->setEvents([I)V

    .line 255
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;

    iget-object p2, p2, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;->seekBar:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {}, Lcom/amazon/xray/plugin/util/TocUtil;->getToc()Lcom/amazon/kindle/krx/reader/ITableOfContents;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->setToc(Lcom/amazon/kindle/krx/reader/ITableOfContents;)V

    .line 256
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;

    iget-object p2, p2, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;->seekBar:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-virtual {p1}, Lcom/amazon/xray/model/loader/EntityOccurrencesTask$Result;->getReadingRange()Lcom/amazon/xray/model/object/PositionRange;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->setReadingRange(Lcom/amazon/xray/model/object/PositionRange;)V

    .line 259
    invoke-static {}, Lcom/amazon/xray/plugin/util/NavigatorUtil;->getCurrentPageEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    .line 260
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;

    iget-object p2, p2, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;->seekBar:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    goto :goto_0

    :cond_3
    const p1, 0x7fffffff

    :goto_0
    invoke-virtual {p2, p1}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->setCrl(I)V

    .line 263
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;->listView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p1

    .line 264
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;

    iget-object p2, p2, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;->listView:Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result p2

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    .line 266
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->listAdapter:Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;->setVisibleRange(II)V

    return-void

    .line 236
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;->content:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 237
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;->progress:Landroid/widget/ProgressBar;

    if-eqz p2, :cond_5

    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 238
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;->error:Landroid/widget/TextView;

    if-eqz p2, :cond_6

    const/16 v0, 0x8

    :cond_6
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private getEvents(Ljava/util/List;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/PositionRange;",
            ">;)[I"
        }
    .end annotation

    .line 287
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 289
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/xray/model/object/PositionRange;

    invoke-virtual {v3}, Lcom/amazon/xray/model/object/PositionRange;->getLocation()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static newInstance(Lcom/amazon/xray/model/object/Entity;)Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;
    .locals 1

    .line 79
    new-instance v0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;

    invoke-direct {v0}, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;-><init>()V

    .line 80
    iput-object p0, v0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->entity:Lcom/amazon/xray/model/object/Entity;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 86
    invoke-super {p0, p1}, Lcom/amazon/xray/ui/fragment/XrayFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->entityId:I

    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 92
    iget v2, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->entityId:I

    const-string v3, "entityId"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->entityId:I

    .line 95
    :cond_0
    new-instance v1, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$PositionRangeOnItemClickListener;

    iget-object v2, p0, Lcom/amazon/xray/ui/fragment/XrayFragment;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    iget-object v3, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->entity:Lcom/amazon/xray/model/object/Entity;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$PositionRangeOnItemClickListener;-><init>(Lcom/amazon/xray/ui/activity/XrayActivity;Lcom/amazon/xray/model/object/Entity;Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$1;)V

    iput-object v1, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->positionRangeOnItemClickListener:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$PositionRangeOnItemClickListener;

    .line 98
    iput v0, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->listPosition:I

    .line 99
    iput v0, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->listOffset:I

    if-eqz p1, :cond_1

    const-string v1, "listPosition"

    .line 101
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->listPosition:I

    .line 102
    iget v0, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->listOffset:I

    const-string v1, "listOffset"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->listOffset:I

    .line 106
    :cond_1
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string v0, "XrayTab_AllMentions"

    .line 107
    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 112
    sget p3, Lcom/amazon/kindle/xray/R$layout;->xray_fragment_entity_occurrences:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 116
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/XrayFragment;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 117
    sget-object p2, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->TAG:Ljava/lang/String;

    const-string p3, "Parent activity is finishing, aborting."

    invoke-static {p2, p3}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 122
    :cond_0
    new-instance p2, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;-><init>(Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$1;)V

    iput-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;

    .line 123
    sget v0, Lcom/amazon/kindle/xray/R$id;->xray_progress:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p2, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;->progress:Landroid/widget/ProgressBar;

    .line 124
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;

    sget v0, Lcom/amazon/kindle/xray/R$id;->xray_error:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;->error:Landroid/widget/TextView;

    .line 125
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;

    sget v0, Lcom/amazon/kindle/xray/R$id;->xray_content:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p2, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;->content:Landroid/view/ViewGroup;

    .line 126
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;

    sget v0, Lcom/amazon/kindle/xray/R$id;->xray_seek_bar:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    iput-object v0, p2, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;->seekBar:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    .line 127
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;

    sget v0, Lcom/amazon/kindle/xray/R$id;->xray_occurrences_list:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p2, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;->listView:Landroid/widget/ListView;

    const/4 p2, 0x2

    .line 130
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 131
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;

    iget-object p2, p2, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;->seekBar:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    const/4 v0, 0x4

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 133
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;

    iget-object p2, p2, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;->seekBar:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    new-instance v0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$SeekBarOnChangeListener;

    invoke-direct {v0, p0, p3}, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$SeekBarOnChangeListener;-><init>(Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$1;)V

    invoke-virtual {p2, v0}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->setOnSeekBarChangeListener(Lcom/amazon/xray/ui/widget/TimelineSeekBar$OnTimelineSeekBarChangeListener;)V

    .line 134
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;

    iget-object p2, p2, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;->listView:Landroid/widget/ListView;

    new-instance v0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$OnScrollListener;

    invoke-direct {v0, p0, p3}, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$OnScrollListener;-><init>(Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$1;)V

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 135
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;

    iget-object p2, p2, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;->listView:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->positionRangeOnItemClickListener:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$PositionRangeOnItemClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 138
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;

    iget-object p2, p2, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;->listView:Landroid/widget/ListView;

    invoke-static {}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getListViewBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/amazon/xray/ui/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 141
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->loader:Lcom/amazon/xray/model/loader/ContentLoader;

    const-wide/16 v0, 0x4b

    invoke-virtual {p2, v0, v1}, Lcom/amazon/xray/model/loader/ContentLoader;->load(J)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 206
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 208
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->loader:Lcom/amazon/xray/model/loader/ContentLoader;

    invoke-virtual {v0}, Lcom/amazon/xray/model/loader/ContentLoader;->cancel()V

    .line 210
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "XrayTab_AllMentions"

    .line 211
    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->hideContext(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 194
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 196
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->listAdapter:Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;->stop()V

    .line 198
    iput-object v1, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->listAdapter:Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;

    .line 200
    :cond_0
    iput-object v1, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;

    .line 201
    iput-object v1, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->listAdapter:Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 165
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 167
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->listAdapter:Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;->stop()V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 174
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 180
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 182
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->listAdapter:Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;->start()V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 188
    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->positionRangeOnItemClickListener:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$PositionRangeOnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 157
    iget v0, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->listOffset:I

    const-string v1, "listOffset"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    iget v0, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->listPosition:I

    const-string v1, "listPosition"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 160
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0

    .line 148
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 152
    invoke-direct {p0}, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->configureListView()V

    return-void
.end method
