.class public Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;
.super Ljava/lang/Object;
.source "WordWiseInfoCardController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;
    }
.end annotation


# static fields
.field private static final FTUE_FEEDBACK_ALERT_SHOWN:Ljava/lang/String; = "FTUE_FEEDBACK_ALERT_SHOWN"

.field private static final FTUE_MULTIPLE_INFOCARD_SHOWN:Ljava/lang/String; = "FTUE_MULTIPLE_INFOCARD_SHOWN"

.field private static final JAPANESE_LANGUAGE_CODE:Ljava/lang/String; = "ja"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private alternateSenseId:I

.field private currentEntry:Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

.field private currentState:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

.field private glossModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

.field private glosses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;",
            ">;"
        }
    .end annotation
.end field

.field private handlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;",
            "Lcom/amazon/kcp/reader/ui/IWordWiseClickHandler;",
            ">;"
        }
    .end annotation
.end field

.field private otherMeanings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;",
            ">;"
        }
    .end annotation
.end field

.field private prefs:Landroid/content/SharedPreferences;

.field private selectionModel:Lcom/amazon/kindle/krx/content/IContentSelection;

.field private view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;)V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->glosses:Ljava/util/Map;

    .line 92
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    const/4 p1, 0x0

    .line 93
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->selectionModel:Lcom/amazon/kindle/krx/content/IContentSelection;

    .line 94
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentEntry:Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    .line 95
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->otherMeanings:Ljava/util/Map;

    .line 96
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;->NONE:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentState:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    const/4 v0, -0x1

    .line 97
    iput v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->alternateSenseId:I

    .line 98
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->handlers:Ljava/util/Map;

    .line 99
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method private conformsWithSelection(Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;)Z
    .locals 4

    .line 172
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->selectionModel:Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectionStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    .line 173
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->selectionModel:Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectionEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    .line 175
    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getStartPosition()I

    move-result v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getLastStartPosition()I

    move-result v0

    if-ge v1, v0, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getLastStartPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    return v2

    .line 183
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getGlossWordSense()Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->getDisplayLemma()Ljava/lang/String;

    move-result-object p1

    .line 184
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->selectionModel:Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    const-string v1, " "

    .line 185
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ne p1, v0, :cond_2

    const/4 v3, 0x1

    :cond_2
    :goto_0
    return v3
.end method

.method private getHandlerMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;",
            "Lcom/amazon/kcp/reader/ui/IWordWiseClickHandler;",
            ">;"
        }
    .end annotation

    .line 828
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->handlers:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 829
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->handlers:Ljava/util/Map;

    .line 831
    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;->CURRENT_SENSE:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    new-instance v2, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$1;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$1;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->handlers:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;->SENSE_DISAMBIGUATION:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    new-instance v2, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$2;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$2;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->handlers:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;->ALTERNATE_SENSE:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    new-instance v2, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$3;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$3;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->handlers:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;->FEEDBACK_CHOICES:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    new-instance v2, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$4;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$4;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->handlers:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;->ALTERNATE_MEANINGS:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    new-instance v2, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$5;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$5;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->handlers:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;->FTUE_MULTIPLE_CHOICES:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    new-instance v2, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$6;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$6;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->handlers:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;->MULTIPLE_CHOICES:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    new-instance v2, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$7;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$7;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->handlers:Ljava/util/Map;

    return-object v0
.end method

