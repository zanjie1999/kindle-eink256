.class public Lcom/amazon/kindle/tutorial/TutorialMigrationHelper;
.super Ljava/lang/Object;
.source "TutorialMigrationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorialEventConverter;,
        Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static legacyJitMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/info/TutorialManager$JITTutorial;",
            ">;"
        }
    .end annotation
.end field

.field private static legacyShown:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final legacyTutorialLauncher:Lcom/amazon/kindle/krx/events/IMessageQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    const-class v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper;->TAG:Ljava/lang/String;

    .line 34
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper;->legacyTutorialLauncher:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper;->legacyJitMap:Ljava/util/Map;

    .line 44
    sget-object v1, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;->LIBRARY_SORT:Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

    const-string v2, "library sort"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper;->legacyJitMap:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;->READER_VIEWOPTIONS:Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

    const-string/jumbo v2, "reader view options"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper;->legacyJitMap:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;->READER_NAV_PANEL:Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

    const-string/jumbo v2, "reader nav panel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper;->legacyJitMap:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;->READER_SOCIAL_SHARING_BOOK:Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

    const-string/jumbo v2, "social sharing"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper;->legacyJitMap:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;->UNREC_HOME_SCROLL_TO_END:Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

    const-string/jumbo v2, "unrec home scroll"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper;->legacyShown:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attemptLaunchLegacyJIT(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 251
    invoke-static {p0, p1}, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorialEventConverter;->convertUTMToLegacyEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/event/TutorialEvent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 254
    sget-object p1, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper;->legacyTutorialLauncher:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_0
    return-void
.end method

.method public static handleTutorialShownEvent(Ljava/lang/String;)V
    .locals 2

    .line 235
    sget-object v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;->NLN_BROCHURE:Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

    iget-object v0, v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;->tutorialId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-static {}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->markNLNBrochureAsShown()V

    goto :goto_0

    .line 238
    :cond_0
    sget-object v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper;->legacyJitMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    sget-object v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper;->legacyJitMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

    .line 240
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 241
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getTutorialManager()Lcom/amazon/kcp/info/TutorialManager;

    move-result-object v1

    .line 242
    invoke-virtual {v1, p0}, Lcom/amazon/kcp/info/TutorialManager;->getCurrentTutorialVersion(Lcom/amazon/kcp/info/TutorialManager$JITTutorial;)I

    move-result v1

    .line 243
    iget-object p0, p0, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;->key:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->setLastTutorialVersionShown(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static migrateDisplayCount(Lcom/amazon/kindle/tutorial/IDisplayCountManager;Ljava/lang/String;)I
    .locals 6

    .line 197
    invoke-interface {p0, p1}, Lcom/amazon/kindle/tutorial/IDisplayCountManager;->hasDisplayCount(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 198
    invoke-static {p1}, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;->forId(Ljava/lang/String;)Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 199
    sget-object v4, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper;->legacyShown:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 200
    sget-object v4, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper;->legacyShown:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    .line 201
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Migrating legacy count for %s to %d"

    invoke-static {v2, v1}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    .line 202
    invoke-interface {p0, p1, v0}, Lcom/amazon/kindle/tutorial/IDisplayCountManager;->setDisplayCount(Ljava/lang/String;I)V

    goto :goto_1

    .line 203
    :cond_0
    sget-object v4, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;->NLN_BROCHURE:Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

    if-ne v0, v4, :cond_1

    .line 204
    invoke-static {}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->wasShownNLNBrochure()Z

    move-result v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 205
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "Migrating legacy NLN tutorial count -> %d"

    invoke-static {v2, v1}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    .line 206
    invoke-interface {p0, p1, v0}, Lcom/amazon/kindle/tutorial/IDisplayCountManager;->setDisplayCount(Ljava/lang/String;I)V

    goto :goto_1

    .line 207
    :cond_1
    sget-object v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper;->legacyJitMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 208
    sget-object v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper;->legacyJitMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

    .line 209
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v4

    .line 210
    iget-object v5, v0, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/amazon/kcp/application/UserSettingsController;->getLastTutorialVersionShown(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 212
    iget-object v0, v0, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;->key:Ljava/lang/String;

    aput-object v0, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "Migrating legacy JIT tutorial count: %s -> %d"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    .line 213
    invoke-interface {p0, p1, v4}, Lcom/amazon/kindle/tutorial/IDisplayCountManager;->setDisplayCount(Ljava/lang/String;I)V

    .line 217
    :cond_3
    :goto_1
    invoke-interface {p0, p1}, Lcom/amazon/kindle/tutorial/IDisplayCountManager;->getDisplayCount(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static setLegacyTutorialShownCount(Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;I)V
    .locals 1

    .line 225
    sget-object v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper;->legacyShown:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static useLegacyEvent(Lcom/amazon/kindle/event/TutorialEvent;)Z
    .locals 4

    .line 154
    invoke-static {}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->isUtmEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    .line 155
    invoke-virtual {p0}, Lcom/amazon/kindle/event/TutorialEvent;->getType()Lcom/amazon/kindle/krx/tutorial/events/EventType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "UTM is not enabled - returning true for useLegacyEvent(%s)"

    invoke-static {p0, v0}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    return v2

    .line 168
    :cond_0
    sget-object v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$1;->$SwitchMap$com$amazon$kindle$krx$tutorial$events$EventType:[I

    invoke-virtual {p0}, Lcom/amazon/kindle/event/TutorialEvent;->getType()Lcom/amazon/kindle/krx/tutorial/events/EventType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 175
    invoke-virtual {p0}, Lcom/amazon/kindle/event/TutorialEvent;->getType()Lcom/amazon/kindle/krx/tutorial/events/EventType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "Checking whether we should use legacy event %s: %b."

    invoke-static {p0, v0}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    return v2
.end method

.method public static useLegacyTutorial(Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;)Z
    .locals 6

    .line 120
    invoke-static {}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->isUtmEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    .line 121
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "UTM is not enabled - returning true for useLegacyTutorial(%s)"

    invoke-static {p0, v0}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    return v2

    .line 127
    :cond_0
    sget-object v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$1;->$SwitchMap$com$amazon$kindle$tutorial$TutorialMigrationHelper$LegacyTutorial:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const/4 v3, 0x2

    if-eq v0, v2, :cond_1

    if-eq v0, v3, :cond_1

    .line 137
    sget-object v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detected invalid legacy tutorial "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    new-array v3, v3, [Ljava/lang/Object;

    .line 140
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v3, v2

    const-string p0, "Checking whether we should use legacy tutorial %s: %b."

    invoke-static {p0, v3}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    return v0
.end method
