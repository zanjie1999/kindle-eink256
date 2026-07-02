.class Lcom/amazon/identity/auth/device/gg$6;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/gg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/gg;->a(Lcom/amazon/identity/auth/device/fv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic H:Ljava/lang/String;

.field final synthetic nQ:Ljava/util/Date;

.field final synthetic nR:Lcom/amazon/identity/auth/device/gg;

.field final synthetic nV:Ljava/util/Map;

.field final synthetic nW:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/gg;Ljava/util/Map;Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;)V
    .locals 0

    .line 677
    iput-object p1, p0, Lcom/amazon/identity/auth/device/gg$6;->nR:Lcom/amazon/identity/auth/device/gg;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/gg$6;->nV:Ljava/util/Map;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/gg$6;->H:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/gg$6;->nQ:Ljava/util/Date;

    iput-object p5, p0, Lcom/amazon/identity/auth/device/gg$6;->nW:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/gp;)Z
    .locals 6

    .line 682
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gg$6;->nV:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 684
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 686
    iget-object v3, p0, Lcom/amazon/identity/auth/device/gg$6;->H:Ljava/lang/String;

    .line 687
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 688
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/gg$6;->nQ:Ljava/util/Date;

    .line 686
    invoke-virtual {p1, v3, v4, v2, v5}, Lcom/amazon/identity/auth/device/gp;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    .line 696
    :cond_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gg$6;->nW:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 698
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 700
    iget-object v3, p0, Lcom/amazon/identity/auth/device/gg$6;->H:Ljava/lang/String;

    .line 701
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 702
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/gg$6;->nQ:Ljava/util/Date;

    .line 700
    invoke-virtual {p1, v3, v4, v2, v5}, Lcom/amazon/identity/auth/device/gp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public fl()V
    .locals 5

    .line 716
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gg$6;->nV:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 718
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 720
    iget-object v2, p0, Lcom/amazon/identity/auth/device/gg$6;->nR:Lcom/amazon/identity/auth/device/gg;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/gg;->a(Lcom/amazon/identity/auth/device/gg;)Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/identity/auth/device/gg$6;->H:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/gg$6;->nQ:Ljava/util/Date;

    invoke-virtual {v2, v3, v1, v4}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    goto :goto_0

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gg$6;->nW:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 726
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 728
    iget-object v2, p0, Lcom/amazon/identity/auth/device/gg$6;->nR:Lcom/amazon/identity/auth/device/gg;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/gg;->a(Lcom/amazon/identity/auth/device/gg;)Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/identity/auth/device/gg$6;->H:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/gg$6;->nQ:Ljava/util/Date;

    invoke-virtual {v2, v3, v1, v4}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "SetData"

    return-object v0
.end method
