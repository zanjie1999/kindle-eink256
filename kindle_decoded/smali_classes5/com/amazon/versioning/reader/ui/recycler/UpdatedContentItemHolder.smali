.class public Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "UpdatedContentItemHolder.java"


# static fields
.field private static final CLASS_TAG:Ljava/lang/String;


# instance fields
.field private final updatedContentItemView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemHolder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemHolder;->CLASS_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 28
    iput-object p1, p0, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemHolder;->updatedContentItemView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemHolder;->CLASS_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemHolder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemHolder;->reportPMETAndAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reportAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 92
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getUpdatePluginMetricsManager()Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;

    move-result-object v0

    .line 93
    invoke-virtual {v0, p1, p2}, Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;->performReadingStreamsAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reportPMET(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 87
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getUpdatePluginMetricsManager()Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;

    move-result-object v0

    .line 88
    invoke-virtual {v0, p1, p2}, Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reportPMETAndAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemHolder;->reportPMET(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemHolder;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setupBookOpen(Landroid/widget/Button;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    .line 69
    sget v0, Lcom/amazon/versioning/R$string;->update_notes_open_button:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 70
    new-instance v0, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemHolder$1;

    invoke-direct {v0, p0, p2}, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemHolder$1;-><init>(Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemHolder;Lcom/amazon/kindle/krx/content/IBook;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public bindUpdateItem(Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;)V
    .locals 5

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemHolder;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Initiating a bind for a list item"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemHolder;->updatedContentItemView:Landroid/view/View;

    sget v1, Lcom/amazon/versioning/R$id;->update_item_cover_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 39
    invoke-virtual {p1}, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;->getCoverImage()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemHolder;->updatedContentItemView:Landroid/view/View;

    sget v1, Lcom/amazon/versioning/R$id;->update_item_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 45
    invoke-virtual {p1}, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;->getDisplayTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemHolder;->updatedContentItemView:Landroid/view/View;

    sget v1, Lcom/amazon/versioning/R$id;->update_item_status:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 51
    invoke-virtual {p1}, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;->getDisplayUpdateTime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/amazon/versioning/R$string;->received_on_text:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemHolder;->updatedContentItemView:Landroid/view/View;

    sget v1, Lcom/amazon/versioning/R$id;->update_open_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 57
    invoke-virtual {p1}, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;->getBookId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 59
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContent(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemHolder;->setupBookOpen(Landroid/widget/Button;Lcom/amazon/kindle/krx/content/IBook;)V

    :cond_3
    return-void
.end method
