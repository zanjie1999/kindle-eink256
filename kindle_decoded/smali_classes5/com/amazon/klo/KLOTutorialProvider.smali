.class public Lcom/amazon/klo/KLOTutorialProvider;
.super Lcom/amazon/kindle/krx/tutorial/TutorialProvider;
.source "KLOTutorialProvider.java"


# static fields
.field private static final DAYS_SINCE_EXPORT_TO_FLASHCARD_CLICKED_KEY:Ljava/lang/String; = "DaysSinceExportToFlashcardClicked"

.field private static final DAYS_SINCE_LAST_JIT_SHOWED_KEY:Ljava/lang/String; = "DaysSinceLastJitShowed"

.field private static final EXPORTED_TO_FLASHCARDS_FROM_XRAY_FTUE_EVENT:Ljava/lang/String; = "ExportedToFlashcardsFromXray"

.field private static final KLO_FLASHCARDS_JIT_SHOW_EVENT:Ljava/lang/String; = "KloFlashcardsJITShows"

.field private static final KLO_OPENED_EVENT:Ljava/lang/String; = "KLO_Opened"

.field private static final KLO_OPENED_TIMES_KEY:Ljava/lang/String; = "KloOpenedTimes"

.field private static final NUMBER_Of_XRAY_TERMS_KEY:Ljava/lang/String; = "NumberOfXrayTerms"

.field private static final SHARED_PREFERENCES_KEY:Ljava/lang/String; = "KLOTutorialEventCounts"

.field private static final XRAY_TOPIC:Ljava/lang/String; = "KLO"


# instance fields
.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "KLO"

    .line 42
    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "KLOTutorialEventCounts"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/klo/KLOTutorialProvider;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method private compareEventDate(Ljava/lang/String;ILcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z
    .locals 5

    .line 84
    iget-object v0, p0, Lcom/amazon/klo/KLOTutorialProvider;->sharedPreferences:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const/4 p1, 0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    return p1

    .line 91
    :cond_0
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    neg-int p2, p2

    .line 92
    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->add(II)V

    .line 93
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    .line 94
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 95
    sget-object v1, Lcom/amazon/klo/KLOTutorialProvider$1;->$SwitchMap$com$amazon$kindle$krx$tutorial$conditions$IConditionEvaluator$ComparisonType:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v1, p3

    if-eq p3, p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 98
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    return p1
.end method

.method private recordEventForKey(Ljava/lang/String;)V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/amazon/klo/KLOTutorialProvider;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 140
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v1, "KLO_Opened"

    .line 141
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/amazon/klo/KLOTutorialProvider;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "KloOpenedTimes"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 144
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 145
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method


# virtual methods
.method public evaluate(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/krx/tutorial/conditions/InvalidComparisonTypeException;
        }
    .end annotation

    .line 50
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "KloOpenedTimes"

    const/4 v2, 0x3

    const/4 v3, 0x2

    const-string v4, "NumberOfXrayTerms"

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "DaysSinceExportToFlashcardClicked"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_1

    :sswitch_1
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "DaysSinceLastJitShowed"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_1

    :sswitch_3
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_6

    if-eq p2, v5, :cond_5

    if-eq p2, v3, :cond_4

    if-eq p2, v2, :cond_1

    goto :goto_3

    .line 59
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;->getEventData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 60
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 62
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 63
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-gt p2, p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    return v5

    :cond_3
    :goto_3
    return v6

    .line 57
    :cond_4
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string p2, "ExportedToFlashcardsFromXray"

    invoke-direct {p0, p2, p1, p4}, Lcom/amazon/klo/KLOTutorialProvider;->compareEventDate(Ljava/lang/String;ILcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result p1

    return p1

    .line 55
    :cond_5
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string p2, "KloFlashcardsJITShows"

    invoke-direct {p0, p2, p1, p4}, Lcom/amazon/klo/KLOTutorialProvider;->compareEventDate(Ljava/lang/String;ILcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result p1

    return p1

    .line 53
    :cond_6
    iget-object p1, p0, Lcom/amazon/klo/KLOTutorialProvider;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-lt p1, p2, :cond_7

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    :goto_4
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5bf7ab91 -> :sswitch_3
        0x4ac2b198 -> :sswitch_2
        0x4bb53cb5 -> :sswitch_1
        0x7bc57899 -> :sswitch_0
    .end sparse-switch
.end method

.method public onExportToFlashcardsClicked()V
    .locals 1

    const-string v0, "ExportedToFlashcardsFromXray"

    .line 126
    invoke-direct {p0, v0}, Lcom/amazon/klo/KLOTutorialProvider;->recordEventForKey(Ljava/lang/String;)V

    return-void
.end method

.method public onTutorialStatus(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Lcom/amazon/kindle/krx/tutorial/TutorialStatus;)V
    .locals 0

    .line 108
    invoke-super {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;->onTutorialStatus(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Lcom/amazon/kindle/krx/tutorial/TutorialStatus;)V

    .line 109
    sget-object p1, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;->SHOWN:Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

    invoke-virtual {p4, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "KloFlashcardsJITShows"

    .line 111
    invoke-direct {p0, p1}, Lcom/amazon/klo/KLOTutorialProvider;->recordEventForKey(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onXrayOpened(I)V
    .locals 2

    const-string v0, "KLO_Opened"

    .line 117
    invoke-direct {p0, v0}, Lcom/amazon/klo/KLOTutorialProvider;->recordEventForKey(Ljava/lang/String;)V

    .line 118
    new-instance v1, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "NumberOfXrayTerms"

    .line 119
    invoke-virtual {v1, v0, p1}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->withInt(Ljava/lang/String;I)Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->build()Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;

    move-result-object p1

    .line 121
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;->publishEvent(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)V

    return-void
.end method
