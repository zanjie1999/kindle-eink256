.class public Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;
.super Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
.source "AuthorSubscriptionsWidgetDef.java"


# instance fields
.field public final authorSubs:Ljava/util/List;
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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)V
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
            "Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 30
    iput-object p2, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    .line 31
    iput-object p6, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->title:Ljava/lang/String;

    .line 32
    iput-object p7, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->authorSubs:Ljava/util/List;

    .line 33
    iput-object p8, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->followHint:Ljava/lang/String;

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

    .line 44
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    if-eq v2, v3, :cond_2

    return v1

    .line 47
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    .line 48
    invoke-super {p0, p1}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    iget-object v3, v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->title:Ljava/lang/String;

    iget-object v3, v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->title:Ljava/lang/String;

    .line 49
    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->authorSubs:Ljava/util/List;

    iget-object v3, v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->authorSubs:Ljava/util/List;

    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->followHint:Ljava/lang/String;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->followHint:Ljava/lang/String;

    .line 50
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

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 55
    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->title:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->authorSubs:Ljava/util/List;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->followHint:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/amazon/ea/guava/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;
    .locals 3

    .line 60
    invoke-super {p0}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    const-string/jumbo v2, "refTagFeatureIdPartial"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->title:Ljava/lang/String;

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->authorSubs:Ljava/util/List;

    const-string v2, "authorSubs"

    .line 61
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->followHint:Ljava/lang/String;

    const-string v2, "followHint"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    return-object v0
.end method
