.class public Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;
.super Ljava/lang/Object;
.source "LinkedLibraryFragmentViewOptionsModel.java"

# interfaces
.implements Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
    violations = {
        .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
    }
.end annotation


# static fields
.field static final DEFAULT_LIBRARY_GROUP:Lcom/amazon/kindle/krx/library/LibraryGroupType;

.field private static final DEFAULT_LIBRARY_SORT_TYPE:Lcom/amazon/kcp/library/LibrarySortType;

.field private static final DEFAULT_LIBRARY_VIEW:Lcom/amazon/kindle/krx/library/LibraryView;

.field private static final DEFAULT_LIBRARY_VIEW_TYPE:Lcom/amazon/kindle/krx/library/LibraryViewType;

.field static final SORT_PERSISTENT_KEYS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final VIEW_OPTIONS_PREFS_NAME:Ljava/lang/String; = "LibraryViewOptions"


# instance fields
.field private cachedGroupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

.field private final cachedLibrarySortTypeSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cachedViewType:Lcom/amazon/kindle/krx/library/LibraryViewType;

.field private final libraryPrefs:Landroid/content/SharedPreferences;

.field private final settingsChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel$LibraryFragmentViewOptionsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final viewOptionsPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->ALL_ITEMS:Lcom/amazon/kindle/krx/library/LibraryView;

    sput-object v0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->DEFAULT_LIBRARY_VIEW:Lcom/amazon/kindle/krx/library/LibraryView;

    .line 46
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryViewType;->GRID:Lcom/amazon/kindle/krx/library/LibraryViewType;

    sput-object v0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->DEFAULT_LIBRARY_VIEW_TYPE:Lcom/amazon/kindle/krx/library/LibraryViewType;

    .line 47
    sget-object v0, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    sput-object v0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->DEFAULT_LIBRARY_SORT_TYPE:Lcom/amazon/kcp/library/LibrarySortType;

    .line 48
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryGroupType;->NOT_APPLICABLE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    sput-object v0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->DEFAULT_LIBRARY_GROUP:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "LibraryFilterSortKey"

    const-string v2, "SeriesItemsSortType"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->SORT_PERSISTENT_KEYS:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Landroid/content/SharedPreferences;Lcom/amazon/kindle/krx/events/IPubSubEventsManager;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->cachedGroupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    .line 56
    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->cachedViewType:Lcom/amazon/kindle/krx/library/LibraryViewType;

    .line 64
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->libraryPrefs:Landroid/content/SharedPreferences;

    .line 65
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "LibraryViewOptions"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->viewOptionsPrefs:Landroid/content/SharedPreferences;

    .line 66
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->cachedLibrarySortTypeSettings:Ljava/util/Map;

    .line 67
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->settingsChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 69
    invoke-interface {p2, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->removeUserSelectionsIfNecessary()V

    return-void
.end method

.method private onLogout()V
    .locals 4

    .line 212
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->resetSort()V

    .line 213
    sget-object v0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->DEFAULT_LIBRARY_GROUP:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->setGroupType(Lcom/amazon/kindle/krx/library/LibraryGroupType;)V

    .line 214
    sget-object v0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->DEFAULT_LIBRARY_VIEW_TYPE:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->setViewType(Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 215
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->settingsChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel$LibraryFragmentViewOptionsChangedListener;

    .line 216
    sget-object v2, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->DEFAULT_LIBRARY_VIEW_TYPE:Lcom/amazon/kindle/krx/library/LibraryViewType;

    sget-object v3, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->DEFAULT_LIBRARY_GROUP:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    invoke-interface {v1, v2, v3}, Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel$LibraryFragmentViewOptionsChangedListener;->onViewOptionsReset(Lcom/amazon/kindle/krx/library/LibraryViewType;Lcom/amazon/kindle/krx/library/LibraryGroupType;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setGroupType(Lcom/amazon/kindle/krx/library/LibraryGroupType;)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->cachedGroupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    if-ne v0, p1, :cond_0

    return-void

    .line 148
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->cachedGroupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    .line 149
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->viewOptionsPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "EinkGroupTypePersistKey"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setViewType(Lcom/amazon/kindle/krx/library/LibraryViewType;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->cachedViewType:Lcom/amazon/kindle/krx/library/LibraryViewType;

    if-ne v0, p1, :cond_0

    return-void

    .line 107
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->cachedViewType:Lcom/amazon/kindle/krx/library/LibraryViewType;

    .line 108
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->viewOptionsPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "EinkViewTypePersistKey"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public deregisterListener(Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel$LibraryFragmentViewOptionsChangedListener;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->settingsChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public getGroupType(Lcom/amazon/kindle/krx/library/LibraryView;)Lcom/amazon/kindle/krx/library/LibraryGroupType;
    .locals 0

    .line 114
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->cachedGroupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    if-nez p1, :cond_0

    .line 116
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->getPersistedGroupTypeOrDefault()Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-static {p1}, Lcom/amazon/kindle/krx/library/LibraryGroupType;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/library/LibraryGroupType;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->cachedGroupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    sget-object p1, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->DEFAULT_LIBRARY_GROUP:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->cachedGroupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    .line 122
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->cachedGroupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    return-object p1
.end method

.method public getLibraryView()Lcom/amazon/kindle/krx/library/LibraryView;
    .locals 3

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->viewOptionsPrefs:Landroid/content/SharedPreferences;

    const-string v1, "LibraryViewPersistKey"

    sget-object v2, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->DEFAULT_LIBRARY_VIEW:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/krx/library/LibraryView;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    :catch_0
    sget-object v0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->DEFAULT_LIBRARY_VIEW:Lcom/amazon/kindle/krx/library/LibraryView;

    :goto_0
    return-object v0
.end method

.method getPersistedGroupTypeOrDefault()Ljava/lang/String;
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->viewOptionsPrefs:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->DEFAULT_LIBRARY_GROUP:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EinkGroupTypePersistKey"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {}, Lcom/amazon/kcp/debug/DownloadedFilterDebugUtils;->isDownloadedFilterEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryGroupType;->NOT_APPLICABLE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryGroupType;->NOT_APPLICABLE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->viewOptionsPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v3, Lcom/amazon/kindle/krx/library/LibraryGroupType;->NOT_APPLICABLE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object v0
.end method

.method public getSortType(Ljava/lang/String;Lcom/amazon/kcp/library/LibrarySortType;)Lcom/amazon/kcp/library/LibrarySortType;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->cachedLibrarySortTypeSettings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->viewOptionsPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->cachedLibrarySortTypeSettings:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_0
    invoke-static {v0}, Lcom/amazon/kcp/library/LibrarySortType;->valueOf(Ljava/lang/String;)Lcom/amazon/kcp/library/LibrarySortType;

    move-result-object p1

    return-object p1
.end method

.method public getViewType(Lcom/amazon/kindle/krx/library/LibraryView;)Lcom/amazon/kindle/krx/library/LibraryViewType;
    .locals 2

    .line 87
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->cachedViewType:Lcom/amazon/kindle/krx/library/LibraryViewType;

    if-nez p1, :cond_0

    .line 89
    :try_start_0
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->viewOptionsPrefs:Landroid/content/SharedPreferences;

    const-string v0, "EinkViewTypePersistKey"

    sget-object v1, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->DEFAULT_LIBRARY_VIEW_TYPE:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-static {p1}, Lcom/amazon/kindle/krx/library/LibraryViewType;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/library/LibraryViewType;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->cachedViewType:Lcom/amazon/kindle/krx/library/LibraryViewType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    sget-object p1, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->DEFAULT_LIBRARY_VIEW_TYPE:Lcom/amazon/kindle/krx/library/LibraryViewType;

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->cachedViewType:Lcom/amazon/kindle/krx/library/LibraryViewType;

    .line 95
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->cachedViewType:Lcom/amazon/kindle/krx/library/LibraryViewType;

    return-object p1
.end method

.method public onLogout(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 206
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->onLogout()V

    :cond_0
    return-void
.end method

.method public registerListener(Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel$LibraryFragmentViewOptionsChangedListener;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->settingsChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method removeUserSelectionsIfNecessary()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->libraryPrefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "ResetViewOptionsKey"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->viewOptionsPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 80
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->libraryPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method resetSort()V
    .locals 3

    .line 222
    sget-object v0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->SORT_PERSISTENT_KEYS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "SeriesItemsSortType"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 224
    sget-object v2, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->DEFAULT_LIBRARY_SORT_TYPE:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-virtual {p0, v1, v2}, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->setSortType(Ljava/lang/String;Lcom/amazon/kcp/library/LibrarySortType;)V

    goto :goto_0

    .line 227
    :cond_1
    sget-object v0, Lcom/amazon/kcp/library/SeriesItemsFilter;->SERIES_DEFAULT_SORT_TYPE:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-virtual {p0, v2, v0}, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->setSortType(Ljava/lang/String;Lcom/amazon/kcp/library/LibrarySortType;)V

    return-void
.end method

.method public setGroupType(Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kindle/krx/library/LibraryView;)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->setGroupType(Lcom/amazon/kindle/krx/library/LibraryGroupType;)V

    return-void
.end method

.method public setLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->viewOptionsPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LibraryViewPersistKey"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSortType(Ljava/lang/String;Lcom/amazon/kcp/library/LibrarySortType;)V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->cachedLibrarySortTypeSettings:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->viewOptionsPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setViewType(Lcom/amazon/kindle/krx/library/LibraryViewType;Lcom/amazon/kindle/krx/library/LibraryView;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;->setViewType(Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    return-void
.end method
