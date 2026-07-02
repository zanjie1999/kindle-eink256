.class public Lcom/amazon/ea/sidecar/def/layouts/VerticalListWithPanelLayoutDef;
.super Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;
.source "VerticalListWithPanelLayoutDef.java"


# instance fields
.field public final bodyWidgetSlots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final panelWidgetSlots:Ljava/util/List;
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
.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/List;)V
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
            ">;>;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 28
    iput-object p3, p0, Lcom/amazon/ea/sidecar/def/layouts/VerticalListWithPanelLayoutDef;->bodyWidgetSlots:Ljava/util/List;

    .line 29
    iput-object p4, p0, Lcom/amazon/ea/sidecar/def/layouts/VerticalListWithPanelLayoutDef;->panelWidgetSlots:Ljava/util/List;

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

    .line 40
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/ea/sidecar/def/layouts/VerticalListWithPanelLayoutDef;

    if-eq v2, v3, :cond_2

    return v1

    .line 43
    :cond_2
    check-cast p1, Lcom/amazon/ea/sidecar/def/layouts/VerticalListWithPanelLayoutDef;

    .line 44
    invoke-super {p0, p1}, Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/layouts/VerticalListWithPanelLayoutDef;->bodyWidgetSlots:Ljava/util/List;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/layouts/VerticalListWithPanelLayoutDef;->bodyWidgetSlots:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/layouts/VerticalListWithPanelLayoutDef;->panelWidgetSlots:Ljava/util/List;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/layouts/VerticalListWithPanelLayoutDef;->panelWidgetSlots:Ljava/util/List;

    .line 45
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

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 50
    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;->metricsTag:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;->requiredWidgets:Ljava/util/Set;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/layouts/VerticalListWithPanelLayoutDef;->bodyWidgetSlots:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/layouts/VerticalListWithPanelLayoutDef;->panelWidgetSlots:Ljava/util/List;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/amazon/ea/guava/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;
    .locals 3

    .line 55
    invoke-super {p0}, Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;->toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/layouts/VerticalListWithPanelLayoutDef;->bodyWidgetSlots:Ljava/util/List;

    const-string v2, "bodyWidgetSlots"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/layouts/VerticalListWithPanelLayoutDef;->panelWidgetSlots:Ljava/util/List;

    const-string/jumbo v2, "panelWidgetSlots"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    return-object v0
.end method
