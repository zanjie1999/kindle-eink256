.class public Lcom/amazon/kedu/ftue/view/DebugOptionsView;
.super Landroid/widget/LinearLayout;
.source "DebugOptionsView.java"


# static fields
.field private static final ACTION_RESET_DISPLAY_COUNT:Ljava/lang/String; = "com.amazon.kcp.debug.action.RESET_TUTORIAL_DISPLAY_COUNT"

.field private static final EXTRA_TUTORIAL_ID:Ljava/lang/String; = "com.amazon.kcp.debug.extra.TUTORIAL_ID"

.field private static final KLO_SHARED_PREFERENCES_KEY:Ljava/lang/String; = "KLOTutorialEventCounts"

.field private static final NOTEBOOK_SHARED_PREFERENCES_KEY:Ljava/lang/String; = "NotebookTutorialEventCounts"

.field private static final TUTORIAL_ID_KLO_PLUGIN_JIT:Ljava/lang/String; = "be628063c33cc37c188e60fbef03c067"

.field private static final TUTORIAL_ID_NOTEBOOK_PLUGIN_JIT:Ljava/lang/String; = "17f3f6a34a8a380e8b02eec1471ec68f"


# instance fields
.field private ageButton:Landroid/widget/Button;

.field private clearRevisionLock:Landroid/widget/Button;

.field private enableButtonFixedFormat:Landroid/widget/Button;

.field private enableButtonReflowable:Landroid/widget/Button;

.field private forceRedownload:Landroid/widget/Button;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private resetButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance p1, Lcom/amazon/kedu/ftue/view/DebugOptionsView$1;

    invoke-direct {p1, p0}, Lcom/amazon/kedu/ftue/view/DebugOptionsView$1;-><init>(Lcom/amazon/kedu/ftue/view/DebugOptionsView;)V

    iput-object p1, p0, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance p1, Lcom/amazon/kedu/ftue/view/DebugOptionsView$1;

    invoke-direct {p1, p0}, Lcom/amazon/kedu/ftue/view/DebugOptionsView$1;-><init>(Lcom/amazon/kedu/ftue/view/DebugOptionsView;)V

    iput-object p1, p0, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance p1, Lcom/amazon/kedu/ftue/view/DebugOptionsView$1;

    invoke-direct {p1, p0}, Lcom/amazon/kedu/ftue/view/DebugOptionsView$1;-><init>(Lcom/amazon/kedu/ftue/view/DebugOptionsView;)V

    iput-object p1, p0, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    new-instance p1, Lcom/amazon/kedu/ftue/view/DebugOptionsView$1;

    invoke-direct {p1, p0}, Lcom/amazon/kedu/ftue/view/DebugOptionsView$1;-><init>(Lcom/amazon/kedu/ftue/view/DebugOptionsView;)V

    iput-object p1, p0, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kedu/ftue/view/DebugOptionsView;)Landroid/widget/Button;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->resetButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kedu/ftue/view/DebugOptionsView;)Landroid/widget/Button;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->ageButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kedu/ftue/view/DebugOptionsView;)Landroid/widget/Button;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->enableButtonFixedFormat:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kedu/ftue/view/DebugOptionsView;)Landroid/widget/Button;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->enableButtonReflowable:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kedu/ftue/view/DebugOptionsView;)Landroid/widget/Button;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->forceRedownload:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kedu/ftue/view/DebugOptionsView;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->forceRedownloadOfAssets()V

    return-void
.end method

.method static synthetic access$600(Lcom/amazon/kedu/ftue/view/DebugOptionsView;)Landroid/widget/Button;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->clearRevisionLock:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/kedu/ftue/view/DebugOptionsView;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->clearRevisionLockOnManifest()V

    return-void
.end method

.method private ageSharedPreferencesEvent(Ljava/lang/String;)V
    .locals 6

    .line 208
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 210
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 211
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 213
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Long;

    if-eqz v2, :cond_0

    .line 215
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/32 v4, -0x240c8400

    add-long/2addr v2, v4

    .line 216
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 217
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v4, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 218
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private clearRevisionLockOnManifest()V
    .locals 1

    .line 250
    invoke-static {}, Lcom/amazon/kedu/ftue/Plugin;->getAssetManager()Lcom/amazon/kedu/ftue/assets/IAssetManager;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;

    .line 251
    invoke-virtual {v0}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->unlockManifestRevision()V

    .line 252
    invoke-direct {p0}, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->refreshEnabledButtonText()V

    return-void
.end method

.method private clearSharedPreferencesEvent(Ljava/lang/String;)V
    .locals 2

    .line 178
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 179
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 180
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 181
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private forceRedownloadOfAssets()V
    .locals 1

    .line 257
    invoke-static {}, Lcom/amazon/kedu/ftue/Plugin;->getAssetManager()Lcom/amazon/kedu/ftue/assets/IAssetManager;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;

    .line 259
    invoke-virtual {v0}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->redownloadAssets()V

    .line 260
    invoke-direct {p0}, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->refreshEnabledButtonText()V

    return-void
.end method

