.class public Lcom/amazon/identity/auth/device/ed;
.super Landroid/content/ContextWrapper;
.source "DCP"


# instance fields
.field private final lk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ed;->lk:Ljava/util/Map;

    return-void
.end method

.method public static M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;
    .locals 1

    .line 63
    instance-of v0, p0, Lcom/amazon/identity/auth/device/ed;

    if-eqz v0, :cond_0

    .line 65
    check-cast p0, Lcom/amazon/identity/auth/device/ed;

    return-object p0

    .line 68
    :cond_0
    new-instance v0, Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/ed;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public dU()Lcom/amazon/identity/auth/device/gc;
    .locals 1

    const-string v0, "dcp_data_storage_factory"

    .line 172
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/gd;

    invoke-interface {v0}, Lcom/amazon/identity/auth/device/gd;->dU()Lcom/amazon/identity/auth/device/gc;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized dV()Lcom/amazon/identity/auth/device/co;
    .locals 1

    monitor-enter p0

    .line 177
    :try_start_0
    new-instance v0, Lcom/amazon/identity/auth/device/cq;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/cq;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/amazon/identity/auth/device/cp;->a(Lcom/amazon/identity/auth/device/co;)Lcom/amazon/identity/auth/device/cp;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFilesDir()Ljava/io/File;
    .locals 1

    .line 167
    invoke-super {p0}, Landroid/content/ContextWrapper;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 74
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ed;->lk:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    const-string v0, "dcp_system"

    .line 1092
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1094
    new-instance v0, Lcom/amazon/identity/auth/device/eh;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/eh;-><init>()V

    goto/16 :goto_0

    :cond_1
    const-string v0, "dcp_device_info"

    .line 1096
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1098
    invoke-static {p0}, Lcom/amazon/identity/auth/device/dl;->C(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ea;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    const-string v0, "dcp_account_manager"

    .line 1100
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1102
    invoke-static {p0}, Lcom/amazon/identity/auth/device/hn;->aj(Landroid/content/Context;)Lcom/amazon/identity/auth/device/hn;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    const-string v0, "dcp_single_threaded_executor"

    .line 1104
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "MAP-ServiceWrappingContextThread"

    .line 1106
    invoke-static {v0}, Lcom/amazon/identity/auth/device/jf;->dE(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ip;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    const-string v0, "dcp_amazon_account_man"

    .line 1108
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1110
    new-instance v0, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "dcp_authenticated_url_connection_factory"

    .line 1112
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1114
    new-instance v0, Lcom/amazon/identity/auth/device/dd;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/dd;-><init>()V

    goto/16 :goto_0

    :cond_6
    const-string v0, "dcp_token_cache_holder"

    .line 1116
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1118
    invoke-static {p0}, Lcom/amazon/identity/auth/device/gt;->ae(Landroid/content/Context;)Lcom/amazon/identity/auth/device/gt;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    const-string v0, "dcp_data_storage_factory"

    .line 1120
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1122
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ge;->T(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ge;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v0, "sso_map_account_manager_communicator"

    .line 1124
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1126
    new-instance v0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "dcp_token_mangement"

    .line 1128
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1130
    new-instance v0, Lcom/amazon/identity/auth/device/api/TokenManagement;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/api/TokenManagement;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_a
    const-string/jumbo v0, "sso_local_datastorage"

    .line 1132
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1134
    invoke-static {p0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->Y(Landroid/content/Context;)Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    move-result-object v0

    goto :goto_0

    :cond_b
    const-string/jumbo v0, "sso_alarm_maanger"

    .line 1136
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1138
    new-instance v0, Lcom/amazon/identity/auth/device/cw;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/cw;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_c
    const-string/jumbo v0, "sso_platform"

    .line 1140
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1142
    new-instance v0, Lcom/amazon/identity/auth/device/ds;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/ds;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_d
    const-string/jumbo v0, "sso_webservice_caller_creator"

    .line 1144
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1146
    new-instance v0, Lcom/amazon/identity/auth/device/cz;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/cz;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_e
    const-string v0, "dcp_wifi"

    .line 1148
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1150
    new-instance v0, Lcom/amazon/identity/auth/device/eo;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/eo;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_f
    const-string/jumbo v0, "sso_telephony_service"

    .line 1152
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1154
    new-instance v0, Lcom/amazon/identity/auth/device/ei;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/ei;-><init>(Lcom/amazon/identity/auth/device/ed;)V

    goto :goto_0

    :cond_10
    const-string/jumbo v0, "sso_window_manager"

    .line 1156
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1158
    new-instance v0, Lcom/amazon/identity/auth/device/ep;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/ep;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_11
    const/4 v0, 0x0

    .line 84
    :goto_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ed;->lk:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    return-object v0
.end method
