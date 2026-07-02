.class public Lcom/amazon/bookwizard/service/TextAssets;
.super Ljava/util/HashMap;
.source "TextAssets.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public getUpsellViewAssets(Ljava/lang/String;)Lcom/amazon/bookwizard/service/KuUpsellViewAssets;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;->fromMap(Ljava/util/Map;)Lcom/amazon/bookwizard/service/KuUpsellViewAssets;

    move-result-object p1

    return-object p1
.end method

.method public getWelcomeViewAssets(Ljava/lang/String;)Lcom/amazon/bookwizard/service/WelcomeViewAssets;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Lcom/amazon/bookwizard/service/WelcomeViewAssets;->fromMap(Ljava/util/Map;)Lcom/amazon/bookwizard/service/WelcomeViewAssets;

    move-result-object p1

    return-object p1
.end method
