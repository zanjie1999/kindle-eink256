.class public Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;
.super Ljava/lang/Object;
.source "StartActionsController.java"

# interfaces
.implements Lcom/amazon/kindle/krx/settings/ISettingsChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/plugin/StartActionsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingsManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/settings/ISettingsChangeListener<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/startactions/plugin/StartActionsController;

.field private toggle:Lcom/amazon/kindle/krx/settings/OnOffToggle;


# direct methods
.method public constructor <init>(Lcom/amazon/startactions/plugin/StartActionsController;)V
    .locals 0

    .line 1171
    iput-object p1, p0, Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getControlForReader()Lcom/amazon/kindle/krx/settings/OnOffToggle;
    .locals 8

    .line 1223
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;->toggle:Lcom/amazon/kindle/krx/settings/OnOffToggle;

    if-nez v0, :cond_0

    .line 1224
    new-instance v0, Lcom/amazon/kindle/krx/settings/OnOffToggle;

    sget v3, Lcom/amazon/kindle/ea/R$string;->startactions_feature_title:I

    sget v4, Lcom/amazon/kindle/ea/R$string;->startactions_reader_settings_subtitle:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string/jumbo v2, "startActionsSetting2"

    move-object v1, v0

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kindle/krx/settings/OnOffToggle;-><init>(Ljava/lang/String;IIZZLcom/amazon/kindle/krx/settings/ISettingsChangeListener;)V

    iput-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;->toggle:Lcom/amazon/kindle/krx/settings/OnOffToggle;

    .line 1228
    :cond_0
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;->toggle:Lcom/amazon/kindle/krx/settings/OnOffToggle;

    return-object v0
.end method

.method public onSettingsChange(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 3

    if-nez p1, :cond_0

    .line 1178
    invoke-static {}, Lcom/amazon/startactions/plugin/StartActionsController;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string p2, "newValue was null in onSettingsChange; this should not happen- check with KRX."

    invoke-static {p1, p2}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1182
    :cond_0
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1183
    invoke-static {}, Lcom/amazon/startactions/plugin/StartActionsController;->access$600()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start actions setting changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "enabled."

    goto :goto_0

    :cond_1
    const-string v1, "disabled."

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sput-boolean p1, Lcom/amazon/startactions/plugin/StartActionsController;->isEnabledFromSettings:Z

    .line 1188
    new-instance p1, Lcom/amazon/startactions/metrics/Metric;

    const-string p2, "StartActionsSettings"

    invoke-static {p2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/amazon/startactions/metrics/Metric;-><init>(Ljava/lang/String;)V

    const-string p2, "StartActionsEnabled"

    .line 1189
    invoke-static {p2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    sget-boolean v0, Lcom/amazon/startactions/plugin/StartActionsController;->isEnabledFromSettings:Z

    invoke-virtual {p1, p2, v0}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 1190
    invoke-virtual {p1}, Lcom/amazon/startactions/metrics/Metric;->close()V

    .line 1192
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    sget-boolean v0, Lcom/amazon/startactions/plugin/StartActionsController;->isEnabledFromSettings:Z

    const/4 v1, 0x1

    const-string v2, "StartActions"

    invoke-interface {p1, v2, p2, v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordSetting(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1196
    iget-object p1, p0, Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-static {p1}, Lcom/amazon/startactions/plugin/StartActionsController;->access$1300(Lcom/amazon/startactions/plugin/StartActionsController;)Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    if-nez p1, :cond_4

    .line 1198
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1199
    invoke-static {}, Lcom/amazon/startactions/plugin/StartActionsController;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string p2, "no current book open on settings change, do not log session metrics"

    invoke-static {p1, p2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    .line 1206
    :cond_4
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    .line 1207
    invoke-static {p1}, Lcom/amazon/startactions/metrics/SessionManager;->containsSessionMetric(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1208
    invoke-static {p1}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    const-string p2, "CheckReaderSettingsDisabledFromWidget"

    .line 1209
    invoke-static {p2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    .line 1210
    sget-boolean v0, Lcom/amazon/startactions/plugin/StartActionsController;->isEnabledFromSettings:Z

    if-nez v0, :cond_5

    const-string v0, "StartActionsDisabledFromReaderSettingsWidget"

    .line 1212
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    .line 1211
    invoke-virtual {p1, v0, p2}, Lcom/amazon/startactions/metrics/Metric;->incrementCountIfFlagSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    :cond_5
    invoke-virtual {p1, p2}, Lcom/amazon/startactions/metrics/Metric;->removeFlag(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public bridge synthetic onSettingsChange(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1171
    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;->onSettingsChange(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method
