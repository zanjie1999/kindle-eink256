.class public abstract Lcom/amazon/kcp/cover/badge/service/BadgeService;
.super Ljava/lang/Object;
.source "BadgeService.java"

# interfaces
.implements Lcom/amazon/kcp/cover/badge/service/IBadgeService;


# instance fields
.field private badgeProviderFactory:Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;


# direct methods
.method protected constructor <init>(Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/amazon/kcp/cover/badge/service/BadgeService;->badgeProviderFactory:Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;

    return-void
.end method


# virtual methods
.method generateBinder(Lcom/amazon/kcp/cover/badge/IBadgeable;Landroid/content/res/Resources;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;)Lcom/amazon/kcp/cover/badge/BadgeBinder;
    .locals 12

    .line 63
    invoke-interface {p1}, Lcom/amazon/kcp/cover/badge/IBadgeable;->getBadgeImageViewMap()Ljava/util/Map;

    move-result-object v0

    .line 64
    invoke-interface {p1}, Lcom/amazon/kcp/cover/badge/IBadgeable;->getBadgeTextViewMap()Ljava/util/Map;

    move-result-object v1

    .line 65
    invoke-interface {p1}, Lcom/amazon/kcp/cover/badge/IBadgeable;->getSashBadgeType()Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;

    move-result-object v2

    .line 67
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 68
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz v1, :cond_1

    .line 75
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 78
    :cond_1
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kcp/cover/badge/BadgePosition;

    .line 80
    invoke-interface {p1}, Lcom/amazon/kcp/cover/badge/IBadgeable;->getDisplayItem()Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object v8

    new-instance v9, Lcom/amazon/kcp/cover/badge/BadgeContext;

    .line 81
    invoke-interface {p1}, Lcom/amazon/kcp/cover/badge/IBadgeable;->getViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;

    move-result-object v6

    invoke-interface {p1}, Lcom/amazon/kcp/cover/badge/IBadgeable;->isConsolidated()Z

    move-result v7

    invoke-interface {p1}, Lcom/amazon/kcp/cover/badge/IBadgeable;->getBadgeableSource()Lcom/amazon/kcp/cover/badge/BadgeSource;

    move-result-object v10

    invoke-direct {v9, v6, v7, v10}, Lcom/amazon/kcp/cover/badge/BadgeContext;-><init>(Lcom/amazon/kindle/krx/library/LibraryViewType;ZLcom/amazon/kcp/cover/badge/BadgeSource;)V

    move-object v6, p0

    move-object v7, v5

    move-object v10, p2

    move-object v11, p3

    .line 79
    invoke-virtual/range {v6 .. v11}, Lcom/amazon/kcp/cover/badge/service/BadgeService;->getBadge(Lcom/amazon/kcp/cover/badge/BadgePosition;Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/cover/badge/BadgeContext;Landroid/content/res/Resources;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;)Lcom/amazon/kcp/cover/badge/Badge;

    move-result-object v6

    .line 84
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p0, v0, v1, v4, v2}, Lcom/amazon/kcp/cover/badge/service/BadgeService;->generateBinder(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;)Lcom/amazon/kcp/cover/badge/BadgeBinder;

    move-result-object p1

    return-object p1
.end method

.method protected abstract generateBinder(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;)Lcom/amazon/kcp/cover/badge/BadgeBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/cover/badge/BadgePosition;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/cover/badge/BadgePosition;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/cover/badge/BadgePosition;",
            "Lcom/amazon/kcp/cover/badge/Badge;",
            ">;",
            "Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;",
            ")",
            "Lcom/amazon/kcp/cover/badge/BadgeBinder;"
        }
    .end annotation
.end method

.method public getBadge(Lcom/amazon/kcp/cover/badge/BadgePosition;Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/cover/badge/BadgeContext;Landroid/content/res/Resources;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;)Lcom/amazon/kcp/cover/badge/Badge;
    .locals 8

    .line 96
    iget-object v0, p0, Lcom/amazon/kcp/cover/badge/service/BadgeService;->badgeProviderFactory:Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;

    invoke-virtual {p3}, Lcom/amazon/kcp/cover/badge/BadgeContext;->getViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->getProviders(Lcom/amazon/kcp/cover/badge/BadgePosition;Lcom/amazon/kindle/krx/library/LibraryViewType;)Ljava/util/List;

    move-result-object p1

    .line 97
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-static {v0, v1}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 99
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/amazon/kcp/cover/badge/IBadgeProvider;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, v0

    .line 100
    invoke-interface/range {v2 .. v7}, Lcom/amazon/kcp/cover/badge/IBadgeProvider;->getBadge(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/cover/badge/BadgeContext;Landroid/content/res/Resources;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kcp/cover/badge/Badge;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
