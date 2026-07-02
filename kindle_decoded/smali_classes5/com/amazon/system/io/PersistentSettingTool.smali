.class public Lcom/amazon/system/io/PersistentSettingTool;
.super Ljava/lang/Object;
.source "PersistentSettingTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/system/io/PersistentSettingTool$BinarySettings;
    }
.end annotation


# instance fields
.field private _StringSettings:Ljava/util/Hashtable;

.field public binary:Lcom/amazon/system/io/PersistentSettingTool$BinarySettings;

.field private final saveBookViewSettings:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 60
    invoke-direct {p0, v0}, Lcom/amazon/system/io/PersistentSettingTool;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/amazon/system/io/PersistentSettingTool;->_StringSettings:Ljava/util/Hashtable;

    .line 72
    new-instance v0, Lcom/amazon/system/io/PersistentSettingTool$BinarySettings;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/system/io/PersistentSettingTool$BinarySettings;-><init>(Lcom/amazon/system/io/PersistentSettingTool$1;)V

    iput-object v0, p0, Lcom/amazon/system/io/PersistentSettingTool;->binary:Lcom/amazon/system/io/PersistentSettingTool$BinarySettings;

    .line 73
    iput-boolean p1, p0, Lcom/amazon/system/io/PersistentSettingTool;->saveBookViewSettings:Z

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSettingTool;->_StringSettings:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method public declared-synchronized load(Lcom/amazon/kcp/pdb/PDBFactory;Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    .line 237
    :try_start_0
    invoke-static {}, Lcom/amazon/system/io/PersistentSetting;->theOne()Lcom/amazon/system/io/PersistentSetting;

    move-result-object v0

    iget-boolean v1, p0, Lcom/amazon/system/io/PersistentSettingTool;->saveBookViewSettings:Z

    invoke-virtual {v0, p1, p2, v1, p0}, Lcom/amazon/system/io/PersistentSetting;->load(Lcom/amazon/kcp/pdb/PDBFactory;Ljava/lang/String;ZLcom/amazon/system/io/PersistentSettingTool;)Z

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

.method public read(Ljava/io/DataInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSettingTool;->_StringSettings:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 259
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 261
    iget-object v2, p0, Lcom/amazon/system/io/PersistentSettingTool;->_StringSettings:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-void
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSettingTool;->_StringSettings:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public removeSettingStartingWith(Ljava/lang/String;)I
    .locals 4

    .line 206
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSettingTool;->_StringSettings:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 207
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 210
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 212
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 218
    :cond_1
    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p1

    const/4 v0, 0x0

    .line 219
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 220
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/amazon/system/io/PersistentSettingTool;->remove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return v0
.end method

.method public declared-synchronized save()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 246
    :try_start_0
    invoke-static {}, Lcom/amazon/system/io/PersistentSetting;->theOne()Lcom/amazon/system/io/PersistentSetting;

    move-result-object v0

    iget-boolean v1, p0, Lcom/amazon/system/io/PersistentSettingTool;->saveBookViewSettings:Z

    invoke-virtual {v0, v1}, Lcom/amazon/system/io/PersistentSetting;->save(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSettingTool;->_StringSettings:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSettingTool;->_StringSettings:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 275
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 277
    iget-object v2, p0, Lcom/amazon/system/io/PersistentSettingTool;->_StringSettings:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 278
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    return-void
.end method
