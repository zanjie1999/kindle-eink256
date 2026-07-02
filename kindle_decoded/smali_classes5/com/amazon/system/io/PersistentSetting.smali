.class public Lcom/amazon/system/io/PersistentSetting;
.super Ljava/lang/Object;
.source "PersistentSetting.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile privSingleton:Lcom/amazon/system/io/PersistentSetting;


# instance fields
.field private appSettings:Lcom/amazon/system/io/PersistentSettingTool;

.field private settingsFile:Lcom/amazon/kcp/pdb/ReadWritePDB;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/system/io/PersistentSetting;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/system/io/PersistentSetting;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/amazon/system/io/PersistentSetting;->appSettings:Lcom/amazon/system/io/PersistentSettingTool;

    .line 25
    iput-object v0, p0, Lcom/amazon/system/io/PersistentSetting;->settingsFile:Lcom/amazon/kcp/pdb/ReadWritePDB;

    return-void
.end method

.method public static theOne()Lcom/amazon/system/io/PersistentSetting;
    .locals 1

    .line 39
    sget-object v0, Lcom/amazon/system/io/PersistentSetting;->privSingleton:Lcom/amazon/system/io/PersistentSetting;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/amazon/system/io/PersistentSetting;

    invoke-direct {v0}, Lcom/amazon/system/io/PersistentSetting;-><init>()V

    sput-object v0, Lcom/amazon/system/io/PersistentSetting;->privSingleton:Lcom/amazon/system/io/PersistentSetting;

    .line 42
    :cond_0
    sget-object v0, Lcom/amazon/system/io/PersistentSetting;->privSingleton:Lcom/amazon/system/io/PersistentSetting;

    return-object v0
.end method

