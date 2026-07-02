.class public abstract Lcom/amazon/xray/ui/fragment/ExcerptsFragment;
.super Lcom/amazon/xray/ui/fragment/XrayFragment;
.source "ExcerptsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/xray/ui/fragment/ExcerptsFragment$SpoilerOnChangeListener;,
        Lcom/amazon/xray/ui/fragment/ExcerptsFragment$AdapterOnLoadListener;,
        Lcom/amazon/xray/ui/fragment/ExcerptsFragment$LoaderStrategy;,
        Lcom/amazon/xray/ui/fragment/ExcerptsFragment$CardLoadTimeoutRunnable;,
        Lcom/amazon/xray/ui/fragment/ExcerptsFragment$SeekBarOnChangeListener;,
        Lcom/amazon/xray/ui/fragment/ExcerptsFragment$RelatedEntityOnClickListener;,
        Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ExcerptCardCarouselScrollListener;,
        Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;
    }
.end annotation


# static fields
.field private static final CARD_LOAD_TIMEOUT_MS:J = 0x64L

.field private static final DEFAULT_BOOK_LOCATION:I = -0x1

.field private static final FADE_ALPHA:F = 0.25f

.field private static final FADE_DURATION_MS:J = 0xafL

.field private static final HANDLER:Landroid/os/Handler;

.field private static final LOAD_TIMEOUT_MS:J = 0x4bL

.field private static final METRIC_DELAY_MS:J = 0x3e8L

.field private static final METRIC_HANDLER:Landroid/os/Handler;

.field private static final NO_FOCUSED_CARD:I = -0x1

.field private static final NO_INITIAL_FOCUSED_EXCERPT_ID:I = -0x1

.field private static final STATE_FOCUSED_CARD:Ljava/lang/String; = "focusedCardIndex"

.field private static final TAG:Ljava/lang/String;

.field private static metricRunnable:Ljava/lang/Runnable;


# instance fields
.field private final adapterOnLoadListener:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$AdapterOnLoadListener;

.field private final cardLoadTimeoutRunnable:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$CardLoadTimeoutRunnable;

.field private currentBookLocation:I

.field protected entity:Lcom/amazon/xray/model/object/Entity;

.field private excerptCardListAdapter:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;

.field private focusedCardIndex:I

.field protected holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

.field private indexToFocusAfterContentLoads:I

.field private initialFocusedExcerptId:I

.field private initialFocusedImageId:Ljava/lang/String;

.field private final loader:Lcom/amazon/xray/model/loader/ContentLoader;

.field private prevChapterText:Ljava/lang/String;

.field private result:Lcom/amazon/xray/model/loader/EntityExcerptsTask$Result;

.field private final spoilerChangeListener:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$SpoilerOnChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const-class v0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->TAG:Ljava/lang/String;

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->HANDLER:Landroid/os/Handler;

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->METRIC_HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 53
    invoke-direct {p0}, Lcom/amazon/xray/ui/fragment/XrayFragment;-><init>()V

    .line 105
    new-instance v0, Lcom/amazon/xray/model/loader/ContentLoader;

    new-instance v1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$LoaderStrategy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$LoaderStrategy;-><init>(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;Lcom/amazon/xray/ui/fragment/ExcerptsFragment$1;)V

    invoke-direct {v0, v1}, Lcom/amazon/xray/model/loader/ContentLoader;-><init>(Lcom/amazon/xray/model/loader/ContentLoader$Strategy;)V

    iput-object v0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->loader:Lcom/amazon/xray/model/loader/ContentLoader;

    .line 108
    new-instance v0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$SpoilerOnChangeListener;

    invoke-direct {v0, p0, v2}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$SpoilerOnChangeListener;-><init>(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;Lcom/amazon/xray/ui/fragment/ExcerptsFragment$1;)V

    iput-object v0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->spoilerChangeListener:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$SpoilerOnChangeListener;

    .line 111
    new-instance v0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$AdapterOnLoadListener;

    invoke-direct {v0, p0, v2}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$AdapterOnLoadListener;-><init>(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;Lcom/amazon/xray/ui/fragment/ExcerptsFragment$1;)V

    iput-object v0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->adapterOnLoadListener:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$AdapterOnLoadListener;

    .line 114
    new-instance v0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$CardLoadTimeoutRunnable;

    invoke-direct {v0, p0, v2}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$CardLoadTimeoutRunnable;-><init>(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;Lcom/amazon/xray/ui/fragment/ExcerptsFragment$1;)V

    iput-object v0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->cardLoadTimeoutRunnable:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$CardLoadTimeoutRunnable;

    const/4 v0, -0x1

    .line 120
    iput v0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->indexToFocusAfterContentLoads:I

    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->indexToFocusAfterContentLoads:I

    return p0