.method private setupHeader(Landroid/os/Bundle;Landroid/content/res/Resources;)V
    .locals 1

    .line 297
    sget v0, Lcom/amazon/kindle/ww/R$string;->wordwise_settings_title:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "text"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 298
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->TITLE:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {p2, v0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->showView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;Landroid/os/Bundle;)V

    .line 300
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;->getInstance()Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 301
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    sget-object p2, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->SPEAK:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->showView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected handleClickOnAlternateMeanings(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;Landroid/os/Bundle;)V
    .locals 4

    .line 718
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->BACK_GROUP:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    if-ne p1, v0, :cond_0

    .line 719
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->showFeedbackChoices()V

    goto :goto_0

    .line 720
    :cond_0
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->LIST:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    if-ne p1, v0, :cond_3

    const-string p1, "item"

    .line 721
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const-string p2, "WrongMeaningOverride"

    .line 723
    invoke-static {p2}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportWordWiseAction(Ljava/lang/String;)V

    .line 724
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->otherMeanings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->overrideSense(Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;)V

    .line 725
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->showCurrentSense()V

    .line 726
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentEntry:Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->glossModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->selectionModel:Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;->wrong_meaning:Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;

    invoke-static {v1, p1, p2, v0, v2}, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender;->sendFeedback(ZLcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;Lcom/amazon/kcp/wordwise/gloss/IGlossModel;Ljava/lang/String;Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;)V

    goto :goto_0

    .line 728
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->glossModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentEntry:Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getGlossWordSense()Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kcp/wordwise/gloss/IGlossModel;->suppressSense(Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;)V

    .line 729
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->refreshGlosses()V

    .line 730
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentEntry:Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->glossModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->selectionModel:Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectedText()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;->wrong_meaning_no_alternates:Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;

    invoke-static {v1, p1, v0, v2, v3}, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender;->sendFeedback(ZLcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;Lcom/amazon/kcp/wordwise/gloss/IGlossModel;Ljava/lang/String;Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;)V

    .line 732
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->prefs:Landroid/content/SharedPreferences;

    const-string v0, "FTUE_FEEDBACK_ALERT_SHOWN"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 734
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->selectionModel:Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->selectNone()V

    goto :goto_0

    .line 736
    :cond_2
    invoke-virtual {p0, p2}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->showFeedbackShownView(Landroid/os/Bundle;)V

    .line 739
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 p2, 0x1

    .line 740
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 741
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected handleClickOnAlternateSense(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;)V
    .locals 4

    .line 624
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->BACK_GROUP:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    if-ne p1, v0, :cond_0

    const-string p1, "FeedbackBack"

    .line 625
    invoke-static {p1}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->emitMetric(Ljava/lang/String;)V

    .line 626
    sget-object p1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;->SENSE_DISAMBIGUATION:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->showOtherMeanings(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;)V

    goto :goto_0

    .line 627
    :cond_0
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->USE_THIS_MEANING_GROUP:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    if-ne p1, v0, :cond_1

    const-string p1, "UseThisMeaning"

    .line 628
    invoke-static {p1}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->emitMetric(Ljava/lang/String;)V

    .line 629
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->otherMeanings:Ljava/util/Map;

    iget v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->alternateSenseId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->overrideSense(Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;)V

    .line 630
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->showCurrentSense()V

    const-string p1, "OtherMeaningsOverride"

    .line 631
    invoke-static {p1}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportWordWiseAction(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 632
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentEntry:Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->glossModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->selectionModel:Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectedText()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;->wrong_meaning:Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender;->sendFeedback(ZLcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;Lcom/amazon/kcp/wordwise/gloss/IGlossModel;Ljava/lang/String;Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected handleClickOnCurrentSense(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;)V
    .locals 4

    .line 587
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->OTHER_MEANINGS:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    if-ne p1, v0, :cond_0

    const-string p1, "OtherMeanings"

    .line 588
    invoke-static {p1}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->emitMetric(Ljava/lang/String;)V

    .line 589
    sget-object p1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;->SENSE_DISAMBIGUATION:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->showOtherMeanings(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;)V

    goto :goto_0

    .line 590
    :cond_0
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->HELPFUL_YES:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    if-ne p1, v0, :cond_1

    const-string p1, "FeedbackPositive"

    .line 591
    invoke-static {p1}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->emitMetric(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 592
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentEntry:Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->glossModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->selectionModel:Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectedText()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;->helpful:Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender;->sendFeedback(ZLcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;Lcom/amazon/kcp/wordwise/gloss/IGlossModel;Ljava/lang/String;Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;)V

    const-string p1, "MarkedAsHelpful"

    .line 593
    invoke-static {p1}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportWordWiseAction(Ljava/lang/String;)V

    .line 594
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->HELPFUL_GROUP:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->hideView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;)V

    .line 595
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->OTHER_MEANINGS:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->hideView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;)V

    .line 596
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->THANKS_GROUP:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->showView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;)V

    goto :goto_0

    .line 597
    :cond_1
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->HELPFUL_NO:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    if-ne p1, v0, :cond_2

    const-string p1, "FeedbackNegative"

    .line 598
    invoke-static {p1}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->emitMetric(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->showFeedbackChoices()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected handleClickOnFTUEMultipleChoices(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;)V
    .locals 1

    .line 752
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->SEE_MEANINGS_GROUP:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    if-ne p1, v0, :cond_0

    .line 753
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->showMultipleChoices()V

    :cond_0
    return-void
.end method

.method protected handleClickOnFeedbackChoices(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;Landroid/os/Bundle;)V
    .locals 5

    .line 642
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->BACK_GROUP:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    if-ne p1, v0, :cond_0

    const-string p1, "FeedbackBack"

    .line 643
    invoke-static {p1}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->emitMetric(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->showCurrentSense()V

    goto/16 :goto_2

    .line 645
    :cond_0
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->LIST:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    if-ne p1, v0, :cond_5

    const-string p1, "item"

    .line 646
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 649
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentEntry:Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->glossModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->selectionModel:Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectedText()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;->already_known:Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;

    invoke-static {v0, p1, v2, v3, v4}, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender;->sendFeedback(ZLcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;Lcom/amazon/kcp/wordwise/gloss/IGlossModel;Ljava/lang/String;Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;)V

    const-string p1, "SuppressAlreadyKnown"

    .line 650
    invoke-static {p1}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportWordWiseAction(Ljava/lang/String;)V

    .line 652
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->glossModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentEntry:Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    invoke-virtual {v2}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getGlossWordSense()Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/amazon/kcp/wordwise/gloss/IGlossModel;->suppressSense(Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 655
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentEntry:Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->glossModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->selectionModel:Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectedText()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;->hard_words:Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;

    invoke-static {v0, p1, v2, v3, v4}, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender;->sendFeedback(ZLcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;Lcom/amazon/kcp/wordwise/gloss/IGlossModel;Ljava/lang/String;Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;)V

    const-string p1, "SuppressHardWords"

    .line 656
    invoke-static {p1}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportWordWiseAction(Ljava/lang/String;)V

    .line 658
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->glossModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentEntry:Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    invoke-virtual {v2}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getGlossWordSense()Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/amazon/kcp/wordwise/gloss/IGlossModel;->suppressSense(Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    const-string p1, "SuppressWrongMeaning"

    .line 660
    invoke-static {p1}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportWordWiseAction(Ljava/lang/String;)V

    .line 662
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->otherMeanings:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-le p1, v1, :cond_3

    .line 663
    sget-object p1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;->ALTERNATE_MEANINGS:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->showOtherMeanings(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;)V

    const/4 p1, 0x0

    goto :goto_1

    .line 665
    :cond_3
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentEntry:Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->glossModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->selectionModel:Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectedText()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;->wrong_meaning_no_alternates:Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;

    invoke-static {v0, p1, v2, v3, v4}, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender;->sendFeedback(ZLcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;Lcom/amazon/kcp/wordwise/gloss/IGlossModel;Ljava/lang/String;Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;)V

    .line 667
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->glossModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentEntry:Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    invoke-virtual {v2}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getGlossWordSense()Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/amazon/kcp/wordwise/gloss/IGlossModel;->suppressSense(Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;)V

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_5

    .line 675
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->refreshGlosses()V

    .line 678
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "FTUE_FEEDBACK_ALERT_SHOWN"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 682
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->selectionModel:Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->selectNone()V

    goto :goto_2

    .line 685
    :cond_4
    invoke-virtual {p0, p2}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->showFeedbackShownView(Landroid/os/Bundle;)V

    .line 688
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 689
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 690
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    nop

    :cond_5
    :goto_2
    return-void
.end method

.method protected handleClickOnMultipleChoices(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;Landroid/os/Bundle;)V
    .locals 3

    .line 763
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->LIST:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    if-ne p1, v0, :cond_1

    const-string p1, "WordWiseInfocard_UseThisMeaningClicked"

    .line 764
    invoke-static {p1}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportWordWiseAction(Ljava/lang/String;)V

    const-string p1, "item"

    .line 766
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    const/4 v0, 0x0

    if-eq p1, p2, :cond_0

    .line 768
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->otherMeanings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->overrideSense(Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;)V

    .line 769
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentEntry:Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->glossModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->selectionModel:Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectedText()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;->wrong_meaning:Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;

    invoke-static {v0, p1, p2, v1, v2}, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender;->sendFeedback(ZLcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;Lcom/amazon/kcp/wordwise/gloss/IGlossModel;Ljava/lang/String;Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;)V

    goto :goto_0

    .line 771
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentEntry:Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->glossModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->selectionModel:Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectedText()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;->wrong_meaning_no_alternates:Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;

    invoke-static {v0, p1, p2, v1, v2}, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender;->sendFeedback(ZLcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;Lcom/amazon/kcp/wordwise/gloss/IGlossModel;Ljava/lang/String;Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;)V

    .line 773
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->glossModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentEntry:Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    invoke-virtual {p2}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getGlossWordSense()Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kcp/wordwise/gloss/IGlossModel;->suppressSense(Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;)V

    .line 774
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->refreshGlosses()V

    .line 776
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->selectionModel:Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->selectNone()V

    .line 779
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->prefs:Landroid/content/SharedPreferences;

    const-string p2, "FTUE_MULTIPLE_INFOCARD_SHOWN"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 781
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 782
    sget v0, Lcom/amazon/kindle/ww/R$string;->wordwise_card_unhelpful_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 783
    sget v1, Lcom/amazon/kindle/ww/R$string;->wordwise_card_unhelpful_details:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 784
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->showAlertMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v0, 0x1

    .line 788
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 789
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method protected handleClickOnSenseDisambiguation(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;Landroid/os/Bundle;)V
    .locals 1

    .line 609
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->BACK_GROUP:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    if-ne p1, v0, :cond_0

    .line 610
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->showCurrentSense()V

    const-string p1, "FeedbackBack"

    .line 611
    invoke-static {p1}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->emitMetric(Ljava/lang/String;)V

    goto :goto_0

    .line 612
    :cond_0
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->LIST:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    if-ne p1, v0, :cond_1

    const-string p1, "MeaningSelected"

    .line 613
    invoke-static {p1}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->emitMetric(Ljava/lang/String;)V

    const-string p1, "item"

    .line 614
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->alternateSenseId:I

    .line 615
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->otherMeanings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->showAlternateSense(Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public hasDefinition()Z
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentEntry:Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onClick(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;)V
    .locals 1

    const/4 v0, 0x0

    .line 265
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->onClick(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onClick(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;Landroid/os/Bundle;)V
    .locals 2

    .line 276
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->getHandlerMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentState:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/IWordWiseClickHandler;

    if-eqz v0, :cond_0

    .line 278
    invoke-interface {v0, p1, p2}, Lcom/amazon/kcp/reader/ui/IWordWiseClickHandler;->onClick(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected overrideSense(Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 800
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentEntry:Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "MultipleChoiceOverride"

    .line 804
    invoke-static {v0}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportWordWiseAction(Ljava/lang/String;)V

    .line 805
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentEntry:Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->setOverride(Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;)V

    .line 806
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->glossModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentEntry:Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/wordwise/gloss/IGlossModel;->applyOverride(Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;)V

    .line 807
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->refreshGlosses()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected playCurrentSense()V
    .locals 2

    .line 286
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->hasDefinition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;->getInstance()Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->selectionModel:Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectedText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;->speak(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected sendSelectionLookupFeedback()V
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->selectionModel:Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {v0}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->glossModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    invoke-interface {v1}, Lcom/amazon/kcp/wordwise/gloss/IGlossModel;->getDictionaryTermTerminatorList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 197
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 198
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    return-void

    .line 206
    :cond_3
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->glossModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    invoke-interface {v1}, Lcom/amazon/kcp/wordwise/gloss/IGlossModel;->getDictionaryTokenSeparator()Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    .line 208
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->glossModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    invoke-interface {v1}, Lcom/amazon/kcp/wordwise/gloss/IGlossModel;->getDictionaryMaxTermLength()I

    move-result v1

    if-le v0, v1, :cond_4

    return-void

    .line 213
    :cond_4
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isCurrentBookSidecarLoaded()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 214
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 215
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 216
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->selectionModel:Lcom/amazon/kindle/krx/content/IContentSelection;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->glossModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    invoke-static {v0, v1}, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender;->sendDictionaryLookupFeedback(Lcom/amazon/kindle/krx/content/IContentSelection;Lcom/amazon/kcp/wordwise/gloss/IGlossModel;)V

    :cond_5
    return-void
.end method

.method public setSelectionModel(Lcom/amazon/kindle/krx/content/IContentSelection;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->selectionModel:Lcom/amazon/kindle/krx/content/IContentSelection;

    return-void
.end method

.method public setSharedPreferences(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 886
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method protected showAlertMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 816
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 817
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 818
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 819
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/ww/R$string;->wordwise_card_close:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v1, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 820
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/dialog/DialogManager;->showDialogSafely(Landroid/content/Context;Landroid/app/Dialog;)Z

    return-void
.end method

.method protected showAlternateSense(Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;)V
    .locals 8

    .line 442
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->hideAll()V

    .line 444
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 446
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 447
    invoke-direct {p0, v1, v0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->setupHeader(Landroid/os/Bundle;Landroid/content/res/Resources;)V

    .line 449
    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->getDisplayLemma()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 450
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    sget-object v4, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->LEMMA:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {v2, v4, v1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->showView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;Landroid/os/Bundle;)V

    .line 452
    sget v2, Lcom/amazon/kindle/ww/R$string;->wordwise_card_pos_type_format:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->getPartOfSpeech()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 453
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 454
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    sget-object v5, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->POS_TYPE:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {v2, v5, v1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->showView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;Landroid/os/Bundle;)V

    .line 456
    sget v2, Lcom/amazon/kindle/ww/R$string;->wordwise_card_short_definition_format:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->getShortDefinition()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 457
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 458
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    sget-object v5, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->SHORT_DEFINITION:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {v2, v5, v1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->showView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;Landroid/os/Bundle;)V

    .line 460
    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->getSource()Ljava/lang/String;

    move-result-object v2

    .line 461
    invoke-static {v2}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 462
    sget v2, Lcom/amazon/kindle/ww/R$string;->wordwise_card_source:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 464
    :cond_0
    sget v5, Lcom/amazon/kindle/ww/R$string;->wordwise_card_source_format:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 466
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    sget-object v5, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->SOURCE:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {v2, v5, v1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->showView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;Landroid/os/Bundle;)V

    .line 468
    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->getSentence()Ljava/lang/String;

    move-result-object v2

    .line 469
    invoke-static {v2}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 470
    sget v2, Lcom/amazon/kindle/ww/R$string;->wordwise_card_definition_format:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->getDefinition()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v7

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 472
    :cond_1
    sget v5, Lcom/amazon/kindle/ww/R$string;->wordwise_card_definition_sentence_format:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->getDefinition()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v7

    aput-object v2, v5, v4

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 474
    :goto_1
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "html_text"

    .line 475
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 476
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    sget-object v2, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->DEFINITION:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {p1, v2, v1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->showView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;Landroid/os/Bundle;)V

    .line 477
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 479
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->BACK_GROUP:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->showView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;)V

    .line 481
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->USE_THIS_MEANING_GROUP:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->showView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;)V

    .line 483
    sget-object p1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;->ALTERNATE_SENSE:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentState:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    return-void
.end method

.method protected showCurrentSense()V
    .locals 9

    .line 309
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->hideAll()V

    .line 310
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 312
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentEntry:Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    invoke-virtual {v1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getGlossWordSense()Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    move-result-object v1

    .line 314
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 315
    invoke-direct {p0, v2, v0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->setupHeader(Landroid/os/Bundle;Landroid/content/res/Resources;)V

    .line 317
    invoke-virtual {v1}, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->getDisplayLemma()Ljava/lang/String;

    move-result-object v3

    const-string v4, "text"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 318
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    sget-object v5, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->LEMMA:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {v3, v5, v2}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->showView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;Landroid/os/Bundle;)V

    .line 320
    sget v3, Lcom/amazon/kindle/ww/R$string;->wordwise_card_pos_type_format:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->getPartOfSpeech()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 321
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 322
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    sget-object v6, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->POS_TYPE:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {v3, v6, v2}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->showView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;Landroid/os/Bundle;)V

    .line 324
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->otherMeanings:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 326
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    sget-object v6, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->OTHER_MEANINGS:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {v3, v6}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->showView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;)V

    .line 329
    :cond_0
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->glossModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    invoke-virtual {v1}, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->getSenseId()I

    move-result v6

    invoke-interface {v3, v6}, Lcom/amazon/kcp/wordwise/gloss/IGlossModel;->getSimilarWords(I)Ljava/util/List;

    move-result-object v3

    .line 330
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 331
    sget v6, Lcom/amazon/kindle/ww/R$string;->wordwise_card_similar_words:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 332
    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    sget-object v7, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->SUB_TITLE:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {v6, v7, v2}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->showView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;Landroid/os/Bundle;)V

    .line 334
    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    const-string v6, ", "

    invoke-static {v3, v6}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 335
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    sget-object v6, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->SUB_DETAILS:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {v3, v6, v2}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->showView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;Landroid/os/Bundle;)V

    .line 338
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->getSource()Ljava/lang/String;

    move-result-object v3

    .line 339
    invoke-static {v3}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 340
    sget v3, Lcom/amazon/kindle/ww/R$string;->wordwise_card_source:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 342
    :cond_2
    sget v6, Lcom/amazon/kindle/ww/R$string;->wordwise_card_source_format:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v3, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 344
    :goto_0
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    sget-object v6, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->SOURCE:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {v3, v6, v2}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->showView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;Landroid/os/Bundle;)V

    .line 346
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->getCurrentGlossDictionaryType()Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    move-result-object v3

    .line 347
    invoke-virtual {v1}, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->getSentence()Ljava/lang/String;

    move-result-object v6

    .line 348
    invoke-static {v6}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 349
    invoke-virtual {v3}, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->getDefinitionFormatResId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->getDefinition()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 351
    :cond_3
    invoke-virtual {v3}, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->getDefinitionAndExampleResId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->getDefinition()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v8

    aput-object v6, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 353
    :goto_1
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "html_text"

    .line 354
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 355
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    sget-object v3, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->DEFINITION:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {v0, v3, v2}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->showView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;Landroid/os/Bundle;)V

    .line 356
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentState:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;->ALTERNATE_MEANINGS:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 360
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->OTHER_MEANINGS:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->hideView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;)V

    .line 361
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->THANKS_GROUP:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->showView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;)V

    goto :goto_2

    .line 363
    :cond_4
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->HELPFUL_GROUP:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->showView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;)V

    .line 366
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 367
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->HELPFUL_QUESTION:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->hideView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;)V

    .line 368
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->setupJapaneseHelpfulViews()V

    .line 372
    :cond_5
    :goto_2
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;->CURRENT_SENSE:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentState:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    return-void
.end method

.method protected showFTUEMultipleChoices()V
    .locals 5

    .line 526
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->hideAll()V

    .line 528
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 530
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 531
    invoke-direct {p0, v1, v0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->setupHeader(Landroid/os/Bundle;Landroid/content/res/Resources;)V

    .line 533
    sget v2, Lcom/amazon/kindle/ww/R$string;->wordwise_card_ftue_title:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 534
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    sget-object v4, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->SUB_TITLE:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {v2, v4, v1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->showView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;Landroid/os/Bundle;)V

    .line 536
    sget v2, Lcom/amazon/kindle/ww/R$string;->wordwise_card_ftue_description:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 537
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    sget-object v2, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->SUB_DETAILS:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->showView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;Landroid/os/Bundle;)V

    .line 539
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->SEE_MEANINGS_GROUP:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->showView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;)V

    .line 541
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;->FTUE_MULTIPLE_CHOICES:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentState:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    .line 544
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "FTUE_MULTIPLE_INFOCARD_SHOWN"

    const/4 v2, 0x1

    .line 545
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 546
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected showFeedbackChoices()V
    .locals 6

    .line 493
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->hideAll()V

    .line 494
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 496
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 497
    invoke-direct {p0, v1, v0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->setupHeader(Landroid/os/Bundle;Landroid/content/res/Resources;)V

    .line 499
    sget v2, Lcom/amazon/kindle/ww/R$string;->wordwise_card_feedback_choices_title:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 500
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    sget-object v3, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->SUB_TITLE:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {v2, v3, v1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->showView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;Landroid/os/Bundle;)V

    .line 501
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    sget-object v3, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->SUB_TITLE_DIVIDER:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->showView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;)V

    const/4 v2, 0x3

    new-array v3, v2, [I

    .line 503
    fill-array-data v3, :array_0

    new-array v2, v2, [Ljava/lang/String;

    .line 508
    sget v4, Lcom/amazon/kindle/ww/R$string;->wordwise_card_feedback_already_known:I

    .line 509
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    sget v4, Lcom/amazon/kindle/ww/R$string;->wordwise_card_feedback_did_not_help:I

    .line 510
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    sget v4, Lcom/amazon/kindle/ww/R$string;->wordwise_card_feedback_wrong_meaning:I

    .line 511
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    aput-object v0, v2, v4

    const-string v0, "keys"

    .line 513
    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string/jumbo v0, "values"

    .line 514
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    sget-object v2, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->LIST:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->showView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;Landroid/os/Bundle;)V

    .line 517
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->BACK_GROUP:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->showView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;)V

    .line 519
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;->FEEDBACK_CHOICES:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentState:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method protected showFeedbackShownView(Landroid/os/Bundle;)V
    .locals 4

    .line 701
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->hideAll()V

    .line 703
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 704
    sget v1, Lcom/amazon/kindle/ww/R$string;->wordwise_card_feedback_sent_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "text"

    .line 705
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 706
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    sget-object v3, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->TITLE:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {v1, v3, p1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->showView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;Landroid/os/Bundle;)V

    .line 708
    sget v1, Lcom/amazon/kindle/ww/R$string;->wordwise_card_feedback_sent_details:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 709
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->SUB_TITLE:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->showView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;Landroid/os/Bundle;)V

    return-void
