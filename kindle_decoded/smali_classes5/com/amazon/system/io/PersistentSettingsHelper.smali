.class public Lcom/amazon/system/io/PersistentSettingsHelper;
.super Ljava/lang/Object;
.source "PersistentSettingsHelper.java"

# interfaces
.implements Lcom/amazon/system/io/IPersistentSettingsHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/system/io/PersistentSettingsHelper$BinarySettings;
    }
.end annotation


# instance fields
.field private persistentSettingTools:Lcom/amazon/system/io/PersistentSettingTool;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Lcom/amazon/system/io/PersistentSettingTool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/system/io/PersistentSettingTool;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/system/io/PersistentSettingsHelper;->persistentSettingTools:Lcom/amazon/system/io/PersistentSettingTool;

    .line 110
    new-instance v1, Lcom/amazon/system/io/PersistentSettingsHelper$BinarySettings;

    iget-object v0, v0, Lcom/amazon/system/io/PersistentSettingTool;->binary:Lcom/amazon/system/io/PersistentSettingTool$BinarySettings;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/amazon/system/io/PersistentSettingsHelper$BinarySettings;-><init>(Lcom/amazon/system/io/PersistentSettingTool$BinarySettings;Lcom/amazon/system/io/PersistentSettingsHelper$1;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSettingsHelper;->persistentSettingTools:Lcom/amazon/system/io/PersistentSettingTool;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/system/io/PersistentSettingTool;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Z)Z
    .locals 0

    .line 123
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/system/io/PersistentSettingsHelper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public declared-synchronized load(Lcom/amazon/kindle/io/IFileConnectionFactory;)Z
    .locals 3

    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSettingsHelper;->persistentSettingTools:Lcom/amazon/system/io/PersistentSettingTool;

    new-instance v1, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;

    invoke-direct {v1, p1}, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/io/IPathDescriptor;->getPersistentPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "persistentSettingsHelper.par"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/system/io/PersistentSettingTool;->load(Lcom/amazon/kcp/pdb/PDBFactory;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSettingsHelper;->persistentSettingTools:Lcom/amazon/system/io/PersistentSettingTool;

    invoke-virtual {v0, p1}, Lcom/amazon/system/io/PersistentSettingTool;->remove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public removeSettingStartingWith(Ljava/lang/String;)I
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSettingsHelper;->persistentSettingTools:Lcom/amazon/system/io/PersistentSettingTool;

    invoke-virtual {v0, p1}, Lcom/amazon/system/io/PersistentSettingTool;->removeSettingStartingWith(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public declared-synchronized save()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSettingsHelper;->persistentSettingTools:Lcom/amazon/system/io/PersistentSettingTool;

    invoke-virtual {v0}, Lcom/amazon/system/io/PersistentSettingTool;->save()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSettingsHelper;->persistentSettingTools:Lcom/amazon/system/io/PersistentSettingTool;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/system/io/PersistentSettingTool;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;Z)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSettingsHelper;->persistentSettingTools:Lcom/amazon/system/io/PersistentSettingTool;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/amazon/system/io/PersistentSettingTool;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