.method private refreshEnabledButtonText()V
    .locals 5

    .line 240
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->getAssetManager()Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->isManifestRevisionLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " (LOCKED)"

    goto :goto_0

    :cond_0
    const-string v1, " (NOT LOCKED)"

    .line 242
    :goto_0
    invoke-virtual {v0}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->getAssetManifest()Lcom/amazon/kedu/ftue/assets/AssetManifest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getVersion()I

    move-result v0

    .line 243
    sget v2, Lcom/amazon/kedu/ftue/R$id;->kedu_ftue_current_revision:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v0, p0, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->enableButtonFixedFormat:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/kedu/ftue/util/Format;->FIXED_FORMAT:Lcom/amazon/kedu/ftue/util/Format;

    invoke-static {v2}, Lcom/amazon/kedu/ftue/config/Settings;->isEnabled(Lcom/amazon/kedu/ftue/util/Format;)Z

    move-result v2

    const-string v3, " Disable FTUE"

    const-string v4, "Enable FTUE"

    if-eqz v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    move-object v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on Fixed Format"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->enableButtonReflowable:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/kedu/ftue/util/Format;->REFLOWABLE:Lcom/amazon/kedu/ftue/util/Format;

    invoke-static {v2}, Lcom/amazon/kedu/ftue/config/Settings;->isEnabled(Lcom/amazon/kedu/ftue/util/Format;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v3, v4

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on Reflowable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private resetTutorialDisplayCount(Ljava/lang/String;)V
    .locals 2

    .line 186
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.amazon.kcp.debug.action.RESET_TUTORIAL_DISPLAY_COUNT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.amazon.kcp.debug.extra.TUTORIAL_ID"

    .line 187
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public ageEvents()V
    .locals 3

    .line 196
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->getDataManager()Lcom/amazon/kedu/ftue/data/SQLiteDataManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/32 v1, -0x240c8400

    .line 199
    invoke-virtual {v0, v1, v2}, Lcom/amazon/kedu/ftue/data/SQLiteDataManager;->incrementLastOccurrenceOfAllEntries(J)V

    :cond_0
    const-string v0, "KLOTutorialEventCounts"

    .line 202
    invoke-direct {p0, v0}, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->ageSharedPreferencesEvent(Ljava/lang/String;)V

    const-string v0, "NotebookTutorialEventCounts"

    .line 203
    invoke-direct {p0, v0}, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->ageSharedPreferencesEvent(Ljava/lang/String;)V

    return-void
.end method

.method getAssetManager()Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;
    .locals 1

    .line 235
    invoke-static {}, Lcom/amazon/kedu/ftue/Plugin;->getAssetManager()Lcom/amazon/kedu/ftue/assets/IAssetManager;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;

    return-object v0
.end method

.method getDataManager()Lcom/amazon/kedu/ftue/data/SQLiteDataManager;
    .locals 2

    .line 269
    new-instance v0, Lcom/amazon/kedu/ftue/data/SQLiteDataManager;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kedu/ftue/data/SQLiteDataManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 125
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 127
    sget v0, Lcom/amazon/kedu/ftue/R$id;->kedu_ftue_reset_counts:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->resetButton:Landroid/widget/Button;

    .line 128
    iget-object v1, p0, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    sget v0, Lcom/amazon/kedu/ftue/R$id;->kedu_ftue_age_events:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->ageButton:Landroid/widget/Button;

    .line 131
    iget-object v1, p0, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    sget v0, Lcom/amazon/kedu/ftue/R$id;->kedu_ftue_fixed_format_toggle_enable:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->enableButtonFixedFormat:Landroid/widget/Button;

    .line 134
    iget-object v1, p0, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    sget v0, Lcom/amazon/kedu/ftue/R$id;->kedu_ftue_reflowable_toggle_enable:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->enableButtonReflowable:Landroid/widget/Button;

    .line 136
    iget-object v1, p0, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    sget v0, Lcom/amazon/kedu/ftue/R$id;->kedu_ftue_force_redownload:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->forceRedownload:Landroid/widget/Button;

    .line 139
    iget-object v1, p0, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    sget v0, Lcom/amazon/kedu/ftue/R$id;->kedu_ftue_clear_revision_lock:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->clearRevisionLock:Landroid/widget/Button;

    .line 141
    iget-object v1, p0, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-direct {p0}, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->refreshEnabledButtonText()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->refreshEnabledButtonText()V

    return-void
.end method

.method public resetEventCounts()V
    .locals 1

    .line 157
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->getDataManager()Lcom/amazon/kedu/ftue/data/SQLiteDataManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Lcom/amazon/kedu/ftue/data/SQLiteDataManager;->clearAllEntries()V

    :cond_0
    const-string v0, "KLOTutorialEventCounts"

    .line 163
    invoke-direct {p0, v0}, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->clearSharedPreferencesEvent(Ljava/lang/String;)V

    const-string v0, "NotebookTutorialEventCounts"

    .line 164
    invoke-direct {p0, v0}, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->clearSharedPreferencesEvent(Ljava/lang/String;)V

    const-string v0, "be628063c33cc37c188e60fbef03c067"

    .line 166
    invoke-direct {p0, v0}, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->resetTutorialDisplayCount(Ljava/lang/String;)V

    const-string v0, "17f3f6a34a8a380e8b02eec1471ec68f"

    .line 167
    invoke-direct {p0, v0}, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->resetTutorialDisplayCount(Ljava/lang/String;)V

    return-void
.end method

.method toggleEnable(Lcom/amazon/kedu/ftue/util/Format;)V
    .locals 1

    .line 229
    invoke-static {p1}, Lcom/amazon/kedu/ftue/config/Settings;->isEnabled(Lcom/amazon/kedu/ftue/util/Format;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/kedu/ftue/config/Settings;->setEnabled(Lcom/amazon/kedu/ftue/util/Format;Z)V

    .line 230
    invoke-direct {p0}, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->refreshEnabledButtonText()V

    return-void
.end method
