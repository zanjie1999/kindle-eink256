.class Lcom/amazon/device/ads/IntentBuilder;
.super Ljava/lang/Object;
.source "IntentBuilder.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private extras:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/IntentBuilder;->extras:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public fireIntent()Z
    .locals 5

    const/4 v0, 0x0

    .line 66
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/amazon/device/ads/IntentBuilder;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/amazon/device/ads/IntentBuilder;->clazz:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    iget-object v2, p0, Lcom/amazon/device/ads/IntentBuilder;->extras:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 69
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/amazon/device/ads/IntentBuilder;->activity:Landroid/app/Activity;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 73
    iget-object v2, p0, Lcom/amazon/device/ads/IntentBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return v3

    .line 76
    :cond_1
    iget-object v2, p0, Lcom/amazon/device/ads/IntentBuilder;->context:Landroid/content/Context;

    if-eqz v2, :cond_2

    const/high16 v2, 0x10000000

    .line 78
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    iget-object v2, p0, Lcom/amazon/device/ads/IntentBuilder;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    :cond_2
    return v0
.end method

.method public withClass(Ljava/lang/Class;)Lcom/amazon/device/ads/IntentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/device/ads/IntentBuilder;"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/amazon/device/ads/IntentBuilder;->clazz:Ljava/lang/Class;

    return-object p0
.end method

.method public withContext(Landroid/content/Context;)Lcom/amazon/device/ads/IntentBuilder;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/amazon/device/ads/IntentBuilder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public withExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/ads/IntentBuilder;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/device/ads/IntentBuilder;->extras:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