.end method

.method static synthetic access$1002(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->indexToFocusAfterContentLoads:I

    return p1
.end method

.method static synthetic access$1100(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;)Lcom/amazon/xray/ui/fragment/ExcerptsFragment$CardLoadTimeoutRunnable;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->cardLoadTimeoutRunnable:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$CardLoadTimeoutRunnable;

    return-object p0
.end method

.method static synthetic access$1200()Landroid/os/Handler;
    .locals 1

    .line 53
    sget-object v0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->HANDLER:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;Lcom/amazon/xray/model/loader/EntityExcerptsTask$Result;Z)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->configureView(Lcom/amazon/xray/model/loader/EntityExcerptsTask$Result;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;)Lcom/amazon/xray/model/loader/EntityExcerptsTask$Result;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->result:Lcom/amazon/xray/model/loader/EntityExcerptsTask$Result;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->focusedCardIndex:I

    return p0
.end method

.method static synthetic access$602(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->focusedCardIndex:I

    return p1
.end method

.method static synthetic access$700(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;)Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->excerptCardListAdapter:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->configureCarouselHeader(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->configureCarouselFooter(I)V

    return-void
.end method

.method private configureCarouselFooter(I)V
    .locals 7

    .line 473
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->excerptCardListAdapter:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;

    if-nez v0, :cond_0

    return-void

    .line 477
    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->getItemViewType(I)I

    move-result v0

    .line 478
    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->excerptCardListAdapter:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;

    invoke-virtual {v1, p1}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->getDisplayableExcerpt(I)Lcom/amazon/xray/model/object/DisplayableExcerpt;

    move-result-object p1

    .line 481
    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object v1, v1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->imageCaption:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 482
    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object v1, v1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->relatedEntities:Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 485
    sget-object v1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->METRIC_HANDLER:Landroid/os/Handler;

    sget-object v2, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->metricRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    if-nez p1, :cond_1

    .line 490
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->relatedEntities:Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1

    .line 492
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/xray/model/object/DisplayableExcerpt;->getRelatedEntities()Ljava/util/List;

    move-result-object p1

    .line 493
    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object v1, v1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->relatedEntities:Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;

    invoke-virtual {v1, p1}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->setEntities(Ljava/util/List;)V

    .line 494
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->relatedEntities:Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1

    :cond_2
    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v0, v4, :cond_5

    .line 498
    iget-object v4, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object v4, v4, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->imageCaption:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    invoke-virtual {v4, v5}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setLinkText(Ljava/lang/String;)V

    .line 499
    iget-object v4, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object v4, v4, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->imageCaption:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    invoke-virtual {v4, v5}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setLinkContentDescription(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 500
    invoke-virtual {p1}, Lcom/amazon/xray/model/object/DisplayableExcerpt;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 504
    :cond_3
    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object v1, v1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->imageCaption:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    invoke-virtual {p1}, Lcom/amazon/xray/model/object/DisplayableExcerpt;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setTextWithExtras(Ljava/lang/CharSequence;)V

    .line 505
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->imageCaption:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 501
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->imageCaption:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    invoke-virtual {p1, v5}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setTextWithExtras(Ljava/lang/CharSequence;)V

    .line 502
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->imageCaption:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_5
    const/4 v4, 0x3

    if-ne v0, v4, :cond_8

    if-nez p1, :cond_6

    .line 510
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->imageCaption:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    invoke-virtual {p1, v5}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setLinkText(Ljava/lang/String;)V

    .line 511
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->imageCaption:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    invoke-virtual {p1, v5}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setLinkContentDescription(Ljava/lang/String;)V

    .line 512
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->imageCaption:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    invoke-virtual {p1, v5}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setTextWithExtras(Ljava/lang/CharSequence;)V

    .line 513
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->imageCaption:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 515
    :cond_6
    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->excerptCardListAdapter:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;

    iget v4, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->focusedCardIndex:I

    invoke-virtual {v1, v4}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/amazon/xray/model/object/Excerpt;

    if-eqz v1, :cond_7

    .line 516
    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object v1, v1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->imageLinkListener:Lcom/amazon/xray/ui/listener/GoToImageExcerptOnClickListener;

    iget-object v4, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->excerptCardListAdapter:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;

    iget v5, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->focusedCardIndex:I

    invoke-virtual {v4, v5}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/xray/model/object/Excerpt;

    invoke-virtual {v1, v4}, Lcom/amazon/xray/ui/listener/GoToImageExcerptOnClickListener;->setExcerpt(Lcom/amazon/xray/model/object/Excerpt;)V

    .line 518
    :cond_7
    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object v1, v1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->imageCaption:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    sget v4, Lcom/amazon/kindle/xray/R$string;->xray_go_to_page:I

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/xray/model/object/DisplayableExcerpt;->getPageLabel()Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;

    move-result-object v6

    .line 519
    invoke-virtual {v6}, Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;->getLabel()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 518
    invoke-virtual {p0, v4, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setLinkText(Ljava/lang/String;)V

    .line 520
    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object v1, v1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->imageCaption:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    sget v4, Lcom/amazon/kindle/xray/R$string;->xray_go_to_page:I

    new-array v5, v2, [Ljava/lang/Object;

    .line 521
    invoke-virtual {p1}, Lcom/amazon/xray/model/object/DisplayableExcerpt;->getPageLabel()Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;->getFullLabel()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 520
    invoke-virtual {p0, v4, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setLinkContentDescription(Ljava/lang/String;)V

    .line 522
    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object v1, v1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->imageCaption:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    invoke-virtual {p1}, Lcom/amazon/xray/model/object/DisplayableExcerpt;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setTextWithExtras(Ljava/lang/CharSequence;)V

    .line 523
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->imageCaption:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    :goto_1
    if-nez v0, :cond_9

    .line 530
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/XrayFragment;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-virtual {p1}, Lcom/amazon/xray/ui/activity/XrayActivity;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    const-string v0, "XrayReadingSession"

    invoke-static {p1, v0}, Lcom/amazon/xray/metrics/SessionManager;->getSessionMetric(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lcom/amazon/xray/metrics/Metric;

    move-result-object p1

    const-string v0, "EncounteredSpoilerGuard"

    .line 531
    invoke-virtual {p1, v0, v2}, Lcom/amazon/xray/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    goto :goto_2

    .line 534
    :cond_9
    invoke-virtual {p0}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->getCardConsumedMetricRunnable()Ljava/lang/Runnable;

    move-result-object p1

    sput-object p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->metricRunnable:Ljava/lang/Runnable;

    .line 535
    sget-object v0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->METRIC_HANDLER:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    return-void
.end method

.method private configureCarouselHeader(I)V
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->excerptCardListAdapter:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;

    if-nez v0, :cond_0

    return-void

    .line 449
    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->isItemSpoiler(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 451
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->chapter:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const-string p1, ""

    goto :goto_0

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->excerptCardListAdapter:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/xray/model/object/Excerpt;

    .line 454
    invoke-virtual {p1}, Lcom/amazon/xray/model/object/Excerpt;->getStart()I

    move-result p1

    invoke-static {p1}, Lcom/amazon/xray/plugin/util/NavigatorUtil;->createPosition(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/xray/plugin/util/TocUtil;->getTocLabel(Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/lang/String;

    move-result-object p1

    .line 455
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object v0, v0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->chapter:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 457
    :goto_0
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object v0, v0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->chapter:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->prevChapterText:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    .line 462
    :cond_2
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->excerptCardListAdapter:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;

    invoke-virtual {v0, v1}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->setAnnounceChapter(Z)V

    .line 463
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->prevChapterText:Ljava/lang/String;

    return-void
.end method

.method private configureView(Lcom/amazon/xray/model/loader/EntityExcerptsTask$Result;Z)V
    .locals 11

    .line 275
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    if-nez v0, :cond_0

    return-void

    .line 279
    :cond_0
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->result:Lcom/amazon/xray/model/loader/EntityExcerptsTask$Result;

    .line 282
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->excerptCardListAdapter:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 283
    invoke-virtual {v0}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->stop()V

    .line 284
    iput-object v1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->excerptCardListAdapter:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;

    .line 285
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object v0, v0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->excerptCards:Lcom/amazon/xray/ui/widget/CardCarousel;

    invoke-virtual {v0, v1}, Lcom/amazon/xray/ui/widget/CardCarousel;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    const/4 v0, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_a

    .line 289
    invoke-virtual {p1}, Lcom/amazon/xray/model/loader/EntityExcerptsTask$Result;->getExcerpts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_4

    .line 297
    :cond_2
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p2, p2, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->content:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 298
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p2, p2, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 299
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p2, p2, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->error:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    invoke-static {}, Lcom/amazon/xray/plugin/util/NavigatorUtil;->getCurrentPageEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    .line 303
    invoke-virtual {p1}, Lcom/amazon/xray/model/loader/EntityExcerptsTask$Result;->getExcerpts()Ljava/util/List;

    move-result-object v2

    .line 304
    invoke-direct {p0, v2}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->getEvents(Ljava/util/List;)[I

    move-result-object v3

    .line 305
    invoke-static {}, Lcom/amazon/xray/plugin/util/BookUtil;->getFpr()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    .line 308
    invoke-virtual {p0}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->isShowingSpoilers()Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    const v6, 0x7fffffff

    if-eqz v5, :cond_4

    .line 309
    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v7

    invoke-direct {p0, v2, v7}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->findSpoilerCardIndex(Ljava/util/List;I)I

    move-result v7

    goto :goto_1

    :cond_4
    const v7, 0x7fffffff

    .line 312
    :goto_1
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v8

    .line 313
    invoke-interface {v8}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v8

    const-string v9, "Xray"

    const-string v10, "SpoilerGuard"

    .line 314
    invoke-interface {v8, v9, v10, v5, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordSetting(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 318
    invoke-virtual {p0, v2}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->createExcerptCardListAdapter(Ljava/util/List;)Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->excerptCardListAdapter:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;

    .line 319
    iget-object v8, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->adapterOnLoadListener:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$AdapterOnLoadListener;

    invoke-virtual {v0, v8}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->setOnLoadListener(Lcom/amazon/xray/model/loader/AsyncListLoader$OnLoadListener;)V

    .line 320
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->excerptCardListAdapter:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;

    invoke-virtual {v0, v7}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->setSpoilerIndex(I)V

    .line 323
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object v0, v0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->excerptCards:Lcom/amazon/xray/ui/widget/CardCarousel;

    new-instance v8, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ExcerptCardCarouselScrollListener;

    invoke-direct {v8, p0, v1}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ExcerptCardCarouselScrollListener;-><init>(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;Lcom/amazon/xray/ui/fragment/ExcerptsFragment$1;)V

    invoke-virtual {v0, v8}, Lcom/amazon/xray/ui/widget/CardCarousel;->setCarouselScrollListener(Lcom/amazon/xray/ui/widget/CardCarousel$CarouselScrollListener;)V

    .line 324
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object v0, v0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->excerptCards:Lcom/amazon/xray/ui/widget/CardCarousel;

    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->excerptCardListAdapter:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;

    invoke-virtual {v0, v1}, Lcom/amazon/xray/ui/widget/CardCarousel;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 327
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object v0, v0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->seekBar:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {}, Lcom/amazon/xray/plugin/util/TocUtil;->getToc()Lcom/amazon/kindle/krx/reader/ITableOfContents;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->setToc(Lcom/amazon/kindle/krx/reader/ITableOfContents;)V

    .line 328
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object v0, v0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->seekBar:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-virtual {p1}, Lcom/amazon/xray/model/loader/EntityExcerptsTask$Result;->getReadingRange()Lcom/amazon/xray/model/object/PositionRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->setReadingRange(Lcom/amazon/xray/model/object/PositionRange;)V

    .line 329
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->seekBar:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-virtual {p1, v3}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->setEvents([I)V

    .line 330
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->seekBar:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    if-eqz p2, :cond_5

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    goto :goto_2

    :cond_5
    const p2, 0x7fffffff

    :goto_2
    invoke-virtual {p1, p2}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->setCrl(I)V

    .line 331
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->seekBar:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    if-eqz v5, :cond_6

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v6

    :cond_6
    invoke-virtual {p1, v6}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->setFpr(I)V

    .line 332
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->seekBar:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-virtual {p1, v7}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->setSpoilerIndex(I)V

    .line 336
    iget p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->focusedCardIndex:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_8

    .line 337
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->initialFocusedImageId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 338
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->initialFocusedImageId:Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->findExcerptWithImageId(Ljava/util/List;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->focusedCardIndex:I

    goto :goto_3

    .line 339
    :cond_7
    iget p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->initialFocusedExcerptId:I

    if-eq p1, p2, :cond_8

    .line 340
    invoke-direct {p0, v2, p1}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->findExcerptWithId(Ljava/util/List;I)I

    move-result p1

    iput p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->focusedCardIndex:I

    .line 345
    :cond_8
    :goto_3
    iget p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->focusedCardIndex:I

    if-ne p1, p2, :cond_9

    .line 346
    iget p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->currentBookLocation:I

    invoke-direct {p0, v2, p1}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->findLastExcerptBeforePosition(Ljava/util/List;I)I

    move-result p1

    iput p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->focusedCardIndex:I

    .line 349
    :cond_9
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->excerptCards:Lcom/amazon/xray/ui/widget/CardCarousel;

    iget p2, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->focusedCardIndex:I

    invoke-virtual {p1, p2}, Lcom/amazon/xray/ui/widget/CardCarousel;->setFocusedCardIndex(I)V

    .line 350
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->excerptCards:Lcom/amazon/xray/ui/widget/CardCarousel;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestFocus()Z

    return-void

    .line 290
    :cond_a
    :goto_4
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->content:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 291
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->progress:Landroid/widget/ProgressBar;

    if-eqz p2, :cond_b

    const/4 v1, 0x0

    goto :goto_5

    :cond_b
    const/16 v1, 0x8

    :goto_5
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 292
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->error:Landroid/widget/TextView;

    if-eqz p2, :cond_c

    const/16 v0, 0x8

    :cond_c
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private findExcerptWithId(Ljava/util/List;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/Excerpt;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 415
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 416
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/xray/model/object/Excerpt;

    invoke-virtual {v1}, Lcom/amazon/xray/model/object/Excerpt;->getId()I

    move-result v1

    if-ne p2, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private findExcerptWithImageId(Ljava/util/List;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/Excerpt;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 398
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 399
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/xray/model/object/Excerpt;

    invoke-virtual {v1}, Lcom/amazon/xray/model/object/Excerpt;->getImageId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private findLastExcerptBeforePosition(Ljava/util/List;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/Excerpt;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 381
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 382
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/xray/model/object/Excerpt;

    invoke-virtual {v2}, Lcom/amazon/xray/model/object/Excerpt;->getStart()I

    move-result v2

    if-le v2, p2, :cond_0

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 386
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private findSpoilerCardIndex(Ljava/util/List;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/Excerpt;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, 0x1

    .line 363
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 364
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/xray/model/object/Excerpt;

    invoke-virtual {v1}, Lcom/amazon/xray/model/object/Excerpt;->getStart()I

    move-result v1

    if-le v1, p2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const p1, 0x7fffffff

    return p1
.end method

.method private getEvents(Ljava/util/List;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/Excerpt;",
            ">;)[I"
        }
    .end annotation

    .line 430
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 432
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/xray/model/object/Excerpt;

    invoke-virtual {v3}, Lcom/amazon/xray/model/object/Excerpt;->getStart()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method protected abstract createExcerptCardListAdapter(Ljava/util/List;)Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/Excerpt;",
            ">;)",
            "Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;"
        }
    .end annotation
.end method

.method protected abstract createExcerptLoader()Lcom/amazon/xray/model/loader/ContentLoader$Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/xray/model/loader/ContentLoader$Task<",
            "Lcom/amazon/xray/model/loader/EntityExcerptsTask$Result;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getCardConsumedMetricRunnable()Ljava/lang/Runnable;
.end method

.method protected isShowingSpoilers()Z
    .locals 3

    .line 543
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/XrayFragment;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    const-string/jumbo v1, "xray.preference.showingspoilers"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 544
    invoke-static {}, Lcom/amazon/xray/plugin/util/BookUtil;->getAsin()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/xray/ui/fragment/XrayFragment;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-virtual {v2}, Lcom/amazon/xray/ui/activity/XrayActivity;->getShowSpoilersDefault()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 149
    invoke-super {p0, p1}, Lcom/amazon/xray/ui/fragment/XrayFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, -0x1

    .line 152
    iput v0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->currentBookLocation:I

    const/4 v1, 0x0

    .line 153
    iput-object v1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->initialFocusedImageId:Ljava/lang/String;

    .line 154
    iput v0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->initialFocusedExcerptId:I

    .line 155
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 157
    iget v2, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->currentBookLocation:I

    const-string v3, "location"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->currentBookLocation:I

    .line 158
    iget-object v2, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->initialFocusedImageId:Ljava/lang/String;

    const-string v3, "initialFocusedImageId"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->initialFocusedImageId:Ljava/lang/String;

    .line 159
    iget v2, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->initialFocusedExcerptId:I

    const-string v3, "initialFocusedExcerptId"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->initialFocusedExcerptId:I

    .line 163
    :cond_0
    iput v0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->focusedCardIndex:I

    if-eqz p1, :cond_1

    const-string v1, "focusedCardIndex"

    .line 165
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->focusedCardIndex:I

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 171
    sget p3, Lcom/amazon/kindle/xray/R$layout;->xray_fragment_entity_excerpts:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 175
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/XrayFragment;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 176
    sget-object p2, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->TAG:Ljava/lang/String;

    const-string p3, "Parent activity is finishing, aborting."

    invoke-static {p2, p3}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 181
    :cond_0
    new-instance p2, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    invoke-direct {p2}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;-><init>()V

    iput-object p2, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    .line 182
    sget p3, Lcom/amazon/kindle/xray/R$id;->xray_progress:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ProgressBar;

    iput-object p3, p2, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->progress:Landroid/widget/ProgressBar;

    .line 183
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    sget p3, Lcom/amazon/kindle/xray/R$id;->xray_error:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p2, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->error:Landroid/widget/TextView;

    .line 184
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    sget p3, Lcom/amazon/kindle/xray/R$id;->xray_content:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p2, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->content:Landroid/view/ViewGroup;

    .line 185
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    sget p3, Lcom/amazon/kindle/xray/R$id;->xray_excerpt_cards:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/amazon/xray/ui/widget/CardCarousel;

    iput-object p3, p2, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->excerptCards:Lcom/amazon/xray/ui/widget/CardCarousel;

    .line 186
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    sget p3, Lcom/amazon/kindle/xray/R$id;->xray_seek_bar:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    iput-object p3, p2, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->seekBar:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    .line 187
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    sget p3, Lcom/amazon/kindle/xray/R$id;->xray_related_entities:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;

    iput-object p3, p2, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->relatedEntities:Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;

    .line 188
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    sget p3, Lcom/amazon/kindle/xray/R$id;->xray_image_caption:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/amazon/xray/ui/widget/EnhancedTextView;

    iput-object p3, p2, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->imageCaption:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    .line 189
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    sget p3, Lcom/amazon/kindle/xray/R$id;->xray_chapter:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p2, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->chapter:Landroid/widget/TextView;

    .line 190
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    sget p3, Lcom/amazon/kindle/xray/R$id;->xray_carousel_context_footer:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p2, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->contextFooter:Landroid/view/ViewGroup;

    const/4 p2, 0x2

    .line 193
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 194
    iget-object p3, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p3, p3, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->seekBar:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    const/4 v1, 0x4

    invoke-static {p3, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 196
    iget-object p3, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p3, p3, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->chapter:Landroid/widget/TextView;

    invoke-static {p3, p2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 197
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p2, p2, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->seekBar:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    new-instance p3, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$SeekBarOnChangeListener;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$SeekBarOnChangeListener;-><init>(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;Lcom/amazon/xray/ui/fragment/ExcerptsFragment$1;)V

    invoke-virtual {p2, p3}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->setOnSeekBarChangeListener(Lcom/amazon/xray/ui/widget/TimelineSeekBar$OnTimelineSeekBarChangeListener;)V

    .line 198
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p2, p2, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->relatedEntities:Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;

    new-instance p3, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$RelatedEntityOnClickListener;

    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/XrayFragment;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    iget-object v2, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->entity:Lcom/amazon/xray/model/object/Entity;

    invoke-direct {p3, v1, v2}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$RelatedEntityOnClickListener;-><init>(Lcom/amazon/xray/ui/activity/XrayActivity;Lcom/amazon/xray/model/object/Entity;)V

    invoke-virtual {p2, p3}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->setEntityOnClickListener(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$EntityOnClickListener;)V

    .line 199
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    new-instance p3, Lcom/amazon/xray/ui/listener/GoToImageExcerptOnClickListener;

    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/XrayFragment;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-direct {p3, v1}, Lcom/amazon/xray/ui/listener/GoToImageExcerptOnClickListener;-><init>(Lcom/amazon/xray/ui/activity/XrayActivity;)V

    iput-object p3, p2, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->imageLinkListener:Lcom/amazon/xray/ui/listener/GoToImageExcerptOnClickListener;

    .line 200
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p3, p2, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->imageCaption:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    iget-object p2, p2, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->imageLinkListener:Lcom/amazon/xray/ui/listener/GoToImageExcerptOnClickListener;

    invoke-virtual {p3, p2}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setLinkListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p2, p2, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->imageCaption:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setAlwaysShowLink(Z)V

    .line 204
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p2, p2, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->chapter:Landroid/widget/TextView;

    invoke-static {}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getPrimaryTextColor()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/XrayFragment;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    const-string/jumbo p3, "xray.preference.showingspoilers"

    invoke-virtual {p2, p3, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iget-object p3, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->spoilerChangeListener:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$SpoilerOnChangeListener;

    .line 208
    invoke-interface {p2, p3}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 211
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->loader:Lcom/amazon/xray/model/loader/ContentLoader;

    const-wide/16 v0, 0x4b

    invoke-virtual {p2, v0, v1}, Lcom/amazon/xray/model/loader/ContentLoader;->load(J)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 261
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 263
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->loader:Lcom/amazon/xray/model/loader/ContentLoader;

    invoke-virtual {v0}, Lcom/amazon/xray/model/loader/ContentLoader;->cancel()V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .line 240
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 243
    sget-object v0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->cardLoadTimeoutRunnable:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$CardLoadTimeoutRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 245
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/XrayFragment;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    const-string/jumbo v1, "xray.preference.showingspoilers"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->spoilerChangeListener:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$SpoilerOnChangeListener;

    .line 246
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 248
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->excerptCardListAdapter:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->stop()V

    .line 250
    iput-object v1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->excerptCardListAdapter:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, v0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->seekBar:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-virtual {v0, v1}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->setOnSeekBarChangeListener(Lcom/amazon/xray/ui/widget/TimelineSeekBar$OnTimelineSeekBarChangeListener;)V

    .line 255
    iput-object v1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 224
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 225
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->excerptCardListAdapter:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->stop()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 232
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 233
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->excerptCardListAdapter:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->start()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 218
    iget v0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->focusedCardIndex:I

    const-string v1, "focusedCardIndex"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 219
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
