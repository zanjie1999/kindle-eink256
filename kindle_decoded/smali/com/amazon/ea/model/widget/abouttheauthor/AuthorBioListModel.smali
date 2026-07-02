.class public Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;
.super Lcom/amazon/ea/model/widget/WidgetModel;
.source "AuthorBioListModel.java"


# static fields
.field private static final SUPPORTED_DISPLAY_FORMATS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/ea/model/widget/WidgetDisplayFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final authorBioList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/ea/sidecar/def/data/AuthorBioData;",
            ">;"
        }
    .end annotation
.end field

.field public imageHeight:I

.field protected final refTagFeatureIdPartial:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    .line 25
    sget-object v1, Lcom/amazon/ea/model/widget/WidgetDisplayFormat;->FULL_WIDTH:Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 26
    invoke-static {v0}, Lcom/amazon/ea/guava/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;->SUPPORTED_DISPLAY_FORMATS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/amazon/ea/sidecar/def/data/AuthorBioData;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/amazon/ea/model/widget/WidgetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iput-object p3, p0, Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;->refTagFeatureIdPartial:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;->title:Ljava/lang/String;

    .line 49
    iput p5, p0, Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;->imageHeight:I

    .line 50
    iput-object p6, p0, Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;->authorBioList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 61
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;

    if-eq v2, v3, :cond_2

    return v1

    .line 64
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;

    .line 65
    invoke-super {p0, p1}, Lcom/amazon/ea/model/widget/WidgetModel;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;->title:Ljava/lang/String;

    iget-object v3, v2, Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;->title:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;->authorBioList:Ljava/util/List;

    iget-object v2, v2, Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;->authorBioList:Ljava/util/List;

    invoke-static {p1, v2}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRefTagFeatureId(I)Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 79
    iget-object v1, p0, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;->title:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;->authorBioList:Ljava/util/List;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/amazon/ea/guava/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public initMetricConstants()V
    .locals 3

    .line 84
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    sget-object v1, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->AUTHOR_DETAIL_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    invoke-static {v1}, Lcom/amazon/ea/util/StoreManager;->supports(Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;)Z

    move-result v1

    const-string v2, "SupportsAuthorDetailPage"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/metrics/Profiler;->condSet(ZLjava/lang/String;)Z

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    .line 86
    sget-object v1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v2, "ViewedAuthorBio"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    goto :goto_0

    .line 88
    :cond_0
    sget-object v1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v2, "ExpandedAuthorBio"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public prepareData()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;->authorBioList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;

    .line 95
    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->imageURL:Ljava/lang/String;

    iget v2, p0, Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;->imageHeight:I

    invoke-static {v1, v2}, Lcom/amazon/ea/util/StyleCodeUtil;->addHeightParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    invoke-static {v1}, Lcom/amazon/startactions/storage/ImageDownloadManager;->prepare(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public supports(Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/ea/model/widget/WidgetDisplayFormat;",
            ">;)Z"
        }
    .end annotation

    .line 104
    sget-object v0, Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;->SUPPORTED_DISPLAY_FORMATS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;
    .locals 3

    .line 109
    invoke-super {p0}, Lcom/amazon/ea/model/widget/WidgetModel;->toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;->title:Ljava/lang/String;

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;->authorBioList:Ljava/util/List;

    const-string v2, "authorBioList"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    return-object v0
.end method
