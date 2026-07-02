.class Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$OverrideIndex;
.super Ljava/lang/Object;
.source "InjectionPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OverrideIndex"
.end annotation


# instance fields
.field bySignature:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Signature;",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMethod;",
            ">;>;"
        }
    .end annotation
.end field

.field final injectableMembers:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMembers;

.field lastMethod:Ljava/lang/reflect/Method;

.field lastSignature:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Signature;

.field position:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMembers;)V
    .locals 1

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;->TOP:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$OverrideIndex;->position:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;

    .line 524
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$OverrideIndex;->injectableMembers:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMembers;

    return-void
.end method


# virtual methods
.method add(Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMethod;)V
    .locals 3

    .line 602
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$OverrideIndex;->injectableMembers:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMembers;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMembers;->add(Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;)V

    .line 603
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$OverrideIndex;->position:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;

    sget-object v1, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;->BOTTOM:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMethod;->isFinal()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$OverrideIndex;->bySignature:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 610
    iget-object v0, p1, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMethod;->method:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$OverrideIndex;->lastMethod:Ljava/lang/reflect/Method;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$OverrideIndex;->lastSignature:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Signature;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Signature;

    invoke-direct {v1, v0}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Signature;-><init>(Ljava/lang/reflect/Method;)V

    move-object v0, v1

    .line 612
    :goto_0
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$OverrideIndex;->bySignature:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_2

    .line 614
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 615
    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$OverrideIndex;->bySignature:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    :cond_2
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method removeIfOverriddenBy(Ljava/lang/reflect/Method;ZLcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMethod;)Z
    .locals 6

    .line 549
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$OverrideIndex;->position:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;

    sget-object v1, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;->TOP:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$OverrideIndex;->bySignature:Ljava/util/Map;

    if-nez v0, :cond_3

    .line 557
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$OverrideIndex;->bySignature:Ljava/util/Map;

    .line 558
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$OverrideIndex;->injectableMembers:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMembers;

    iget-object v0, v0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMembers;->head:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;

    :goto_0
    if-eqz v0, :cond_3

    .line 560
    instance-of v1, v0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMethod;

    if-nez v1, :cond_1

    goto :goto_1

    .line 561
    :cond_1
    move-object v1, v0

    check-cast v1, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMethod;

    .line 562
    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMethod;->isFinal()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 563
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 564
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    iget-object v4, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$OverrideIndex;->bySignature:Ljava/util/Map;

    new-instance v5, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Signature;

    iget-object v1, v1, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMethod;->method:Ljava/lang/reflect/Method;

    invoke-direct {v5, v1}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Signature;-><init>(Ljava/lang/reflect/Method;)V

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    :goto_1
    iget-object v0, v0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;->next:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;

    goto :goto_0

    .line 569
    :cond_3
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$OverrideIndex;->lastMethod:Ljava/lang/reflect/Method;

    .line 570
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Signature;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Signature;-><init>(Ljava/lang/reflect/Method;)V

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$OverrideIndex;->lastSignature:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Signature;

    .line 571
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$OverrideIndex;->bySignature:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_a

    .line 574
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 575
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 576
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMethod;

    .line 577
    iget-object v4, v3, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMethod;->method:Ljava/lang/reflect/Method;

    invoke-static {p1, v4}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->access$000(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    .line 578
    iget-boolean v4, v3, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;->jsr330:Z

    if-eqz v4, :cond_6

    iget-boolean v4, v3, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMethod;->overrodeGuiceInject:Z

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v4, 0x1

    :goto_4
    if-eqz p3, :cond_7

    .line 581
    iput-boolean v4, p3, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMethod;->overrodeGuiceInject:Z

    :cond_7
    if-nez p2, :cond_8

    if-nez v4, :cond_4

    .line 588
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 589
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$OverrideIndex;->injectableMembers:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMembers;

    invoke-virtual {v1, v3}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMembers;->remove(Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;)V

    const/4 v1, 0x1

    goto :goto_2

    :cond_9
    move v2, v1

    :cond_a
    return v2
.end method
