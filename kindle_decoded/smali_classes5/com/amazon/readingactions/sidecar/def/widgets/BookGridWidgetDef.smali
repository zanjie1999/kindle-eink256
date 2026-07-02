.class public Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;
.super Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
.source "BookGridWidgetDef.java"


# instance fields
.field public final bseTitle:Ljava/lang/String;

.field public final buyButtonVisible:Z

.field public final buyInStore:Z

.field public final oneClickBorrowSupported:Z

.field public final recommendations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;",
            ">;"
        }
    .end annotation
.end field

.field public final refTagFeatureIdPartial:Ljava/lang/String;

.field public final showBadges:Z

.field public final showShareButton:Z

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;",
            ">;ZZZZZ)V"
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    iput-object p5, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    .line 95
    iput-object p6, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->title:Ljava/lang/String;

    .line 96
    iput-object p7, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->bseTitle:Ljava/lang/String;

    .line 97
    invoke-static {p8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    .line 98
    iput-boolean p9, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->buyButtonVisible:Z

    .line 99
    iput-boolean p10, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->buyInStore:Z

    .line 100
    iput-boolean p11, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->oneClickBorrowSupported:Z

    .line 101
    iput-boolean p12, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->showBadges:Z

    .line 102
    iput-boolean p13, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->showShareButton:Z

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

    .line 113
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;

    if-eq v2, v3, :cond_2

    return v1

    .line 116
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;

    .line 117
    invoke-super {p0, p1}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    iget-object v3, v2, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->title:Ljava/lang/String;

    iget-object v3, v2, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->title:Ljava/lang/String;

    .line 118
    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->bseTitle:Ljava/lang/String;

    iget-object v3, v2, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->bseTitle:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    iget-object v3, v2, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    .line 119
    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->buyButtonVisible:Z

    iget-boolean v3, v2, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->buyButtonVisible:Z

    if-ne p1, v3, :cond_3

    iget-boolean p1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->buyInStore:Z

    iget-boolean v3, v2, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->buyInStore:Z

    if-ne p1, v3, :cond_3

    iget-boolean p1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->oneClickBorrowSupported:Z

    iget-boolean v3, v2, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->oneClickBorrowSupported:Z

    if-ne p1, v3, :cond_3

    iget-boolean p1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->showBadges:Z

    iget-boolean v3, v2, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->showBadges:Z

    if-ne p1, v3, :cond_3

    iget-boolean p1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->showShareButton:Z

    iget-boolean v2, v2, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->showShareButton:Z

    if-ne p1, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    .line 127
    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->title:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->bseTitle:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->buyButtonVisible:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->buyInStore:Z

    .line 128
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->oneClickBorrowSupported:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->showBadges:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->showShareButton:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 127
    invoke-static {v0}, Lcom/amazon/ea/guava/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;
    .locals 3

    .line 133
    invoke-super {p0}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    const-string/jumbo v2, "refTagFeatureIdPartial"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->title:Ljava/lang/String;

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->bseTitle:Ljava/lang/String;

    const-string v2, "bseTitle"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    const-string/jumbo v2, "recommendations"

    .line 134
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-boolean v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->buyButtonVisible:Z

    const-string v2, "buyButtonVisible"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-boolean v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->buyInStore:Z

    const-string v2, "buyInStore"

    .line 135
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-boolean v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->oneClickBorrowSupported:Z

    const-string/jumbo v2, "oneClickBorrowSupported"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-boolean v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->showBadges:Z

    const-string/jumbo v2, "showBadges"

    .line 136
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-boolean v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->showShareButton:Z

    const-string/jumbo v2, "showShareButton"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    return-object v0
.end method