.method private warnLoadFailure(Ljava/lang/Exception;)V
    .locals 3

    .line 55
    sget-object v0, Lcom/amazon/system/io/PersistentSetting;->TAG:Ljava/lang/String;

    const-string v1, "PersistentSetting.load: Failed loading parameter file. Is it the first application launch ? "

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 56
    sget-object v0, Lcom/amazon/system/io/PersistentSetting;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PersistentSetting.load:     "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized load(Lcom/amazon/kcp/pdb/PDBFactory;Ljava/lang/String;ZLcom/amazon/system/io/PersistentSettingTool;)Z
    .locals 6

    monitor-enter p0

    const/4 p3, 0x1

    .line 72
    :try_start_0
    iput-object p4, p0, Lcom/amazon/system/io/PersistentSetting;->appSettings:Lcom/amazon/system/io/PersistentSettingTool;

    .line 74
    new-instance p4, Lcom/amazon/kcp/pdb/ReadWritePDB;

    const-string v3, "PARAMETER_PAR"

    const-string v4, "MPAR"

    const/4 v5, 0x0

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/pdb/ReadWritePDB;-><init>(Lcom/amazon/kcp/pdb/PDBFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/pdb/RecordComparator;)V

    iput-object p4, p0, Lcom/amazon/system/io/PersistentSetting;->settingsFile:Lcom/amazon/kcp/pdb/ReadWritePDB;

    .line 75
    invoke-virtual {p4}, Lcom/amazon/kcp/pdb/ReadWritePDB;->getRecordCount()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x2

    const/4 p4, 0x0

    if-le p1, p2, :cond_1

    .line 81
    :try_start_1
    iget-object p1, p0, Lcom/amazon/system/io/PersistentSetting;->appSettings:Lcom/amazon/system/io/PersistentSettingTool;

    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/amazon/system/io/PersistentSetting;->settingsFile:Lcom/amazon/kcp/pdb/ReadWritePDB;

    .line 82
    invoke-virtual {v2, p2}, Lcom/amazon/kcp/pdb/ReadWritePDB;->getRecord(I)[B

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 81
    invoke-virtual {p1, v0}, Lcom/amazon/system/io/PersistentSettingTool;->read(Ljava/io/DataInputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 85
    :try_start_2
    invoke-direct {p0, p1}, Lcom/amazon/system/io/PersistentSetting;->warnLoadFailure(Ljava/lang/Exception;)V

    const/4 p3, 0x0

    .line 88
    :goto_0
    iget-object p1, p0, Lcom/amazon/system/io/PersistentSetting;->settingsFile:Lcom/amazon/kcp/pdb/ReadWritePDB;

    invoke-virtual {p1}, Lcom/amazon/kcp/pdb/ReadWritePDB;->getRecordCount()I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p2, 0x3

    if-le p1, p2, :cond_0

    .line 90
    :try_start_3
    iget-object p1, p0, Lcom/amazon/system/io/PersistentSetting;->appSettings:Lcom/amazon/system/io/PersistentSettingTool;

    iget-object p1, p1, Lcom/amazon/system/io/PersistentSettingTool;->binary:Lcom/amazon/system/io/PersistentSettingTool$BinarySettings;

    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/amazon/system/io/PersistentSetting;->settingsFile:Lcom/amazon/kcp/pdb/ReadWritePDB;

    .line 91
    invoke-virtual {v2, p2}, Lcom/amazon/kcp/pdb/ReadWritePDB;->getRecord(I)[B

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 90
    invoke-virtual {p1, v0}, Lcom/amazon/system/io/PersistentSettingTool$BinarySettings;->read(Ljava/io/DataInputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p1

    .line 93
    :try_start_4
    invoke-direct {p0, p1}, Lcom/amazon/system/io/PersistentSetting;->warnLoadFailure(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_0
    :goto_1
    move p4, p3

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    .line 98
    invoke-direct {p0, p1}, Lcom/amazon/system/io/PersistentSetting;->warnLoadFailure(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 101
    :goto_2
    monitor-exit p0

    return p4

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized save(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 114
    :try_start_0
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 115
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSetting;->settingsFile:Lcom/amazon/kcp/pdb/ReadWritePDB;

    invoke-virtual {v0}, Lcom/amazon/kcp/pdb/ReadWritePDB;->getRecordCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSetting;->settingsFile:Lcom/amazon/kcp/pdb/ReadWritePDB;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/pdb/ReadWritePDB;->modifyRecord([BI)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSetting;->settingsFile:Lcom/amazon/kcp/pdb/ReadWritePDB;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/pdb/ReadWritePDB;->addRecord([B)I

    .line 122
    :goto_0
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 123
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSetting;->settingsFile:Lcom/amazon/kcp/pdb/ReadWritePDB;

    invoke-virtual {v0}, Lcom/amazon/kcp/pdb/ReadWritePDB;->getRecordCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 124
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSetting;->settingsFile:Lcom/amazon/kcp/pdb/ReadWritePDB;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/pdb/ReadWritePDB;->modifyRecord([BI)V

    goto :goto_1

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSetting;->settingsFile:Lcom/amazon/kcp/pdb/ReadWritePDB;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/pdb/ReadWritePDB;->addRecord([B)I

    .line 129
    :goto_1
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 130
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSetting;->appSettings:Lcom/amazon/system/io/PersistentSettingTool;

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v1}, Lcom/amazon/system/io/PersistentSettingTool;->write(Ljava/io/DataOutputStream;)V

    .line 131
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSetting;->settingsFile:Lcom/amazon/kcp/pdb/ReadWritePDB;

    invoke-virtual {v0}, Lcom/amazon/kcp/pdb/ReadWritePDB;->getRecordCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    .line 132
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSetting;->settingsFile:Lcom/amazon/kcp/pdb/ReadWritePDB;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/pdb/ReadWritePDB;->modifyRecord([BI)V

    goto :goto_2

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSetting;->settingsFile:Lcom/amazon/kcp/pdb/ReadWritePDB;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/pdb/ReadWritePDB;->addRecord([B)I

    .line 137
    :goto_2
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 138
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSetting;->appSettings:Lcom/amazon/system/io/PersistentSettingTool;

    iget-object v0, v0, Lcom/amazon/system/io/PersistentSettingTool;->binary:Lcom/amazon/system/io/PersistentSettingTool$BinarySettings;

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v1}, Lcom/amazon/system/io/PersistentSettingTool$BinarySettings;->write(Ljava/io/DataOutputStream;)V

    .line 139
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSetting;->settingsFile:Lcom/amazon/kcp/pdb/ReadWritePDB;

    invoke-virtual {v0}, Lcom/amazon/kcp/pdb/ReadWritePDB;->getRecordCount()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    .line 140
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSetting;->settingsFile:Lcom/amazon/kcp/pdb/ReadWritePDB;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/pdb/ReadWritePDB;->modifyRecord([BI)V

    goto :goto_3

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSetting;->settingsFile:Lcom/amazon/kcp/pdb/ReadWritePDB;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/pdb/ReadWritePDB;->addRecord([B)I

    .line 145
    :goto_3
    iget-object p1, p0, Lcom/amazon/system/io/PersistentSetting;->settingsFile:Lcom/amazon/kcp/pdb/ReadWritePDB;

    invoke-virtual {p1}, Lcom/amazon/kcp/pdb/ReadWritePDB;->save()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
