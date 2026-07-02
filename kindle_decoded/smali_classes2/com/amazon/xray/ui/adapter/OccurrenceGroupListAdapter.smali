.class public Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;
.super Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;
.source "OccurrenceGroupListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$AsyncListOnLoadListener;,
        Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$DisplayableOccurrenceLoader;,
        Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$PositionToRowMap;,
        Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$ChildViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter<",
        "Lcom/amazon/xray/model/object/PositionRange;",
        ">;"
    }
.end annotation


# static fields
.field private static final OCCURRENCES_TO_PRELOAD_AFTER:I = 0x14

.field private static final OCCURRENCES_TO_PRELOAD_BEFORE:I = 0xa

.field private static final WORDS_AFTER_OCCURRENCE:I = 0xa

.field private static final WORDS_BEFORE_OCCURRENCE:I = 0xa


# instance fields
.field private asyncLoader:Lcom/amazon/xray/model/loader/AsyncListLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/xray/model/loader/AsyncListLoader<",
            "Lcom/amazon/xray/model/object/DisplayableOccurrence;",
            ">;"
        }
    .end annotation
.end field

.field private final factory:Lcom/amazon/xray/model/object/DisplayableOccurrenceFactory;

.field private positionToRowMap:Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$PositionToRowMap;


# direct methods
.method public constructor <init>(Lcom/amazon/xray/ui/activity/XrayActivity;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/xray/ui/activity/XrayActivity;",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/LabeledGroup<",
            "Lcom/amazon/xray/model/object/PositionRange;",
            ">;>;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 54
    new-instance p1, Lcom/amazon/xray/model/object/DisplayableOccurrenceFactory;

    invoke-direct {p1}, Lcom/amazon/xray/model/object/DisplayableOccurrenceFactory;-><init>()V

    iput-object p1, p0, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;->factory:Lcom/amazon/xray/model/object/DisplayableOccurrenceFactory;

    .line 57
    new-instance p1, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$PositionToRowMap;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$PositionToRowMap;-><init>(Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$1;)V

    iput-object p1, p0, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;->positionToRowMap:Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$PositionToRowMap;

    .line 60
    new-instance p1, Lcom/amazon/xray/model/loader/AsyncListLoader;

    new-instance v1, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$DisplayableOccurrenceLoader;

    invoke-direct {v1, p0, p2}, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$DisplayableOccurrenceLoader;-><init>(Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$1;)V

    sget-object v2, Lcom/amazon/xray/model/loader/AsyncListLoader;->LINEAR_LOAD_ORDER:Lcom/amazon/xray/model/loader/AsyncListLoader$LoadOrderStrategy;

    iget v3, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->count:I

    const/16 v4, 0xa

    const/16 v5, 0x14

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/xray/model/loader/AsyncListLoader;-><init>(Lcom/amazon/xray/model/loader/AsyncListLoader$ValueLoader;Lcom/amazon/xray/model/loader/AsyncListLoader$LoadOrderStrategy;III)V

    iput-object p1, p0, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;->asyncLoader:Lcom/amazon/xray/model/loader/AsyncListLoader;

    .line 63
    new-instance v0, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$AsyncListOnLoadListener;

    invoke-direct {v0, p0, p2}, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$AsyncListOnLoadListener;-><init>(Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$1;)V

    invoke-virtual {p1, v0}, Lcom/amazon/xray/model/loader/AsyncListLoader;->setOnLoadListener(Lcom/amazon/xray/model/loader/AsyncListLoader$OnLoadListener;)V

    .line 64
    iget-object p1, p0, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;->asyncLoader:Lcom/amazon/xray/model/loader/AsyncListLoader;

    invoke-virtual {p1}, Lcom/amazon/xray/model/loader/AsyncListLoader;->start()V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;)Lcom/amazon/xray/model/object/DisplayableOccurrenceFactory;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;->factory:Lcom/amazon/xray/model/object/DisplayableOccurrenceFactory;

    return-object p0
.end method

.method private inflateChildView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 172
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/xray/R$layout;->xray_list_item_occurrence:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 174
    new-instance v0, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$ChildViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$ChildViewHolder;-><init>(Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$1;)V

    .line 175
    sget v1, Lcom/amazon/kindle/xray/R$id;->xray_page_number:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$ChildViewHolder;->pageNumberView:Landroid/widget/TextView;

    .line 176
    sget v1, Lcom/amazon/kindle/xray/R$id;->xray_occurrence_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$ChildViewHolder;->descriptionView:Landroid/widget/TextView;

    .line 177
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 179
    invoke-static {}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object v1

    .line 180
    iget-object v2, v0, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$ChildViewHolder;->pageNumberView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSecondaryTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    iget-object v0, v0, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$ChildViewHolder;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getPrimaryTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p1
