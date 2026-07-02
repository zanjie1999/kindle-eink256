.class public Lcom/amazon/sitb/android/impl/SharedPreferencesStorage;
.super Ljava/lang/Object;
.source "SharedPreferencesStorage.java"

# interfaces
.implements Lcom/amazon/sitb/android/IPersistentStorage;


# static fields
.field private static final EDITOR_LOCK:Ljava/lang/Object;

.field private static final PREFS_FILE_NAME:Ljava/lang/String; = "sitb-prefs"

.field private static editor:Landroid/content/SharedPreferences$Editor;

.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/impl/SharedPreferencesStorage;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/impl/SharedPreferencesStorage;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazon/sitb/android/impl/SharedPreferencesStorage;->EDITOR_LOCK:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 21
    sput-object v0, Lcom/amazon/sitb/android/impl/SharedPreferencesStorage;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/sitb/android/impl/SharedPreferencesStorage;->context:Landroid/content/Context;

    return-void
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string/jumbo v0, "sitb-prefs"

    const/4 v1, 0x0

    .line 80
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static getSharedPreferencesEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .locals 2

    .line 85
    sget-object v0, Lcom/amazon/sitb/android/impl/SharedPreferencesStorage;->EDITOR_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_0
    sget-object v1, Lcom/amazon/sitb/android/impl/SharedPreferencesStorage;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez v1, :cond_0

    .line 89
    invoke-static {p0}, Lcom/amazon/sitb/android/impl/SharedPreferencesStorage;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sput-object p0, Lcom/amazon/sitb/android/impl/SharedPreferencesStorage;->editor:Landroid/content/SharedPreferences$Editor;

    .line 92
    :cond_0
    sget-object p0, Lcom/amazon/sitb/android/impl/SharedPreferencesStorage;->editor:Landroid/content/SharedPreferences$Editor;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 93
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/sitb/android/impl/SharedPreferencesStorage;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/sitb/android/impl/SharedPreferencesStorage;->getSharedPreferencesEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/amazon/sitb/android/impl/SharedPreferencesStorage;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/sitb/android/impl/SharedPreferencesStorage;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/sitb/android/impl/SharedPreferencesStorage;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/sitb/android/impl/SharedPreferencesStorage;->getSharedPreferencesEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/sitb/android/impl/SharedPreferencesStorage;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/sitb/android/impl/SharedPreferencesStorage;->getSharedPreferencesEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
