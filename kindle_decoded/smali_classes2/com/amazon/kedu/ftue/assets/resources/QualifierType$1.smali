.class final Lcom/amazon/kedu/ftue/assets/resources/QualifierType$1;
.super Ljava/lang/Object;
.source "QualifierType.java"

# interfaces
.implements Lcom/amazon/kedu/ftue/assets/resources/QualifierType$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/ftue/assets/resources/QualifierType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 23
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 24
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const-string v3, "-"

    .line 26
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 27
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;

    .line 29
    invoke-virtual {v4}, Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;->getQualifiers()Ljava/util/Map;

    move-result-object v5

    sget-object v6, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;->LOCALE:Lcom/amazon/kedu/ftue/assets/resources/QualifierType;

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 31
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v4}, Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;->getQualifiers()Ljava/util/Map;

    move-result-object v5

    sget-object v6, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;->LOCALE:Lcom/amazon/kedu/ftue/assets/resources/QualifierType;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 35
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {v4}, Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;->getQualifiers()Ljava/util/Map;

    move-result-object v5

    sget-object v6, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;->LOCALE:Lcom/amazon/kedu/ftue/assets/resources/QualifierType;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 39
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_5

    move-object v0, v1

    goto :goto_1

    :cond_5
    move-object v0, v2

    :goto_1
    return-object v0
.end method
