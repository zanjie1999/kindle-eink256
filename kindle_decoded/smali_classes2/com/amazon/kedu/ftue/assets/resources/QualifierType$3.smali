.class final Lcom/amazon/kedu/ftue/assets/resources/QualifierType$3;
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

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 6
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

    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 92
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;

    .line 94
    invoke-virtual {v3}, Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;->getQualifiers()Ljava/util/Map;

    move-result-object v4

    sget-object v5, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;->PLATFORM_VERSION:Lcom/amazon/kedu/ftue/assets/resources/QualifierType;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v2, :cond_0

    .line 98
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {v3}, Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;->getQualifiers()Ljava/util/Map;

    move-result-object v4

    sget-object v5, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;->PLATFORM_VERSION:Lcom/amazon/kedu/ftue/assets/resources/QualifierType;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 103
    invoke-virtual {v3}, Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;->getQualifiers()Ljava/util/Map;

    move-result-object v4

    sget-object v5, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;->PLATFORM_VERSION:Lcom/amazon/kedu/ftue/assets/resources/QualifierType;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-gt v4, p1, :cond_0

    if-lt v4, v1, :cond_0

    if-le v4, v1, :cond_2

    .line 108
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    move v1, v4

    :cond_2
    const/4 v2, 0x1

    .line 112
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method
