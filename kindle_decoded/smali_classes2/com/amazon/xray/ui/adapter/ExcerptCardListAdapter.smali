.class public Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ExcerptCardListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$AnnounceChapterAccessibilityDelegate;,
        Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageOnClickListener;,
        Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$SpoilerButtonOnClickListener;,
        Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$DisplayableExcerptLoader;,
        Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$SpoilerGuardViewHolder;,
        Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageCardViewHolder;,
        Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$ImageCardViewHolder;,
        Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;
    }
.end annotation


# static fields
.field private static final EXCERPTS_TO_PRELOAD:I = 0x2

.field private static final IMAGE_DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "ImageDialogFragment"

.field private static final NO_FOCUSED_CARD:I = -0x1

.field private static final VIEW_TYPE_COUNT:I = 0x4


# instance fields
.field private final activity:Lcom/amazon/xray/ui/activity/XrayActivity;

.field private announceChapter:Z

.field private asyncLoader:Lcom/amazon/xray/model/loader/AsyncListLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/xray/model/loader/AsyncListLoader<",
            "Lcom/amazon/xray/model/object/DisplayableExcerpt;",
            ">;"
        }
    .end annotation
.end field

.field private carousel:Lcom/amazon/xray/ui/widget/CardCarousel;

.field private displayableFactory:Lcom/amazon/xray/model/object/DisplayableExcerptFactory;

.field private final excerptEntity:Lcom/amazon/xray/model/object/Entity;

.field private final excerpts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/Excerpt;",
            ">;"
        }
    .end annotation
.end field

.field private spoilerIndex:I


# direct methods
.method public constructor <init>(Lcom/amazon/xray/ui/activity/XrayActivity;Ljava/util/List;Lcom/amazon/xray/ui/widget/CardCarousel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/xray/ui/activity/XrayActivity;",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/Excerpt;",
            ">;",
            "Lcom/amazon/xray/ui/widget/CardCarousel;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;-><init>(Lcom/amazon/xray/ui/activity/XrayActivity;Ljava/util/List;Lcom/amazon/xray/ui/widget/CardCarousel;Lcom/amazon/xray/model/object/Entity;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/xray/ui/activity/XrayActivity;Ljava/util/List;Lcom/amazon/xray/ui/widget/CardCarousel;Lcom/amazon/xray/model/object/Entity;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/xray/ui/activity/XrayActivity;",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/Excerpt;",
            ">;",
            "Lcom/amazon/xray/ui/widget/CardCarousel;",
            "Lcom/amazon/xray/model/object/Entity;",
            ")V"
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const v0, 0x7fffffff

    .line 103
    iput v0, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->spoilerIndex:I

    .line 139
    iput-object p1, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    .line 140
    iput-object p2, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->excerpts:Ljava/util/List;

    .line 141
    iput-object p4, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->excerptEntity:Lcom/amazon/xray/model/object/Entity;

    .line 142
    iput-object p3, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->carousel:Lcom/amazon/xray/ui/widget/CardCarousel;

    if-nez p4, :cond_0

    const/4 p3, -0x1

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p4}, Lcom/amazon/xray/model/object/Entity;->getId()I

    move-result p3

    .line 145
    :goto_0
    new-instance p4, Lcom/amazon/xray/model/object/DisplayableExcerptFactory;

    invoke-virtual {p1}, Lcom/amazon/xray/ui/activity/XrayActivity;->getDb()Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    move-result-object p1

    invoke-static {}, Lcom/amazon/kindle/krx/content/images/ImageScaling;->keepOriginal()Lcom/amazon/kindle/krx/content/images/ImageScaling;

    move-result-object v0

    invoke-direct {p4, p1, v0, p3}, Lcom/amazon/xray/model/object/DisplayableExcerptFactory;-><init>(Lcom/amazon/xray/model/SidecarDatabaseAdapter;Lcom/amazon/kindle/krx/content/images/ImageScaling;I)V

    iput-object p4, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->displayableFactory:Lcom/amazon/xray/model/object/DisplayableExcerptFactory;

    .line 148
    new-instance p1, Lcom/amazon/xray/model/loader/AsyncListLoader;

    new-instance v2, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$DisplayableExcerptLoader;

    const/4 p3, 0x0

    invoke-direct {v2, p0, p3}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$DisplayableExcerptLoader;-><init>(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$1;)V

    sget-object v3, Lcom/amazon/xray/model/loader/AsyncListLoader;->SYMMETRIC_LOAD_ORDER:Lcom/amazon/xray/model/loader/AsyncListLoader$LoadOrderStrategy;

    .line 149
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x2

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/amazon/xray/model/loader/AsyncListLoader;-><init>(Lcom/amazon/xray/model/loader/AsyncListLoader$ValueLoader;Lcom/amazon/xray/model/loader/AsyncListLoader$LoadOrderStrategy;III)V

    iput-object p1, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->asyncLoader:Lcom/amazon/xray/model/loader/AsyncListLoader;

    .line 150
    invoke-virtual {p1}, Lcom/amazon/xray/model/loader/AsyncListLoader;->start()V

    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;)Lcom/amazon/xray/ui/activity/XrayActivity;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->announceChapter:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;)Lcom/amazon/xray/ui/widget/CardCarousel;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->carousel:Lcom/amazon/xray/ui/widget/CardCarousel;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->excerpts:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;)Lcom/amazon/xray/model/object/DisplayableExcerptFactory;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->displayableFactory:Lcom/amazon/xray/model/object/DisplayableExcerptFactory;

    return-object p0
