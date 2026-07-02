.class Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin$1;
.super Ljava/lang/Object;
.source "WordWisePlugin.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->registerProvidersAndListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field backupManager:Landroid/app/backup/BackupManager;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;)V
    .locals 1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    new-instance p1, Landroid/app/backup/BackupManager;

    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin$1;->backupManager:Landroid/app/backup/BackupManager;

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 192
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin$1;->backupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {p1}, Landroid/app/backup/BackupManager;->dataChanged()V

    return-void
.end method
