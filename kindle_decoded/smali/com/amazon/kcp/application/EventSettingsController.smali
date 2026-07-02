.class public Lcom/amazon/kcp/application/EventSettingsController;
.super Lcom/amazon/kindle/persistence/AbstractSettingsController;
.source "EventSettingsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/EventSettingsController$EventName;
    }
.end annotation


# static fields
.field private static final EVENT_SETTINGS_CONTROLLER_SHARED_PREFERENCES:Ljava/lang/String; = "EventSettingsControllerSharedPreferences"

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/amazon/kcp/application/EventSettingsController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/kcp/application/EventSettingsController;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/EventSettingsController;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "EventSettingsControllerSharedPreferences"

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/EventSettingsController;
    .locals 2

    const-class v0, Lcom/amazon/kcp/application/EventSettingsController;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/application/EventSettingsController;->instance:Lcom/amazon/kcp/application/EventSettingsController;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/amazon/kcp/application/EventSettingsController;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/application/EventSettingsController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/kcp/application/EventSettingsController;->instance:Lcom/amazon/kcp/application/EventSettingsController;

    .line 47
    :cond_0
    sget-object p0, Lcom/amazon/kcp/application/EventSettingsController;->instance:Lcom/amazon/kcp/application/EventSettingsController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getFirstHighlightCreatedAfterTutorialTime()J
    .locals 3

    .line 167
    sget-object v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;->FIRST_HIGHLIGHT_CREATED_EVENT_AFTER_TUTORIAL:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFirstNotebookOpenAfterJitTime()J
    .locals 3

    .line 107
    sget-object v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;->FIRST_NOTEBOOK_OPEN_EVENT_AFTER_JIT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getIsRecordedTimeBetweenTutorialAndQuickHighlight()Z
    .locals 2

    .line 182
    sget-object v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;->HAS_RECORDED_TIME_BETWEEN_TUTORIAL_AND_QUICK_HIGHLIGHT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLastHighlightCreatedTime()J
    .locals 3

    .line 62
    sget-object v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;->LAST_HIGHLIGHT_CREATED_EVENT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastNoteCreatedTime()J
    .locals 3

    .line 77
    sget-object v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;->LAST_NOTE_CREATED_EVENT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastNotebookOpenTime()J
    .locals 3

    .line 122
    sget-object v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;->LAST_NOTEBOOK_OPEN_EVENT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastSearchTime()J
    .locals 3

    .line 92
    sget-object v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;->LAST_SEARCH_IN_BOOK_EVENT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNotebookJitShownTime()J
    .locals 3

    .line 137
    sget-object v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;->NOTEBOOK_JIT_SHOWN_EVENT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getQuickHighlightTutorialShownTime()J
    .locals 3

    .line 152
    sget-object v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;->QUICK_HIGHLIGHT_TUTORIAL_SHOWN_EVENT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public isRecordedEventOlderThan(Lcom/amazon/kcp/application/EventSettingsController$EventName;Ljava/lang/Long;)Z
    .locals 3

    const-wide/16 v0, -0x1

    .line 193
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 194
    sget-object v1, Lcom/amazon/kcp/application/EventSettingsController$EventName;->LAST_HIGHLIGHT_CREATED_EVENT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/amazon/kcp/application/EventSettingsController;->getLastHighlightCreatedTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 197
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    sub-long/2addr v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 198
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public saveLastAnnotationCreateTime(Ljava/lang/String;)V
    .locals 2

    const-string v0, "HIGHLIGHT"

    .line 205
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/application/EventSettingsController;->setLastHighlightCreatedTime(J)V

    .line 207
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Saved last highlight created time : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/EventSettingsController;->getLastHighlightCreatedTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "NOTE"

    .line 208
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/application/EventSettingsController;->setLastNoteCreatedTime(J)V

    .line 210
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Saved last note created time : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/EventSettingsController;->getLastNoteCreatedTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public setFirstHighlightCreatedAfterTutorialTime(J)V
    .locals 1

    .line 160
    sget-object v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;->FIRST_HIGHLIGHT_CREATED_EVENT_AFTER_TUTORIAL:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setFirstNoteBookOpenAfterJitTime(J)V
    .locals 1

    .line 100
    sget-object v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;->FIRST_NOTEBOOK_OPEN_EVENT_AFTER_JIT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setIsRecordedTimeBetweenTutorialAndQuickHighlight(Z)V
    .locals 1

    .line 175
    sget-object v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;->HAS_RECORDED_TIME_BETWEEN_TUTORIAL_AND_QUICK_HIGHLIGHT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setLastHighlightCreatedTime(J)V
    .locals 1

    .line 55
    sget-object v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;->LAST_HIGHLIGHT_CREATED_EVENT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setLastNoteCreatedTime(J)V
    .locals 1

    .line 70
    sget-object v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;->LAST_NOTE_CREATED_EVENT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setLastSearchTime(J)V
    .locals 1

    .line 85
    sget-object v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;->LAST_SEARCH_IN_BOOK_EVENT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setNotebookJitShownTime(J)V
    .locals 1

    .line 130
    sget-object v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;->NOTEBOOK_JIT_SHOWN_EVENT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setQuickHighlightTutorialShownTime(J)V
    .locals 1

    .line 145
    sget-object v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;->QUICK_HIGHLIGHT_TUTORIAL_SHOWN_EVENT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putLong(Ljava/lang/String;J)V

    return-void
.end method