.end method

.method private getActualItemViewType(I)I
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->excerpts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/xray/model/object/Excerpt;

    invoke-virtual {p1}, Lcom/amazon/xray/model/object/Excerpt;->getImageId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 273
    :cond_0
    iget-object p1, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->excerptEntity:Lcom/amazon/xray/model/object/Entity;

    if-nez p1, :cond_1

    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    return p1
.end method

.method private getActualView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 300
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->getActualItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 303
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->getTextCardView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 305
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->getImageCardView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 307
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->getFramelessImageCardView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private getCardContentDescription(ILcom/amazon/xray/model/object/DisplayableExcerpt;)Ljava/lang/CharSequence;
    .locals 6

    if-nez p2, :cond_0

    const-string p1, ""

    return-object p1

    .line 789
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 790
    iget-object v1, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    sget v2, Lcom/amazon/kindle/xray/R$string;->xray_card_num_of_total:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    add-int/2addr p1, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {p0}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->getCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string p1, ","

    .line 791
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 792
    invoke-virtual {p2}, Lcom/amazon/xray/model/object/DisplayableExcerpt;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method private getFramelessImageCardView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-eqz p2, :cond_0

    goto :goto_0

    .line 618
    :cond_0
    invoke-direct {p0, p3}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->inflateFramelessImageCardView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 619
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageCardViewHolder;

    .line 622
    invoke-virtual {p0, p1}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/xray/model/object/Excerpt;

    .line 623
    iget-object v1, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->asyncLoader:Lcom/amazon/xray/model/loader/AsyncListLoader;

    invoke-virtual {v1, p1}, Lcom/amazon/xray/model/loader/AsyncListLoader;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/xray/model/object/DisplayableExcerpt;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 625
    invoke-virtual {v1}, Lcom/amazon/xray/model/object/DisplayableExcerpt;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_1

    .line 627
    invoke-static {}, Lcom/amazon/xray/plugin/util/BookUtil;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v4

    const-string v5, "XrayReadingSession"

    invoke-static {v4, v5}, Lcom/amazon/xray/metrics/SessionManager;->getSessionMetric(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lcom/amazon/xray/metrics/Metric;

    move-result-object v4

    const-string v5, "NullImageCardsShown"

    .line 629
    invoke-virtual {v4, v5}, Lcom/amazon/xray/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    .line 632
    :cond_1
    iget-object v4, p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageCardViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 635
    iget-object v3, p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageCardViewHolder;->imageListener:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageOnClickListener;

    invoke-virtual {v1}, Lcom/amazon/xray/model/object/DisplayableExcerpt;->getImage()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageOnClickListener;->setImage(Landroid/graphics/Bitmap;)V

    .line 636
    iget-object v3, p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageCardViewHolder;->imageListener:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageOnClickListener;

    invoke-virtual {v1}, Lcom/amazon/xray/model/object/DisplayableExcerpt;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageOnClickListener;->setImageCaption(Ljava/lang/CharSequence;)V

    .line 637
    iget-object v3, p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageCardViewHolder;->imageListener:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageOnClickListener;

    invoke-virtual {v0}, Lcom/amazon/xray/model/object/Excerpt;->getGoTo()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageOnClickListener;->setLocation(I)V

    .line 638
    iget-object p3, p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageCardViewHolder;->imageListener:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageOnClickListener;

    invoke-virtual {v1}, Lcom/amazon/xray/model/object/DisplayableExcerpt;->getPageLabel()Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageOnClickListener;->setPageLabel(Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;)V

    goto :goto_1

    .line 640
    :cond_2
    iget-object v0, p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageCardViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 641
    iget-object p3, p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageCardViewHolder;->imageListener:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageOnClickListener;

    invoke-virtual {p3, v2}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageOnClickListener;->setImage(Landroid/graphics/Bitmap;)V

    .line 644
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->getCardContentDescription(ILcom/amazon/xray/model/object/DisplayableExcerpt;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 645
    new-instance p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$AnnounceChapterAccessibilityDelegate;

    invoke-direct {p3, p0, v2}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$AnnounceChapterAccessibilityDelegate;-><init>(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$1;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    const-string p3, "XrayCard_Image"

    const-string v0, "ImageContent"

    .line 647
    invoke-direct {p0, p3, v0, p1}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->readingStreamsConsumeContent(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p2
.end method

.method private getImageCardView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    if-eqz p2, :cond_0

    goto :goto_0

    .line 539
    :cond_0
    invoke-direct {p0, p3}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->inflateImageCardView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 540
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$ImageCardViewHolder;

    .line 541
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 544
    iget-object v1, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->asyncLoader:Lcom/amazon/xray/model/loader/AsyncListLoader;

    invoke-virtual {v1, p1}, Lcom/amazon/xray/model/loader/AsyncListLoader;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/xray/model/object/DisplayableExcerpt;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 546
    invoke-virtual {v1}, Lcom/amazon/xray/model/object/DisplayableExcerpt;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_1

    .line 548
    invoke-static {}, Lcom/amazon/xray/plugin/util/BookUtil;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v4

    const-string v5, "XrayReadingSession"

    invoke-static {v4, v5}, Lcom/amazon/xray/metrics/SessionManager;->getSessionMetric(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lcom/amazon/xray/metrics/Metric;

    move-result-object v4

    const-string v5, "NullImageCardsShown"

    .line 550
    invoke-virtual {v4, v5}, Lcom/amazon/xray/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    .line 554
    :cond_1
    iget-object v4, p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$ImageCardViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 557
    iget-object v3, p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$ImageCardViewHolder;->pageListener:Lcom/amazon/xray/ui/listener/GoToImageExcerptOnClickListener;

    iget-object v4, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->excerpts:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/xray/model/object/Excerpt;

    invoke-virtual {v3, v4}, Lcom/amazon/xray/ui/listener/GoToImageExcerptOnClickListener;->setExcerpt(Lcom/amazon/xray/model/object/Excerpt;)V

    .line 558
    invoke-virtual {v1}, Lcom/amazon/xray/model/object/DisplayableExcerpt;->getPageLabel()Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;

    move-result-object v3

    .line 559
    iget-object v4, p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$ImageCardViewHolder;->pageButton:Landroid/widget/Button;

    sget v5, Lcom/amazon/kindle/xray/R$string;->xray_go_to_page:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;->getLabel()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v0, v5, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 560
    iget-object p3, p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$ImageCardViewHolder;->pageButton:Landroid/widget/Button;

    sget v4, Lcom/amazon/kindle/xray/R$string;->xray_go_to_page:I

    new-array v5, v6, [Ljava/lang/Object;

    .line 561
    invoke-virtual {v3}, Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;->getFullLabel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v9

    .line 560
    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 563
    :cond_2
    iget-object p3, p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$ImageCardViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 566
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->getCardContentDescription(ILcom/amazon/xray/model/object/DisplayableExcerpt;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 567
    new-instance p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$AnnounceChapterAccessibilityDelegate;

    invoke-direct {p3, p0, v2}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$AnnounceChapterAccessibilityDelegate;-><init>(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$1;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    const-string p3, "XrayCard_Image"

    const-string v0, "ImageContent"

    .line 569
    invoke-direct {p0, p3, v0, p1}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->readingStreamsConsumeContent(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p2
.end method

.method private getSpoilerGuardView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-eqz p2, :cond_0

    goto :goto_0

    .line 692
    :cond_0
    invoke-direct {p0, p3}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->inflateSpoilerGuardView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 693
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$SpoilerGuardViewHolder;

    const/4 v0, 0x1

    .line 698
    iget-object v1, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    if-ne p1, v0, :cond_1

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/xray/R$string;->xray_spoiler_alternate_message:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 699
    :cond_1
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/xray/R$string;->xray_spoiler_message:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 700
    :goto_1
    iget-object v2, p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$SpoilerGuardViewHolder;->spoilerButton:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 703
    iget-object v2, p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$SpoilerGuardViewHolder;->imageView:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 704
    iget-object v2, p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$SpoilerGuardViewHolder;->imageView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 705
    iget-object v2, p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$SpoilerGuardViewHolder;->excerptView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 706
    iget-object v2, p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$SpoilerGuardViewHolder;->excerptView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    iget-object v2, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->asyncLoader:Lcom/amazon/xray/model/loader/AsyncListLoader;

    invoke-virtual {v2, p1}, Lcom/amazon/xray/model/loader/AsyncListLoader;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/xray/model/object/DisplayableExcerpt;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 710
    iget-object v4, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->excerpts:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/xray/model/object/Excerpt;

    invoke-virtual {v4}, Lcom/amazon/xray/model/object/Excerpt;->getImageId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 711
    iget-object v4, p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$SpoilerGuardViewHolder;->excerptView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 712
    iget-object p3, p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$SpoilerGuardViewHolder;->excerptView:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/amazon/xray/model/object/DisplayableExcerpt;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 714
    :cond_2
    invoke-virtual {v2}, Lcom/amazon/xray/model/object/DisplayableExcerpt;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_3

    .line 716
    invoke-static {}, Lcom/amazon/xray/plugin/util/BookUtil;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v4

    const-string v5, "XrayReadingSession"

    invoke-static {v4, v5}, Lcom/amazon/xray/metrics/SessionManager;->getSessionMetric(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lcom/amazon/xray/metrics/Metric;

    move-result-object v4

    const-string v5, "NullImageCardsShown"

    .line 718
    invoke-virtual {v4, v5}, Lcom/amazon/xray/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    .line 721
    :cond_3
    iget-object v4, p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$SpoilerGuardViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 722
    iget-object p3, p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$SpoilerGuardViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 726
    :cond_4
    :goto_2
    new-instance p3, Landroid/text/SpannableStringBuilder;

    invoke-direct {p3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 727
    iget-object v2, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    sget v4, Lcom/amazon/kindle/xray/R$string;->xray_card_num_of_total:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    add-int/lit8 v6, p1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {p0}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v0

    invoke-virtual {v2, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v0, ","

    .line 728
    invoke-virtual {p3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 729
    invoke-virtual {p3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 730
    invoke-virtual {p2, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 733
    iget-object p3, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->carousel:Lcom/amazon/xray/ui/widget/CardCarousel;

    invoke-virtual {p3}, Lcom/amazon/xray/ui/widget/CardCarousel;->getFocusedCardIndex()I

    move-result p3

    if-ne p1, p3, :cond_5

    .line 734
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string p3, "XrayCard_SpoilerGuard"

    .line 735
    invoke-interface {p1, p3}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;)V

    :cond_5
    return-object p2
.end method

.method private getTextCardView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    if-eqz p2, :cond_0

    goto :goto_0

    .line 365
    :cond_0
    invoke-direct {p0, p3}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->inflateTextCardView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 366
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;

    .line 367
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 370
    iget-object v1, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->asyncLoader:Lcom/amazon/xray/model/loader/AsyncListLoader;

    invoke-virtual {v1, p1}, Lcom/amazon/xray/model/loader/AsyncListLoader;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/xray/model/object/DisplayableExcerpt;

    if-eqz v1, :cond_3

    .line 373
    iget-object v2, p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->excerptScrollView:Landroid/widget/ScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 374
    iget-object v2, p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->excerptView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/amazon/xray/model/object/DisplayableExcerpt;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v2, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->excerpts:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/xray/model/object/Excerpt;

    .line 378
    iget-object v4, p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->pageListener:Lcom/amazon/xray/ui/listener/GoToEntityExcerptOnClickListener;

    invoke-virtual {v4, v2}, Lcom/amazon/xray/ui/listener/GoToEntityExcerptOnClickListener;->setExcerpt(Lcom/amazon/xray/model/object/Excerpt;)V

    .line 379
    iget-object v4, p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->shareListener:Lcom/amazon/xray/ui/listener/ShareExcerptOnClickListener;

    invoke-virtual {v4, v2}, Lcom/amazon/xray/ui/listener/ShareExcerptOnClickListener;->setExcerpt(Lcom/amazon/xray/model/object/Excerpt;)V

    .line 380
    iget-object v4, p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->shareListener:Lcom/amazon/xray/ui/listener/ShareExcerptOnClickListener;

    invoke-virtual {v4, v1}, Lcom/amazon/xray/ui/listener/ShareExcerptOnClickListener;->setDisplayableExcerpt(Lcom/amazon/xray/model/object/DisplayableExcerpt;)V

    .line 381
    iget-object v4, p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->saveHighlightListener:Lcom/amazon/xray/ui/listener/HighlightExcerptOnClickListener;

    invoke-virtual {v4, v2}, Lcom/amazon/xray/ui/listener/HighlightExcerptOnClickListener;->setExcerpt(Lcom/amazon/xray/model/object/Excerpt;)V

    .line 383
    invoke-virtual {v1}, Lcom/amazon/xray/model/object/DisplayableExcerpt;->getPageLabel()Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;

    move-result-object v4

    .line 384
    iget-object v5, p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->pageButton:Landroid/widget/Button;

    sget v6, Lcom/amazon/kindle/xray/R$string;->xray_go_to_page:I

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;->getLabel()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-virtual {v0, v6, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v5, p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->pageButton:Landroid/widget/Button;

    sget v6, Lcom/amazon/kindle/xray/R$string;->xray_go_to_page:I

    new-array v8, v7, [Ljava/lang/Object;

    .line 386
    invoke-virtual {v4}, Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;->getFullLabel()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    .line 385
    invoke-virtual {v0, v6, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-static {v0}, Lcom/amazon/xray/plugin/util/SharingUtil;->isSharingEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    .line 389
    :goto_1
    iget-object v4, p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->shareButton:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 390
    iget-object v4, p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->shareHighlightSeparator:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 392
    invoke-virtual {v2}, Lcom/amazon/xray/model/object/Excerpt;->getStart()I

    move-result v0

    .line 393
    invoke-virtual {v2}, Lcom/amazon/xray/model/object/Excerpt;->getStart()I

    move-result v4

    invoke-virtual {v2}, Lcom/amazon/xray/model/object/Excerpt;->getLength()I

    move-result v2

    add-int/2addr v4, v2

    .line 392
    invoke-static {v0, v4}, Lcom/amazon/xray/plugin/util/ContentUtil;->isTextHighlighted(II)Z

    move-result v0

    .line 394
    iget-object v2, p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->saveHighlightButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    if-eqz v0, :cond_2

    sget v5, Lcom/amazon/kindle/xray/R$string;->xray_highlighted:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    sget v5, Lcom/amazon/kindle/xray/R$string;->xray_highlight:I

    .line 395
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 394
    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v2, p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->saveHighlightButton:Landroid/widget/Button;

    xor-int/2addr v0, v7

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 397
    iget-object p3, p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->cardLinks:Landroid/view/View;

    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 399
    :cond_3
    iget-object v0, p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->excerptView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object p3, p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->cardLinks:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 403
    :goto_3
    invoke-direct {p0, p1, v1}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->getCardContentDescription(ILcom/amazon/xray/model/object/DisplayableExcerpt;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 404
    new-instance p3, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$AnnounceChapterAccessibilityDelegate;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$AnnounceChapterAccessibilityDelegate;-><init>(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$1;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    const-string p3, "XrayCard_Passage"

    const-string v0, "PassageContent"

    .line 406
    invoke-direct {p0, p3, v0, p1}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->readingStreamsConsumeContent(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p2
.end method

.method private inflateFramelessImageCardView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 662
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/xray/R$layout;->xray_card_image_frameless:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 664
    new-instance v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageCardViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageCardViewHolder;-><init>(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$1;)V

    .line 665
    sget v2, Lcom/amazon/kindle/xray/R$id;->xray_card_image:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageCardViewHolder;->imageView:Landroid/widget/ImageView;

    .line 668
    new-instance v2, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageOnClickListener;

    invoke-direct {v2, p0, v1}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageOnClickListener;-><init>(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$1;)V

    iput-object v2, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageCardViewHolder;->imageListener:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageOnClickListener;

    .line 669
    iget-object v1, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageCardViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 671
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 674
    iget-object v0, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageCardViewHolder;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    return-object p1
.end method

.method private inflateImageCardView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 584
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/xray/R$layout;->xray_card_image:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 586
    new-instance v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$ImageCardViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$ImageCardViewHolder;-><init>(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$1;)V

    .line 587
    sget v1, Lcom/amazon/kindle/xray/R$id;->xray_card_image:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$ImageCardViewHolder;->imageView:Landroid/widget/ImageView;

    .line 588
    sget v1, Lcom/amazon/kindle/xray/R$id;->xray_separator:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$ImageCardViewHolder;->separator:Landroid/view/View;

    .line 589
    sget v1, Lcom/amazon/kindle/xray/R$id;->xray_card_page_link:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$ImageCardViewHolder;->pageButton:Landroid/widget/Button;

    .line 590
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 593
    new-instance v1, Lcom/amazon/xray/ui/listener/GoToImageExcerptOnClickListener;

    iget-object v2, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-direct {v1, v2}, Lcom/amazon/xray/ui/listener/GoToImageExcerptOnClickListener;-><init>(Lcom/amazon/xray/ui/activity/XrayActivity;)V

    iput-object v1, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$ImageCardViewHolder;->pageListener:Lcom/amazon/xray/ui/listener/GoToImageExcerptOnClickListener;

    .line 594
    iget-object v2, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$ImageCardViewHolder;->pageButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 597
    invoke-static {}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object v1

    .line 598
    invoke-virtual {v1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amazon/xray/ui/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 599
    iget-object v2, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$ImageCardViewHolder;->separator:Landroid/view/View;

    invoke-virtual {v1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSeparatorColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 600
    iget-object v0, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$ImageCardViewHolder;->pageButton:Landroid/widget/Button;

    invoke-virtual {v1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSecondaryButtonColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-object p1
.end method

.method private inflateSpoilerGuardView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 750
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/xray/R$layout;->xray_card_spoiler_guard:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 752
    new-instance v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$SpoilerGuardViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$SpoilerGuardViewHolder;-><init>(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$1;)V

    .line 753
    sget v2, Lcom/amazon/kindle/xray/R$id;->xray_spoiler_mask:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$SpoilerGuardViewHolder;->spoilerMask:Landroid/view/View;

    .line 754
    sget v2, Lcom/amazon/kindle/xray/R$id;->xray_spoiler_toggle_button:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$SpoilerGuardViewHolder;->spoilerButton:Landroid/widget/TextView;

    .line 755
    sget v2, Lcom/amazon/kindle/xray/R$id;->xray_card_image:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$SpoilerGuardViewHolder;->imageView:Landroid/widget/ImageView;

    .line 756
    sget v2, Lcom/amazon/kindle/xray/R$id;->xray_card_excerpt:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$SpoilerGuardViewHolder;->excerptView:Landroid/widget/TextView;

    .line 757
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 760
    iget-object v2, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$SpoilerGuardViewHolder;->imageView:Landroid/widget/ImageView;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 761
    iget-object v2, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$SpoilerGuardViewHolder;->excerptView:Landroid/widget/TextView;

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 764
    new-instance v2, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$SpoilerButtonOnClickListener;

    invoke-direct {v2, p0, v1}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$SpoilerButtonOnClickListener;-><init>(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$1;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 767
    invoke-static {}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object v2

    .line 768
    invoke-virtual {v2}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/amazon/xray/ui/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 769
    iget-object v3, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$SpoilerGuardViewHolder;->spoilerMask:Landroid/view/View;

    invoke-virtual {v2}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSpoilerOverlayColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 770
    iget-object v3, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$SpoilerGuardViewHolder;->spoilerButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getRevealArrowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v1, v1, v1, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 771
    iget-object v0, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$SpoilerGuardViewHolder;->spoilerButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getTertiaryButtonColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-object p1
.end method

.method private inflateTextCardView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 421
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/xray/R$layout;->xray_card_text:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 423
    new-instance v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;-><init>(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$1;)V

    .line 424
    sget v1, Lcom/amazon/kindle/xray/R$id;->xray_card_excerpt_scroll:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 425
    const-class v3, Lcom/amazon/kindle/krx/ui/DarkModeHelper;

    invoke-static {v3}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/ui/DarkModeHelper;

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    .line 426
    invoke-interface {v3, v4}, Lcom/amazon/kindle/krx/ui/DarkModeHelper;->isDarkModePhaseEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    .line 427
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/krx/ui/ColorMode;->isDark()Z

    move-result v3

    if-nez v3, :cond_1

    .line 430
    sget v3, Lcom/amazon/kindle/xray/R$layout;->xray_card_excerpt_scroll_light:I

    invoke-virtual {v1, v3}, Landroid/view/ViewStub;->setLayoutResource(I)V

    goto :goto_0

    .line 432
    :cond_1
    sget v3, Lcom/amazon/kindle/xray/R$layout;->xray_card_excerpt_scroll_dark:I

    invoke-virtual {v1, v3}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 434
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 435
    iput-object v1, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->excerptScrollView:Landroid/widget/ScrollView;

    .line 436
    sget v3, Lcom/amazon/kindle/xray/R$id;->xray_card_excerpt:I

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->excerptView:Landroid/widget/TextView;

    .line 437
    sget v1, Lcom/amazon/kindle/xray/R$id;->xray_separator:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->separator:Landroid/view/View;

    .line 438
    sget v1, Lcom/amazon/kindle/xray/R$id;->xray_card_links:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->cardLinks:Landroid/view/View;

    .line 439
    sget v1, Lcom/amazon/kindle/xray/R$id;->xray_card_page_link:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->pageButton:Landroid/widget/Button;

    .line 440
    sget v1, Lcom/amazon/kindle/xray/R$id;->xray_card_link_separator_0:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->pageShareSeparator:Landroid/widget/TextView;

    .line 441
    sget v1, Lcom/amazon/kindle/xray/R$id;->xray_card_share_link:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->shareButton:Landroid/widget/Button;

    .line 442
    sget v1, Lcom/amazon/kindle/xray/R$id;->xray_card_link_separator_1:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->shareHighlightSeparator:Landroid/widget/TextView;

    .line 443
    sget v1, Lcom/amazon/kindle/xray/R$id;->xray_card_highlight_link:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->saveHighlightButton:Landroid/widget/Button;

    .line 444
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 447
    new-instance v1, Lcom/amazon/xray/ui/listener/GoToEntityExcerptOnClickListener;

    iget-object v3, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    iget-object v5, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->excerptEntity:Lcom/amazon/xray/model/object/Entity;

    invoke-direct {v1, v3, v5}, Lcom/amazon/xray/ui/listener/GoToEntityExcerptOnClickListener;-><init>(Lcom/amazon/xray/ui/activity/XrayActivity;Lcom/amazon/xray/model/object/Entity;)V

    iput-object v1, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->pageListener:Lcom/amazon/xray/ui/listener/GoToEntityExcerptOnClickListener;

    .line 448
    iget-object v3, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->pageButton:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    new-instance v1, Lcom/amazon/xray/ui/listener/ShareExcerptOnClickListener;

    iget-object v3, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    iget-object v5, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->excerptEntity:Lcom/amazon/xray/model/object/Entity;

    invoke-direct {v1, v3, v5}, Lcom/amazon/xray/ui/listener/ShareExcerptOnClickListener;-><init>(Lcom/amazon/xray/ui/activity/XrayActivity;Lcom/amazon/xray/model/object/Entity;)V

    iput-object v1, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->shareListener:Lcom/amazon/xray/ui/listener/ShareExcerptOnClickListener;

    .line 450
    iget-object v3, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->shareButton:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    new-instance v1, Lcom/amazon/xray/ui/listener/HighlightExcerptOnClickListener;

    iget-object v3, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->excerptEntity:Lcom/amazon/xray/model/object/Entity;

    iget-object v5, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->carousel:Lcom/amazon/xray/ui/widget/CardCarousel;

    invoke-direct {v1, v3, v5}, Lcom/amazon/xray/ui/listener/HighlightExcerptOnClickListener;-><init>(Lcom/amazon/xray/model/object/Entity;Lcom/amazon/xray/ui/widget/CardCarousel;)V

    iput-object v1, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->saveHighlightListener:Lcom/amazon/xray/ui/listener/HighlightExcerptOnClickListener;

    .line 452
    iget-object v3, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->saveHighlightButton:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    sget v1, Lcom/amazon/kindle/xray/R$id;->xray_card_link_separator_0:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v4}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 458
    sget v1, Lcom/amazon/kindle/xray/R$id;->xray_card_link_separator_1:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v4}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 462
    iget-object v1, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->excerptScrollView:Landroid/widget/ScrollView;

    invoke-static {v1, v4}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 463
    iget-object v1, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->excerptView:Landroid/widget/TextView;

    invoke-static {v1, v4}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 466
    invoke-static {}, Lcom/amazon/xray/ui/util/TextScalingUtil;->isFontScaleOverCap()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 467
    iget-object v1, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->excerptView:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/amazon/xray/ui/util/TextScalingUtil;->scaleTextWithCap(Landroid/widget/TextView;)V

    .line 468
    iget-object v1, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->pageButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/amazon/xray/ui/util/TextScalingUtil;->scaleTextWithCap(Landroid/widget/TextView;)V

    .line 469
    iget-object v1, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->shareButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/amazon/xray/ui/util/TextScalingUtil;->scaleTextWithCap(Landroid/widget/TextView;)V

    .line 470
    iget-object v1, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->saveHighlightButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/amazon/xray/ui/util/TextScalingUtil;->scaleTextWithCap(Landroid/widget/TextView;)V

    .line 474
    :cond_2
    invoke-static {}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object v1

    .line 475
    invoke-virtual {v1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/amazon/xray/ui/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 476
    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->setExcerptCardColors(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;Lcom/amazon/xray/ui/util/XrayThemeUtil;Z)V

    .line 477
    iget-object v2, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->separator:Landroid/view/View;

    invoke-virtual {v1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSeparatorColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 478
    iget-object v2, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->pageButton:Landroid/widget/Button;

    invoke-virtual {v1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSecondaryButtonColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 479
    iget-object v2, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->pageShareSeparator:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSecondaryTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 480
    iget-object v2, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->shareButton:Landroid/widget/Button;

    invoke-virtual {v1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSecondaryButtonColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 481
    iget-object v2, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->shareHighlightSeparator:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSecondaryTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 482
    iget-object v0, v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->saveHighlightButton:Landroid/widget/Button;

    invoke-virtual {v1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSecondaryButtonColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-object p1
.end method

.method private readingStreamsConsumeContent(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .line 323
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->carousel:Lcom/amazon/xray/ui/widget/CardCarousel;

    invoke-virtual {v0}, Lcom/amazon/xray/ui/widget/CardCarousel;->getFocusedCardIndex()I

    move-result v0

    if-ne p3, v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->excerpts:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/xray/model/object/Excerpt;

    .line 325
    invoke-virtual {p0, p3}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->contentConsumptionMetadataForExcerpt(Lcom/amazon/xray/model/object/Excerpt;)Ljava/util/Map;

    move-result-object v5

    .line 327
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 328
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    .line 329
    invoke-virtual {p3}, Lcom/amazon/xray/model/object/Excerpt;->getStart()I

    move-result v3

    .line 330
    invoke-virtual {p3}, Lcom/amazon/xray/model/object/Excerpt;->getStart()I

    move-result v1

    invoke-virtual {p3}, Lcom/amazon/xray/model/object/Excerpt;->getLength()I

    move-result p3

    add-int v4, v1, p3

    move-object v1, p1

    move-object v2, p2

    .line 329
    invoke-interface/range {v0 .. v5}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->consumeContentSpan(Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;)V

    :cond_0
    return-void
.end method

.method private setExcerptCardColors(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;Lcom/amazon/xray/ui/util/XrayThemeUtil;Z)V
    .locals 3

    .line 500
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 501
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p3, :cond_3

    .line 503
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object p3

    .line 504
    sget-object v2, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$1;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v2, p3

    const/4 v2, 0x1

    if-eq p3, v2, :cond_2

    const/4 v2, 0x2

    if-eq p3, v2, :cond_1

    const/4 v2, 0x3

    if-eq p3, v2, :cond_0

    goto :goto_0

    .line 514
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object p3

    sget-object v0, Lcom/amazon/kindle/krx/theme/ThemeArea;->IN_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {p3, v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object p3

    sget-object v0, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne p3, v0, :cond_3

    .line 515
    iget-object p2, p1, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->excerptScrollView:Landroid/widget/ScrollView;

    sget p3, Lcom/amazon/kindle/xray/R$color;->excerpt_card_white_background:I

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 516
    iget-object p1, p1, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->excerptView:Landroid/widget/TextView;

    sget p2, Lcom/amazon/kindle/xray/R$color;->excerpt_card_white_text:I

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 510
    :cond_1
    iget-object p2, p1, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->excerptScrollView:Landroid/widget/ScrollView;

    sget p3, Lcom/amazon/kindle/xray/R$color;->excerpt_card_green_background:I

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 511
    iget-object p1, p1, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->excerptView:Landroid/widget/TextView;

    sget p2, Lcom/amazon/kindle/xray/R$color;->excerpt_card_green_text:I

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 506
    :cond_2
    iget-object p2, p1, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->excerptScrollView:Landroid/widget/ScrollView;

    sget p3, Lcom/amazon/kindle/xray/R$color;->excerpt_card_sepia_background:I

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 507
    iget-object p1, p1, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->excerptView:Landroid/widget/TextView;

    sget p2, Lcom/amazon/kindle/xray/R$color;->excerpt_card_sepia_text:I

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 523
    :cond_3
    :goto_0
    iget-object p1, p1, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;->excerptView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getPrimaryTextColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method contentConsumptionMetadataForExcerpt(Lcom/amazon/xray/model/object/Excerpt;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/xray/model/object/Excerpt;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 344
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    if-eqz p1, :cond_0

    .line 346
    invoke-virtual {p1}, Lcom/amazon/xray/model/object/Excerpt;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "ExcerptId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string/jumbo p1, "verticalScrollState"

    const-string/jumbo v1, "unsupported"

    .line 348
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 220
    iget v0, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->spoilerIndex:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->excerpts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->excerpts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->spoilerIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getDisplayableExcerpt(I)Lcom/amazon/xray/model/object/DisplayableExcerpt;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->asyncLoader:Lcom/amazon/xray/model/loader/AsyncListLoader;

    invoke-virtual {v0, p1}, Lcom/amazon/xray/model/loader/AsyncListLoader;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/xray/model/object/DisplayableExcerpt;

    return-object p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->excerpts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 244
    iget v0, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->spoilerIndex:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 248
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->getActualItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 279
    invoke-virtual {p0, p1}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 281
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->getSpoilerGuardView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 284
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->getActualView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public isItemSpoiler(I)Z
    .locals 1

    .line 258
    iget v0, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->spoilerIndex:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setAnnounceChapter(Z)V
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->announceChapter:Z

    return-void
.end method

.method public setOnLoadListener(Lcom/amazon/xray/model/loader/AsyncListLoader$OnLoadListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/xray/model/loader/AsyncListLoader$OnLoadListener<",
            "Lcom/amazon/xray/model/object/DisplayableExcerpt;",
            ">;)V"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->asyncLoader:Lcom/amazon/xray/model/loader/AsyncListLoader;

    invoke-virtual {v0, p1}, Lcom/amazon/xray/model/loader/AsyncListLoader;->setOnLoadListener(Lcom/amazon/xray/model/loader/AsyncListLoader$OnLoadListener;)V

    return-void
.end method

.method public setSpoilerIndex(I)V
    .locals 0

    .line 205
    iput p1, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->spoilerIndex:I

    return-void
.end method

.method public setVisibleRange(II)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->asyncLoader:Lcom/amazon/xray/model/loader/AsyncListLoader;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/xray/model/loader/AsyncListLoader;->setVisibleRange(II)V

    return-void
.end method

.method public start()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->asyncLoader:Lcom/amazon/xray/model/loader/AsyncListLoader;

    invoke-virtual {v0}, Lcom/amazon/xray/model/loader/AsyncListLoader;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->asyncLoader:Lcom/amazon/xray/model/loader/AsyncListLoader;

    invoke-virtual {v0}, Lcom/amazon/xray/model/loader/AsyncListLoader;->stop()V

    return-void
.end method
