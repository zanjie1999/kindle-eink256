.class public Lcom/amazon/identity/auth/device/me;
.super Lcom/amazon/identity/auth/device/mg;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.me"


# instance fields
.field private final tf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/ly;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/ly;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/mg;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/identity/auth/device/me;->tf:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method c(Lorg/w3c/dom/Element;)V
    .locals 10

    .line 35
    iget-object v0, p0, Lcom/amazon/identity/auth/device/me;->tf:Ljava/util/Map;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 40
    :cond_0
    new-instance v0, Lcom/amazon/identity/auth/device/mf;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/amazon/identity/auth/device/mg;

    const-string v3, "deviceTypeSoftwareVersionMap"

    invoke-direct {v0, v3, v2}, Lcom/amazon/identity/auth/device/mf;-><init>(Ljava/lang/String;[Lcom/amazon/identity/auth/device/mg;)V

    .line 41
    iget-object v2, p0, Lcom/amazon/identity/auth/device/me;->tf:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 43
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/identity/auth/device/ly;

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 44
    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/ly;->iy()Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/ly;->iz()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 45
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 47
    new-instance v4, Lcom/amazon/identity/auth/device/mf;

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/amazon/identity/auth/device/mg;

    new-instance v7, Lcom/amazon/identity/auth/device/mc;

    .line 48
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "deviceType"

    invoke-direct {v7, v9, v8}, Lcom/amazon/identity/auth/device/mc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v6, v1

    new-instance v7, Lcom/amazon/identity/auth/device/mc;

    .line 50
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazon/identity/auth/device/ly;

    invoke-virtual {v8}, Lcom/amazon/identity/auth/device/ly;->iy()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "version"

    invoke-direct {v7, v9, v8}, Lcom/amazon/identity/auth/device/mc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v6, v5

    const/4 v5, 0x2

    new-instance v7, Lcom/amazon/identity/auth/device/mc;

    .line 52
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/identity/auth/device/ly;

    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/ly;->iz()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v8, "softwareComponentId"

    invoke-direct {v7, v8, v3}, Lcom/amazon/identity/auth/device/mc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v6, v5

    const-string v3, "entry"

    invoke-direct {v4, v3, v6}, Lcom/amazon/identity/auth/device/mf;-><init>(Ljava/lang/String;[Lcom/amazon/identity/auth/device/mg;)V

    .line 47
    invoke-virtual {v0, v4}, Lcom/amazon/identity/auth/device/mf;->a(Lcom/amazon/identity/auth/device/mg;)Z

    goto :goto_0

    .line 56
    :cond_1
    sget-object v4, Lcom/amazon/identity/auth/device/me;->TAG:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v5, v1

    const-string v3, "Skipping version for entry %s - version not present"

    invoke-static {v4, v3, v5}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/mf;->c(Lorg/w3c/dom/Element;)V

    :cond_3
    :goto_1
    return-void
.end method
