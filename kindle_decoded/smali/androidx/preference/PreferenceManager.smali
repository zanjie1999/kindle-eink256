.class public Landroidx/preference/PreferenceManager;
.super Ljava/lang/Object;
.source "PreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/PreferenceManager$OnNavigateToScreenListener;,
        Landroidx/preference/PreferenceManager$OnDisplayPreferenceDialogListener;,
        Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;,
        Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;
    }
.end annotation


# static fields
.field private static final STORAGE_DEFAULT:I = 0x0

.field private static final STORAGE_DEVICE_PROTECTED:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mNextId:J

.field private mNoCommit:Z

.field private mOnDisplayPreferenceDialogListener:Landroidx/preference/PreferenceManager$OnDisplayPreferenceDialogListener;

.field private mOnNavigateToScreenListener:Landroidx/preference/PreferenceManager$OnNavigateToScreenListener;

.field private mOnPreferenceTreeClickListener:Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;

.field private mPreferenceComparisonCallback:Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;

.field private mPreferenceDataStore:Landroidx/preference/PreferenceDataStore;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSharedPreferencesMode:I

.field private mSharedPreferencesName:Ljava/lang/String;

.field private mStorage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 54
    iput-wide v0, p0, Landroidx/preference/PreferenceManager;->mNextId:J

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Landroidx/preference/PreferenceManager;->mStorage:I

    .line 114
    iput-object p1, p0, Landroidx/preference/PreferenceManager;->mContext:Landroid/content/Context;

    .line 116
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    return-void
.end method

.method public static getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 347
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-static {}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesMode()I

    move-result v1

    .line 347
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static getDefaultSharedPreferencesMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_preferences"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;
    .locals 1

    .line 394
    iget-object v0, p0, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 398
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    return-object p1
.end method

.method getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 483
    iget-object v0, p0, Landroidx/preference/PreferenceManager;->mPreferenceDataStore:Landroidx/preference/PreferenceDataStore;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 487
    :cond_0
    iget-boolean v0, p0, Landroidx/preference/PreferenceManager;->mNoCommit:Z

    if-eqz v0, :cond_2

    .line 488
    iget-object v0, p0, Landroidx/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1

    .line 489
    invoke-virtual {p0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 492
    :cond_1
    iget-object v0, p0, Landroidx/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0

    .line 494
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getOnNavigateToScreenListener()Landroidx/preference/PreferenceManager$OnNavigateToScreenListener;
    .locals 1

    .line 584
    iget-object v0, p0, Landroidx/preference/PreferenceManager;->mOnNavigateToScreenListener:Landroidx/preference/PreferenceManager$OnNavigateToScreenListener;

    return-object v0
.end method

.method public getOnPreferenceTreeClickListener()Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;
    .locals 1

    .line 567
    iget-object v0, p0, Landroidx/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;

    return-object v0
.end method

.method public getPreferenceComparisonCallback()Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;
    .locals 1

    .line 528
    iget-object v0, p0, Landroidx/preference/PreferenceManager;->mPreferenceComparisonCallback:Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;

    return-object v0
.end method

.method public getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;
    .locals 1

    .line 304
    iget-object v0, p0, Landroidx/preference/PreferenceManager;->mPreferenceDataStore:Landroidx/preference/PreferenceDataStore;

    return-object v0
.end method

.method public getPreferenceScreen()Landroidx/preference/PreferenceScreen;
    .locals 1

    .line 365
    iget-object v0, p0, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 316
    invoke-virtual {p0}, Landroidx/preference/PreferenceManager;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 320
    :cond_0
    iget-object v0, p0, Landroidx/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    .line 322
    iget v0, p0, Landroidx/preference/PreferenceManager;->mStorage:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 327
    iget-object v0, p0, Landroidx/preference/PreferenceManager;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 324
    :cond_1
    iget-object v0, p0, Landroidx/preference/PreferenceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/content/ContextCompat;->createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 331
    :goto_0
    iget-object v1, p0, Landroidx/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    iget v2, p0, Landroidx/preference/PreferenceManager;->mSharedPreferencesMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 335
    :cond_2
    iget-object v0, p0, Landroidx/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public setOnDisplayPreferenceDialogListener(Landroidx/preference/PreferenceManager$OnDisplayPreferenceDialogListener;)V
    .locals 0

    .line 542
    iput-object p1, p0, Landroidx/preference/PreferenceManager;->mOnDisplayPreferenceDialogListener:Landroidx/preference/PreferenceManager$OnDisplayPreferenceDialogListener;

    return-void
.end method

.method public setOnNavigateToScreenListener(Landroidx/preference/PreferenceManager$OnNavigateToScreenListener;)V
    .locals 0

    .line 577
    iput-object p1, p0, Landroidx/preference/PreferenceManager;->mOnNavigateToScreenListener:Landroidx/preference/PreferenceManager$OnNavigateToScreenListener;

    return-void
.end method

.method public setOnPreferenceTreeClickListener(Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;)V
    .locals 0

    .line 563
    iput-object p1, p0, Landroidx/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;

    return-void
.end method

.method public setSharedPreferencesName(Ljava/lang/String;)V
    .locals 0

    .line 186
    iput-object p1, p0, Landroidx/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 187
    iput-object p1, p0, Landroidx/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method shouldCommit()Z
    .locals 1

    .line 508
    iget-boolean v0, p0, Landroidx/preference/PreferenceManager;->mNoCommit:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public showDialog(Landroidx/preference/Preference;)V
    .locals 1

    .line 551
    iget-object v0, p0, Landroidx/preference/PreferenceManager;->mOnDisplayPreferenceDialogListener:Landroidx/preference/PreferenceManager$OnDisplayPreferenceDialogListener;

    if-eqz v0, :cond_0

    .line 552
    invoke-interface {v0, p1}, Landroidx/preference/PreferenceManager$OnDisplayPreferenceDialogListener;->onDisplayPreferenceDialog(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
