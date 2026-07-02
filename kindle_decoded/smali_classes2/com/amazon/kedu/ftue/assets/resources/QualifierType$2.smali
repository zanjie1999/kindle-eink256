.class final Lcom/amazon/kedu/ftue/assets/resources/QualifierType$2;
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

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 5
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

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 57
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;

    .line 59
    invoke-virtual {v2}, Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;->getQualifiers()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;->ORIENTATION:Lcom/amazon/kedu/ftue/assets/resources/QualifierType;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v1, :cond_0

    .line 63
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v2}, Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;->getQualifiers()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;->ORIENTATION:Lcom/amazon/kedu/ftue/assets/resources/QualifierType;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_2

    .line 70
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v1, 0x1

    .line 73
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method
