.class public abstract Lcom/amazon/ea/model/layout/LayoutModel;
.super Ljava/lang/Object;
.source "LayoutModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final metricsTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/ea/model/layout/LayoutModel;->metricsTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 33
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 36
    :cond_2
    check-cast p1, Lcom/amazon/ea/model/layout/LayoutModel;

    .line 37
    iget-object v0, p0, Lcom/amazon/ea/model/layout/LayoutModel;->metricsTag:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/ea/model/layout/LayoutModel;->metricsTag:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract getWidgetIdToRefTagPlacementId()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWidgets()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/ea/model/widget/WidgetModel;",
            ">;"
        }
    .end annotation
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 60
    iget-object v1, p0, Lcom/amazon/ea/model/layout/LayoutModel;->metricsTag:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/amazon/ea/guava/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public abstract prepareData()V
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/amazon/ea/model/layout/LayoutModel;->toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;
    .locals 3

    .line 74
    invoke-static {p0}, Lcom/amazon/ea/guava/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/model/layout/LayoutModel;->metricsTag:Ljava/lang/String;

    const-string/jumbo v2, "metricsTag"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    return-object v0
.end method
