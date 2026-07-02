.class public Lcom/amazon/ea/sidecar/parsing/widgets/GrokTeaserWidgetDefParser;
.super Ljava/lang/Object;
.source "GrokTeaserWidgetDefParser.java"


# direct methods
.method public static parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;)Lcom/amazon/ea/sidecar/def/widgets/GrokTeaserWidgetDef;
    .locals 4

    .line 15
    new-instance v0, Lcom/amazon/ea/sidecar/def/widgets/GrokTeaserWidgetDef;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->metricsTag:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayKey:Ljava/lang/String;

    iget p0, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayLimit:I

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/amazon/ea/sidecar/def/widgets/GrokTeaserWidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method
