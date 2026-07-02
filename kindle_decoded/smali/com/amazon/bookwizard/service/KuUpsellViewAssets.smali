.class public Lcom/amazon/bookwizard/service/KuUpsellViewAssets;
.super Ljava/lang/Object;
.source "KuUpsellViewAssets.java"


# instance fields
.field private body:Ljava/lang/String;

.field private header:Ljava/lang/String;

.field private legal:Ljava/lang/String;

.field private noButton:Ljava/lang/String;

.field private yesButton:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;->header:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;->body:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;->legal:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;->yesButton:Ljava/lang/String;

    .line 58
    iput-object p5, p0, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;->noButton:Ljava/lang/String;

    return-void
.end method

.method public static fromMap(Ljava/util/Map;)Lcom/amazon/bookwizard/service/KuUpsellViewAssets;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/bookwizard/service/KuUpsellViewAssets;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 36
    :cond_0
    new-instance v6, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;

    const-string v0, "header"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const-string v0, "body"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const-string v0, "legal"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v0, "yesButton"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v0, "noButton"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public getBodyText()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderText()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;->header:Ljava/lang/String;

    return-object v0
.end method

.method public getLegalText()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;->legal:Ljava/lang/String;

    return-object v0
.end method

.method public getNoText()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;->noButton:Ljava/lang/String;

    return-object v0
.end method

.method public getYesText()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;->yesButton:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;->header:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;->body:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;->legal:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;->yesButton:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 123
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;->header:Ljava/lang/String;

    const-string v2, "header"

    .line 124
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;->body:Ljava/lang/String;

    const-string v2, "body"

    .line 125
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;->legal:Ljava/lang/String;

    const-string v2, "legal"

    .line 126
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 127
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