.end method


# virtual methods
.method public getChildContentView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    if-eqz p4, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-direct {p0, p5}, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;->inflateChildView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 143
    :goto_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$ChildViewHolder;

    .line 146
    iget-object p5, p0, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;->asyncLoader:Lcom/amazon/xray/model/loader/AsyncListLoader;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->getListPosition(II)I

    move-result p1

    invoke-virtual {p5, p1}, Lcom/amazon/xray/model/loader/AsyncListLoader;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/xray/model/object/DisplayableOccurrence;

    if-eqz p1, :cond_1

    .line 148
    iget-object p2, p3, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$ChildViewHolder;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/amazon/xray/model/object/DisplayableOccurrence;->getOccurrenceText()Ljava/lang/CharSequence;

    move-result-object p5

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object p2, p3, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$ChildViewHolder;->pageNumberView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/amazon/xray/model/object/DisplayableOccurrence;->getPageLabel()Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;->getLabel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 151
    invoke-virtual {p1}, Lcom/amazon/xray/model/object/DisplayableOccurrence;->getPageLabel()Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;

    move-result-object p5

    invoke-virtual {p5}, Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;->getFullLabel()Ljava/lang/String;

    move-result-object p5

    aput-object p5, p2, p3

    const/4 p3, 0x1

    .line 152
    invoke-virtual {p1}, Lcom/amazon/xray/model/object/DisplayableOccurrence;->getOccurrenceText()Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, p2, p3

    const-string p1, "%s, %s"

    .line 151
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 154
    :cond_1
    iget-object p1, p3, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$ChildViewHolder;->descriptionView:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object p1, p3, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$ChildViewHolder;->pageNumberView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    invoke-virtual {p4, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-object p4
.end method

.method public getListPositionForBookPosition(I)I
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;->positionToRowMap:Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$PositionToRowMap;

    invoke-virtual {v0, p1}, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$PositionToRowMap;->get(I)I

    move-result p1

    return p1
.end method

.method public getRepresentedRange(II)Lcom/amazon/xray/model/object/PositionRange;
    .locals 3

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    .line 121
    invoke-virtual {p0, p1}, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->getChildItemForPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/xray/model/object/PositionRange;

    .line 122
    invoke-virtual {p0, p2}, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->getChildItemForPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/xray/model/object/PositionRange;

    .line 123
    :goto_0
    iget v2, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->count:I

    if-ge p1, v2, :cond_0

    if-nez v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 124
    invoke-virtual {p0, p1}, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->getChildItemForPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/xray/model/object/PositionRange;

    goto :goto_0

    :cond_0
    :goto_1
    if-ltz p2, :cond_1

    if-nez v1, :cond_1

    add-int/lit8 p2, p2, -0x1

    .line 127
    invoke-virtual {p0, p2}, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->getChildItemForPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/xray/model/object/PositionRange;

    goto :goto_1

    :cond_1
    if-ltz p1, :cond_3

    .line 131
    iget v2, p0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->count:I

    if-ge p1, v2, :cond_3

    if-ltz p2, :cond_3

    if-ge p2, v2, :cond_3

    if-ge p2, p1, :cond_2

    goto :goto_2

    .line 136
    :cond_2
    new-instance p1, Lcom/amazon/xray/model/object/PositionRange;

    invoke-virtual {v0}, Lcom/amazon/xray/model/object/PositionRange;->getLocation()I

    move-result p2

    invoke-virtual {v1}, Lcom/amazon/xray/model/object/PositionRange;->getEnd()I

    move-result v1

    invoke-virtual {v0}, Lcom/amazon/xray/model/object/PositionRange;->getLocation()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-direct {p1, p2, v1}, Lcom/amazon/xray/model/object/PositionRange;-><init>(II)V

    return-object p1

    :cond_3
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public setVisibleRange(II)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;->asyncLoader:Lcom/amazon/xray/model/loader/AsyncListLoader;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0, p1, p2}, Lcom/amazon/xray/model/loader/AsyncListLoader;->setVisibleRange(II)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;->asyncLoader:Lcom/amazon/xray/model/loader/AsyncListLoader;

    invoke-virtual {v0}, Lcom/amazon/xray/model/loader/AsyncListLoader;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;->asyncLoader:Lcom/amazon/xray/model/loader/AsyncListLoader;

    invoke-virtual {v0}, Lcom/amazon/xray/model/loader/AsyncListLoader;->stop()V

    return-void
.end method
