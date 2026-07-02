.class public final Lcom/amazon/kcp/reader/ui/BookCoverOnResumeImpl;
.super Ljava/lang/Object;
.source "BookCoverOnResumeManager.kt"

# interfaces
.implements Lcom/amazon/kcp/reader/ui/BookCoverOnResume;


# instance fields
.field private hasClosedInCurrentSession:Z

.field private hasDisplayedInCurrentSession:Z

.field private final prefs:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeImpl;-><init>(Lcom/amazon/kindle/persistence/AndroidSharedPreferences;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/persistence/AndroidSharedPreferences;)V
    .locals 1

    const-string v0, "prefs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeImpl;->prefs:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/kindle/persistence/AndroidSharedPreferences;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 60
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const/4 p2, 0x0

    .line 61
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p3

    const-string v0, "Utils.getFactory()"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "BOOK_COVERS_ON_RESUME_PREF"

    .line 60
    invoke-interface {p1, v0, p2, p3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAndroidSharedPreferences(Ljava/lang/String;ILandroid/content/Context;)Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    move-result-object p1

    const-string p2, "Utils.getFactory().getAn\u2026ils.getFactory().context)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeImpl;-><init>(Lcom/amazon/kindle/persistence/AndroidSharedPreferences;)V

    return-void
.end method

.method private final getLastReadingSessionTime(J)J
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeImpl;->prefs:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    const-string v1, "LAST_READING_SESSION_TIME"

    invoke-virtual {v0, v1, p1, p2}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method private final getNumDaysBetweenTimes(JJ)J
    .locals 1

    .line 157
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr p1, p3

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide p1

    return-wide p1
.end method

.method private final isBackgroundedFromReader()Z
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeImpl;->prefs:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    const-string v1, "BACKGROUNDED_FROM_READER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private final recordTimeBackgrounded(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeImpl;->hasClosedInCurrentSession:Z

    .line 116
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeImpl;->hasDisplayedInCurrentSession:Z

    if-eqz p1, :cond_0

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 120
    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeImpl;->setLastReadingSessionTime(J)V

    .line 122
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeImpl;->setIsBackgroundedFromReader(Z)V

    return-void
.end method

.method private final setIsBackgroundedFromReader(Z)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeImpl;->prefs:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "BACKGROUNDED_FROM_READER"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    return-void
.end method

.method private final setLastReadingSessionTime(J)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeImpl;->prefs:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "LAST_READING_SESSION_TIME"

    invoke-virtual {v0, p2, p1}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->putLong(Ljava/lang/String;Ljava/lang/Long;)Z

    return-void
.end method


# virtual methods
.method public final onAppBackgroundedEvent(Lcom/amazon/kindle/event/ApplicationLifecycleEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Lcom/amazon/kindle/event/ApplicationLifecycleEvent;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 70
    invoke-virtual {p1}, Lcom/amazon/kindle/event/ApplicationLifecycleEvent;->getType()Lcom/amazon/kindle/event/ApplicationLifecycleEvent$EventType;

    move-result-object p1

    sget-object v1, Lcom/amazon/kindle/event/ApplicationLifecycleEvent$EventType;->BACKGROUNDED:Lcom/amazon/kindle/event/ApplicationLifecycleEvent$EventType;

    if-ne p1, v1, :cond_1

    .line 71
    instance-of p1, v0, Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 73
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeImpl;->recordTimeBackgrounded(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 76
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeImpl;->recordTimeBackgrounded(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onReaderActivityLifecycleEvent(Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;->getActivityLifecycleType()Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;->RESUME:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 84
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeImpl;->setIsBackgroundedFromReader(Z)V

    :cond_0
    return-void
.end method

.method public shouldCloseBook()Z
    .locals 7

    .line 97
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeImpl;->hasClosedInCurrentSession:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeImpl;->isBackgroundedFromReader()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 100
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 101
    invoke-direct {p0, v2, v3}, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeImpl;->getLastReadingSessionTime(J)J

    move-result-wide v4

    .line 102
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeImpl;->getNumDaysBetweenTimes(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0xa

    const/4 v0, 0x1

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 104
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeImpl;->hasClosedInCurrentSession:Z

    .line 106
    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeImpl;->setIsBackgroundedFromReader(Z)V

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v1
.end method

.method public shouldShowBookCover()Z
    .locals 2

    .line 89
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeImpl;->hasDisplayedInCurrentSession:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeImpl;->isBackgroundedFromReader()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/reader/AudibleHelper;->isReaderInAudibleMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 91
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeImpl;->hasDisplayedInCurrentSession:Z

    :cond_1
    return v0
.end method
