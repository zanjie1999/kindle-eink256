.class public interface abstract Lcom/amazon/kcp/store/IStoreIntentCreator;
.super Ljava/lang/Object;
.source "IStoreIntentCreator.java"


# virtual methods
.method public abstract createBrowseNodeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract createDetailPageIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract createFeatureDocIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation
.end method

.method public abstract createLoadArticleIntent(Landroid/content/Context;Lcom/amazon/kcp/store/StorePathProvider;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract createLoadUrlIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract createLoadUrlIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract createSearchUrlIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract createShowPageIntent(Ljava/lang/String;Lcom/amazon/kcp/store/StoreUrlBuilder$Action;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/store/StoreUrlBuilder$Action;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation
.end method

.method public abstract createShowStoreIntent(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;
.end method

.method public abstract createShowStorefrontIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/amazon/kindle/store/StoreType;)Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/store/StoreType;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation
.end method
