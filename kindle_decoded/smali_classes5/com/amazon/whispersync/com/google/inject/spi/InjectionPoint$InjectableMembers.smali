.class Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMembers;
.super Ljava/lang/Object;
.source "InjectionPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InjectableMembers"
.end annotation


# instance fields
.field head:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;

.field tail:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method add(Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;)V
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMembers;->head:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;

    if-nez v0, :cond_0

    .line 479
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMembers;->tail:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMembers;->head:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;

    goto :goto_0

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMembers;->tail:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;

    iput-object v0, p1, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;->previous:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;

    .line 482
    iput-object p1, v0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;->next:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;

    .line 483
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMembers;->tail:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;

    :goto_0
    return-void
.end method

.method isEmpty()Z
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMembers;->head:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method remove(Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;)V
    .locals 2

    .line 488
    iget-object v0, p1, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;->previous:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;

    if-eqz v0, :cond_0

    .line 489
    iget-object v1, p1, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;->next:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;

    iput-object v1, v0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;->next:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;

    .line 491
    :cond_0
    iget-object v0, p1, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;->next:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;

    if-eqz v0, :cond_1

    .line 492
    iget-object v1, p1, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;->previous:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;

    iput-object v1, v0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;->previous:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;

    .line 494
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMembers;->head:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;

    if-ne v0, p1, :cond_2

    .line 495
    iget-object v0, p1, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;->next:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMembers;->head:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;

    .line 497
    :cond_2
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMembers;->tail:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;

    if-ne v0, p1, :cond_3

    .line 498
    iget-object p1, p1, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;->previous:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMembers;->tail:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;

    :cond_3
    return-void
.end method
