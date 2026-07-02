.class public abstract Lcom/amazon/kcp/cover/badge/BaseBadgeProvider;
.super Ljava/lang/Object;
.source "BaseBadgeProvider.java"

# interfaces
.implements Lcom/amazon/kcp/cover/badge/IBadgeProvider;


# instance fields
.field private final drawableCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/krx/library/LibraryViewType;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field protected resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/cover/badge/BaseBadgeProvider;->drawableCache:Ljava/util/Map;

    .line 34
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected getBadge(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/krx/library/LibraryViewType;Landroid/content/res/Resources;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;Lcom/amazon/kcp/application/Marketplace;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 60
    iget-object p1, p0, Lcom/amazon/kcp/cover/badge/BaseBadgeProvider;->drawableCache:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 61
    iput-object p3, p0, Lcom/amazon/kcp/cover/badge/BaseBadgeProvider;->resources:Landroid/content/res/Resources;

    if-nez p1, :cond_0

    .line 63
    invoke-virtual {p0, p2, p3, p4}, Lcom/amazon/kcp/cover/badge/BaseBadgeProvider;->getBadgeFromResource(Lcom/amazon/kindle/krx/library/LibraryViewType;Landroid/content/res/Resources;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p0, p4}, Lcom/amazon/kcp/cover/badge/BaseBadgeProvider;->shouldUpdateDrawableCache(Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 66
    iget-object p3, p0, Lcom/amazon/kcp/cover/badge/BaseBadgeProvider;->drawableCache:Ljava/util/Map;

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public getBadge(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/cover/badge/BadgeContext;Landroid/content/res/Resources;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kcp/cover/badge/Badge;
    .locals 11

    .line 44
    invoke-virtual {p0}, Lcom/amazon/kcp/cover/badge/BaseBadgeProvider;->shouldShowWhenConsolidated()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/amazon/kcp/cover/badge/BadgeContext;->isConsolidated()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/amazon/kcp/cover/badge/IBadgeProvider;->shouldShowBadge(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/cover/badge/BadgeContext;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-object v1

    .line 49
    :cond_2
    invoke-virtual {p2}, Lcom/amazon/kcp/cover/badge/BadgeContext;->getViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/amazon/kcp/cover/badge/BaseBadgeProvider;->getBadge(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/krx/library/LibraryViewType;Landroid/content/res/Resources;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;Lcom/amazon/kcp/application/Marketplace;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_3

    return-object v1

    .line 54
    :cond_3
    new-instance v0, Lcom/amazon/kcp/cover/badge/Badge;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/cover/badge/BaseBadgeProvider;->getOnClickListener(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Landroid/view/View$OnClickListener;

    move-result-object v7

    .line 55
    invoke-virtual {p2}, Lcom/amazon/kcp/cover/badge/BadgeContext;->getViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    invoke-virtual {p0, p1, v1, p3}, Lcom/amazon/kcp/cover/badge/BaseBadgeProvider;->getContentDescription(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/krx/library/LibraryViewType;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/amazon/kcp/cover/badge/BaseBadgeProvider;->getBadgeLabel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/amazon/kcp/cover/badge/BaseBadgeProvider;->getPadding()I

    move-result v10

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/amazon/kcp/cover/badge/Badge;-><init>(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method protected getBadgeFromResource(Lcom/amazon/kindle/krx/library/LibraryViewType;Landroid/content/res/Resources;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 83
    invoke-virtual {p0, p1, p3}, Lcom/amazon/kcp/cover/badge/BaseBadgeProvider;->getBadgeResourceId(Lcom/amazon/kindle/krx/library/LibraryViewType;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getBadgeLabel()Ljava/lang/String;
.end method

.method protected getBadgeResourceId(Lcom/amazon/kindle/krx/library/LibraryViewType;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method protected getContentDescription(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/krx/library/LibraryViewType;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method protected getOnClickListener(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Landroid/view/View$OnClickListener;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getPadding()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public onLocaleChangedEvent(Lcom/amazon/kindle/event/LocaleChangedEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 134
    iget-object p1, p0, Lcom/amazon/kcp/cover/badge/BaseBadgeProvider;->drawableCache:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public onThemeChangedEvent(Lcom/amazon/kindle/krx/events/ThemeChangedEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 124
    iget-object p1, p0, Lcom/amazon/kcp/cover/badge/BaseBadgeProvider;->drawableCache:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method protected shouldShowWhenConsolidated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected shouldUpdateDrawableCache(Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;)Z
    .locals 3

    .line 138
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseThreeEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 139
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;->getTheme()Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object p1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
