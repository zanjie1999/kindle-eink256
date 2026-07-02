.class public Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;
.super Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;
.source "VerticalListLayoutDef.java"


# instance fields
.field public final widgetSlots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 22
    iput-object p3, p0, Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;->widgetSlots:Ljava/util/List;

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

    .line 33
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 36
    :cond_2
    check-cast p1, Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;

    .line 37
    invoke-super {p0, p1}, Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;->widgetSlots:Ljava/util/List;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;->widgetSlots:Ljava/util/List;

    invoke-static {v2, p1}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 42
    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;->metricsTag:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;->requiredWidgets:Ljava/util/Set;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;->widgetSlots:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/amazon/ea/guava/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;
    .locals 3

    .line 47
    invoke-super {p0}, Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;->toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;->widgetSlots:Ljava/util/List;

    const-string/jumbo v2, "widgetSlots"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    return-object v0
.end method
