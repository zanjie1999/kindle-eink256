.class public Lcom/amazon/kindle/persistence/KindleBackupAgentHelper;
.super Landroid/app/backup/BackupAgentHelper;
.source "KindleBackupAgentHelper.java"


# static fields
.field private static final LIBRARY_PREFERENCE_NAME:Ljava/lang/String; = "LibrarySettings"

.field private static final PERIODICAL_PREFERENCE_NAME:Ljava/lang/String; = "PeriodicalsAppPreferences"

.field private static final PHL_PREFERENCE_NAME:Ljava/lang/String; = "phl-PopularHighlights"

.field private static final READER_BACKUP_FILENAME:Ljava/lang/String; = "KindleReaderSettings"

.field private static final SDK_BASE_PREFERENCE_NAME:Ljava/lang/String; = "KindleReaderSDK"

.field private static final TAG:Ljava/lang/String;

.field private static additionalPreferenceNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/amazon/kindle/persistence/KindleBackupAgentHelper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/persistence/KindleBackupAgentHelper;->TAG:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/amazon/kindle/persistence/KindleBackupAgentHelper;->additionalPreferenceNames:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method

.method private addAdditionalHelpers()V
    .locals 5

    .line 95
    sget-object v0, Lcom/amazon/kindle/persistence/KindleBackupAgentHelper;->additionalPreferenceNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 96
    new-instance v2, Landroid/app/backup/SharedPreferencesBackupHelper;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-direct {v2, p0, v3}, Landroid/app/backup/SharedPreferencesBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added SharedPreferences for backup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addAppControlledHelpers()V
    .locals 6

    .line 67
    invoke-static {p0}, Lcom/amazon/kcp/application/UserSettingsController;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getFullName()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KindleReaderSDK-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phl-PopularHighlights-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v2, "KindleReaderSDK"

    const-string v1, "phl-PopularHighlights"

    .line 79
    :goto_0
    new-instance v3, Landroid/app/backup/SharedPreferencesBackupHelper;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v2, v4, v0

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    const-string v1, "PeriodicalsAppPreferences"

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-string v1, "LibrarySettings"

    aput-object v1, v4, v0

    invoke-direct {v3, p0, v4}, Landroid/app/backup/SharedPreferencesBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    const-string v0, "KindleReaderSettings"

    .line 81
    invoke-virtual {p0, v0, v3}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    return-void
.end method

.method private addModuleControlledHelpers()V
    .locals 6

    .line 87
    invoke-static {}, Lcom/amazon/kindle/persistence/ModuleSettingsRegistry;->getInstance()Lcom/amazon/kindle/persistence/ModuleSettingsRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/persistence/ModuleSettingsRegistry;->getRestorableSettings()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 88
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Landroid/app/backup/SharedPreferencesBackupHelper;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 89
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/application/AbstractModuleSettingsController;

    invoke-virtual {v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getFullName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-direct {v3, p0, v4}, Landroid/app/backup/SharedPreferencesBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, v2, v3}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private forceReReadFromDisk()V
    .locals 1

    .line 103
    invoke-static {p0}, Lcom/amazon/kcp/application/UserSettingsController;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->readFromDisk()V

    .line 106
    invoke-static {}, Lcom/amazon/kindle/persistence/ModuleSettingsRegistry;->getInstance()Lcom/amazon/kindle/persistence/ModuleSettingsRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/persistence/ModuleSettingsRegistry;->forceDiskRead()V

    return-void
.end method

.method public static registerSharedPreferencesForBackup(Ljava/lang/String;)V
    .locals 1

    .line 42
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/kindle/persistence/KindleBackupAgentHelper;->additionalPreferenceNames:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    sget-object v0, Lcom/amazon/kindle/persistence/KindleBackupAgentHelper;->additionalPreferenceNames:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/amazon/kindle/persistence/KindleBackupAgentHelper;->addModuleControlledHelpers()V

    .line 51
    invoke-direct {p0}, Lcom/amazon/kindle/persistence/KindleBackupAgentHelper;->addAppControlledHelpers()V

    .line 52
    invoke-direct {p0}, Lcom/amazon/kindle/persistence/KindleBackupAgentHelper;->addAdditionalHelpers()V

    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    .line 63
    invoke-direct {p0}, Lcom/amazon/kindle/persistence/KindleBackupAgentHelper;->forceReReadFromDisk()V

    return-void
.end method
