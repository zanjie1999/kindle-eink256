.class public Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;
.super Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
.source "AuthorBioListWidgetDef.java"


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

.field public final authorSubscriptionInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;",
            ">;"
        }
    .end annotation
.end field

.field public final followHint:Ljava/lang/String;

.field public final refTagFeatureIdPartial:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/ea/sidecar/def/data/AuthorBioData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    iput-object p2, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    .line 37
    iput-object p6, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->title:Ljava/lang/String;

    .line 38
    iput-object p7, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->authorBioList:Ljava/util/List;

    .line 39
    iput-object p8, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->authorSubscriptionInfoList:Ljava/util/List;

    .line 40
    iput-object p9, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->followHint:Ljava/lang/String;

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

    .line 60
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    if-eq v2, v3, :cond_2

    return v1

    .line 63
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    .line 64
    invoke-super {p0, p1}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    iget-object v3, v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->title:Ljava/lang/String;

    iget-object v3, v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->title:Ljava/lang/String;

    .line 65
    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->authorBioList:Ljava/util/List;

    iget-object v3, v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->authorBioList:Ljava/util/List;

    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->authorSubscriptionInfoList:Ljava/util/List;

    iget-object v3, v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->authorSubscriptionInfoList:Ljava/util/List;

    .line 66
    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->followHint:Ljava/lang/String;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->followHint:Ljava/lang/String;

    .line 67
    invoke-static {p1, v2}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 72
    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->title:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->authorBioList:Ljava/util/List;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->authorSubscriptionInfoList:Ljava/util/List;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->followHint:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/amazon/ea/guava/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;
    .locals 3

    .line 78
    invoke-super {p0}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    const-string/jumbo v2, "refTagFeatureIdPartial"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->title:Ljava/lang/String;

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->authorBioList:Ljava/util/List;

    const-string v2, "authorBioList"

    .line 79
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->authorSubscriptionInfoList:Ljava/util/List;

    const-string v2, "authorSubscriptionInfoList"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->followHint:Ljava/lang/String;

    const-string v2, "followHint"

    .line 80
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    return-object v0
.end method