.end method

.method protected showMultipleChoices()V
    .locals 9

    .line 553
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->hideAll()V

    .line 555
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 557
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 558
    invoke-direct {p0, v1, v0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->setupHeader(Landroid/os/Bundle;Landroid/content/res/Resources;)V

    .line 560
    sget v2, Lcom/amazon/kindle/ww/R$string;->wordwise_card_feedback_other_meaning_choices_title:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 561
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    sget-object v3, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->SUB_TITLE:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {v2, v3, v1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->showView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;Landroid/os/Bundle;)V

    .line 563
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->otherMeanings:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 564
    new-array v3, v2, [I

    .line 565
    new-array v2, v2, [Ljava/lang/String;

    .line 567
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->otherMeanings:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 568
    iget-object v7, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->otherMeanings:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    invoke-virtual {v7}, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->getSenseId()I

    move-result v7

    aput v7, v3, v5

    .line 569
    iget-object v7, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->otherMeanings:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    invoke-virtual {v6}, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->getShortDefinition()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    .line 572
    aput v4, v3, v5

    .line 573
    sget v4, Lcom/amazon/kindle/ww/R$string;->wordwise_card_multiple_choices_none:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    const-string v0, "keys"

    .line 575
    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string/jumbo v0, "values"

    .line 576
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    sget-object v2, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->LIST:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->showView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;Landroid/os/Bundle;)V

    .line 579
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;->MULTIPLE_CHOICES:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentState:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    return-void
.end method

.method protected showOtherMeanings(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;)V
    .locals 10

    const-string v0, "ViewOtherMeanings"

    .line 382
    invoke-static {v0}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportWordWiseAction(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->hideAll()V

    .line 385
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentEntry:Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getGlossWordSense()Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    move-result-object v0

    .line 387
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 389
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 390
    invoke-direct {p0, v2, v1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->setupHeader(Landroid/os/Bundle;Landroid/content/res/Resources;)V

    .line 392
    sget-object v3, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;->ALTERNATE_MEANINGS:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    invoke-virtual {v3, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lcom/amazon/kindle/ww/R$string;->wordwise_card_feedback_other_meaning_choices_title:I

    .line 393
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    sget v3, Lcom/amazon/kindle/ww/R$string;->wordwise_card_other_meanings_title:I

    .line 394
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v4, "text"

    .line 395
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 396
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    sget-object v4, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->SUB_TITLE:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {v3, v4, v2}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->showView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;Landroid/os/Bundle;)V

    .line 397
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    sget-object v4, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->SUB_TITLE_DIVIDER:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {v3, v4}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->showView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;)V

    .line 399
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->otherMeanings:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    .line 400
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->otherMeanings:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->getSenseId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, -0x1

    .line 407
    :cond_1
    sget-object v4, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;->ALTERNATE_MEANINGS:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    invoke-virtual {v4, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    add-int/2addr v3, v4

    .line 409
    new-array v4, v3, [I

    .line 410
    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 412
    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->otherMeanings:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 414
    iget-object v8, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->otherMeanings:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    invoke-virtual {v8}, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->getSenseId()I

    move-result v8

    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->getSenseId()I

    move-result v9

    if-ne v8, v9, :cond_2

    goto :goto_1

    .line 417
    :cond_2
    iget-object v8, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->otherMeanings:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    invoke-virtual {v8}, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->getSenseId()I

    move-result v8

    aput v8, v4, v5

    .line 418
    iget-object v8, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->otherMeanings:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    invoke-virtual {v7}, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->getShortDefinition()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 422
    :cond_3
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;->ALTERNATE_MEANINGS:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    .line 423
    aput v0, v4, v5

    .line 424
    sget v0, Lcom/amazon/kindle/ww/R$string;->wordwise_card_multiple_choices_none:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    :cond_4
    const-string v0, "keys"

    .line 427
    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string/jumbo v0, "values"

    .line 428
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "arrow"

    .line 429
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 430
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->LIST:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->showView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;Landroid/os/Bundle;)V

    .line 432
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->BACK_GROUP:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->showView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;)V

    .line 434
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentState:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    return-void
.end method

.method protected showWordwiseInfoCard()V
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentEntry:Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->isLowConfidence()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MultipleChoiceLookup"

    .line 225
    invoke-static {v0}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportWordWiseAction(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->prefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "FTUE_MULTIPLE_INFOCARD_SHOWN"

    .line 228
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    .line 232
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->showFTUEMultipleChoices()V

    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->showMultipleChoices()V

    goto :goto_0

    :cond_2
    const-string v0, "GlossLookup"

    .line 237
    invoke-static {v0}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportWordWiseAction(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->showCurrentSense()V

    :goto_0
    return-void
.end method

.method public updateSelection()V
    .locals 5

    .line 107
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->selectionModel:Lcom/amazon/kindle/krx/content/IContentSelection;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->prefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 114
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->getInstance()Lcom/amazon/kcp/wordwise/gloss/GlossFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->openGlossModelForCurrentBook()Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->glossModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    if-eqz v0, :cond_8

    .line 116
    invoke-interface {v0}, Lcom/amazon/kcp/wordwise/gloss/IGlossModel;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->selectionModel:Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectionStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    .line 122
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->selectionModel:Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectionEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    .line 124
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->glossModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->glosses:Ljava/util/Map;

    invoke-interface {v3, v0, v2, v4}, Lcom/amazon/kcp/wordwise/gloss/IGlossModel;->getGlosses(IILjava/util/Map;)V

    .line 126
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->glosses:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->glosses:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_7

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->glosses:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 133
    :cond_2
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->glosses:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentEntry:Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    .line 135
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->conformsWithSelection(Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 136
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentEntry:Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    return-void

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentEntry:Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->isSuppressed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentEntry:Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    return-void

    .line 147
    :cond_4
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->prefs:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_SHOW_MULTIPLE_CHOICE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 148
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentEntry:Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    invoke-virtual {v2}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->isLowConfidence()Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v0, :cond_5

    .line 149
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentEntry:Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    return-void

    .line 154
    :cond_5
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentEntry:Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getGlossWordSense()Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->getDefinition()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 156
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentEntry:Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    return-void

    .line 160
    :cond_6
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->glossModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentEntry:Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    invoke-virtual {v1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getSenseId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/wordwise/gloss/IGlossModel;->getWordSenses(I)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->otherMeanings:Ljava/util/Map;

    .line 161
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->showWordwiseInfoCard()V

    return-void

    .line 127
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->sendSelectionLookupFeedback()V

    const-string v0, "UnglossedDictionaryLookup"

    .line 128
    invoke-static {v0}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportWordWiseAction(Ljava/lang/String;)V

    .line 129
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentEntry:Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    return-void

    .line 117
    :cond_8
    :goto_1
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentEntry:Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    return-void

    .line 108
    :cond_9
    :goto_2
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->currentEntry:Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    return-void
.end method
