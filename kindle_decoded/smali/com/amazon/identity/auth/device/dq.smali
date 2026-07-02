.class public final Lcom/amazon/identity/auth/device/dq;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.dq"


# instance fields
.field private final aZ:Lcom/amazon/identity/auth/device/ds;

.field private final o:Lcom/amazon/identity/auth/device/ed;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/dq;->o:Lcom/amazon/identity/auth/device/ed;

    .line 56
    new-instance v0, Lcom/amazon/identity/auth/device/ds;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/ds;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/dq;->aZ:Lcom/amazon/identity/auth/device/ds;

    return-void
.end method

.method public static G(Landroid/content/Context;)I
    .locals 2

    .line 197
    new-instance v0, Lcom/amazon/identity/auth/device/gm;

    const-string v1, "SSOInfo.config"

    invoke-direct {v0, p0, v1}, Lcom/amazon/identity/auth/device/gm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/gm;->getIntValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static a(Landroid/content/Context;I)V
    .locals 2

    .line 205
    invoke-static {}, Lcom/amazon/identity/auth/device/mw;->iS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/identity/auth/device/jh;->gT()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    :cond_0
    new-instance v0, Lcom/amazon/identity/auth/device/gm;

    const-string v1, "SSOInfo.config"

    invoke-direct {v0, p0, v1}, Lcom/amazon/identity/auth/device/gm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0, v1, p1}, Lcom/amazon/identity/auth/device/gm;->e(Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/Class;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .line 116
    sget-object v0, Lcom/amazon/identity/auth/device/dq;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    const-string v2, "Disabling "

    goto :goto_0

    :cond_0
    const-string v2, "Enabling "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dq;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 122
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/dq;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v2, v3, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    invoke-virtual {v1, v2, p2, v0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-array p2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 129
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "Component Class %s not found in manifest"

    .line 127
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public db()V
    .locals 3

    .line 135
    invoke-static {}, Lcom/amazon/identity/auth/device/jh;->gT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Lcom/amazon/identity/auth/device/dq;->TAG:Ljava/lang/String;

    const-string v1, "Not migrating because we are running unit tests"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 141
    :cond_0
    invoke-static {}, Lcom/amazon/identity/auth/device/jf;->gR()Z

    move-result v0

    if-nez v0, :cond_6

    .line 151
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dq;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v1, "dcp_data_storage_factory"

    .line 152
    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/gd;

    .line 154
    sget-object v1, Lcom/amazon/identity/auth/device/dq;->TAG:Ljava/lang/String;

    const-string v2, "Get DataStorage instance for initialization"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-interface {v0}, Lcom/amazon/identity/auth/device/gd;->dU()Lcom/amazon/identity/auth/device/gc;

    move-result-object v0

    .line 157
    sget-object v1, Lcom/amazon/identity/auth/device/dq;->TAG:Ljava/lang/String;

    const-string v2, "Initialize DataStorage instance"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gc;->initialize()V

    .line 160
    sget-object v1, Lcom/amazon/identity/auth/device/dq;->TAG:Ljava/lang/String;

    const-string v2, "Setup DataStorage instance"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gc;->setup()V

    .line 1253
    new-instance v0, Lcom/amazon/identity/auth/device/storage/LocalDBUpdatedBroadcastReceiver;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/storage/LocalDBUpdatedBroadcastReceiver;-><init>()V

    .line 1254
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.amazon.dcp.sso.action.cache.update.required"

    .line 1255
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1256
    iget-object v2, p0, Lcom/amazon/identity/auth/device/dq;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dq;->o:Lcom/amazon/identity/auth/device/ed;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/dq;->a(Landroid/content/Context;I)V

    .line 174
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dq;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->switchAppToSSOModeIfNecessary(Landroid/content/Context;)V

    .line 178
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dq;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/ab;->g(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ab;->N()V

    .line 180
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dq;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/be;->k(Landroid/content/Context;)V

    .line 2069
    sget-object v0, Lcom/amazon/identity/auth/device/dq;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 2070
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dq;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/storage/LambortishClock$ChangeTimestampsBroadcastReceiver;->d(Lcom/amazon/identity/auth/device/ed;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2072
    const-class v0, Lcom/amazon/identity/auth/device/storage/LambortishClock$ChangeTimestampsBroadcastReceiver;

    invoke-direct {p0, v0, v1}, Lcom/amazon/identity/auth/device/dq;->a(Ljava/lang/Class;I)V

    .line 2075
    :cond_1
    sget-object v0, Lcom/amazon/identity/auth/device/dq;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 2080
    sget-object v0, Lcom/amazon/identity/auth/device/dq;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 2081
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dq;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/storage/DirtyDataSyncingService;->d(Lcom/amazon/identity/auth/device/ed;)Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_2

    .line 2083
    const-class v0, Lcom/amazon/identity/auth/device/storage/DirtyDataSyncingService;

    invoke-direct {p0, v0, v2}, Lcom/amazon/identity/auth/device/dq;->a(Ljava/lang/Class;I)V

    .line 2085
    :cond_2
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dq;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner$DatabaseCleaningService;->d(Lcom/amazon/identity/auth/device/ed;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2087
    const-class v0, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner$DatabaseCleaningService;

    invoke-direct {p0, v0, v2}, Lcom/amazon/identity/auth/device/dq;->a(Ljava/lang/Class;I)V

    .line 2089
    :cond_3
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dq;->aZ:Lcom/amazon/identity/auth/device/ds;

    invoke-static {v0}, Lcom/amazon/identity/auth/accounts/SessionUserChangedToAccountForPackageChangedAdpater;->a(Lcom/amazon/identity/auth/device/ds;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2091
    const-class v0, Lcom/amazon/identity/auth/accounts/SessionUserChangedToAccountForPackageChangedAdpater;

    invoke-direct {p0, v0, v2}, Lcom/amazon/identity/auth/device/dq;->a(Ljava/lang/Class;I)V

    .line 2094
    :cond_4
    sget-object v0, Lcom/amazon/identity/auth/device/dq;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 2099
    sget-object v0, Lcom/amazon/identity/auth/device/dq;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 2100
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dq;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/bootstrapSSO/BootstrapSSOService;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2106
    const-class v0, Lcom/amazon/identity/auth/device/bootstrapSSO/BootstrapSSOService;

    invoke-direct {p0, v0, v1}, Lcom/amazon/identity/auth/device/dq;->a(Ljava/lang/Class;I)V

    .line 2108
    :cond_5
    sget-object v0, Lcom/amazon/identity/auth/device/dq;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dq;->o:Lcom/amazon/identity/auth/device/ed;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/dq;->a(Landroid/content/Context;I)V

    .line 189
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dq;->o:Lcom/amazon/identity/auth/device/ed;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/dq;->a(Landroid/content/Context;I)V

    .line 191
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dq;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper;->ah(Landroid/content/Context;)Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper;

    .line 192
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dq;->o:Lcom/amazon/identity/auth/device/ed;

    .line 2215
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ed;->dU()Lcom/amazon/identity/auth/device/gc;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/dq;->e(Lcom/amazon/identity/auth/device/gc;)V

    return-void

    .line 143
    :cond_6
    sget-object v0, Lcom/amazon/identity/auth/device/dq;->TAG:Ljava/lang/String;

    const-string v1, "Cannot do MAP init tasks on the main thread!"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method e(Lcom/amazon/identity/auth/device/gc;)V
    .locals 7

    const-string v0, "authDomain"

    .line 224
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/dq;->TAG:Ljava/lang/String;

    const-string v2, "Start update legacy authportal domain in database if needed"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    instance-of v1, p1, Lcom/amazon/identity/auth/device/gg;

    if-eqz v1, :cond_2

    .line 228
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/gc;->getAccounts()Ljava/util/Set;

    move-result-object v1

    .line 229
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 231
    sget-object v3, Lcom/amazon/identity/auth/device/dq;->TAG:Ljava/lang/String;

    const-string v4, "Fix database for account: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p1, v2, v0}, Lcom/amazon/identity/auth/device/gc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 233
    invoke-static {v3}, Lcom/amazon/identity/auth/device/ho;->cZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 234
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 237
    sget-object v3, Lcom/amazon/identity/auth/device/dq;->TAG:Ljava/lang/String;

    const-string v5, "Fix legacy corrupted db for account: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p1, v2, v0, v4}, Lcom/amazon/identity/auth/device/gc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DetectFixLegacyAuthPortalLWADomain"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 239
    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :cond_1
    sget-object p1, Lcom/amazon/identity/auth/device/dq;->TAG:Ljava/lang/String;

    const-string v0, "Legacy authportal domain in database is up to database"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 247
    sget-object v0, Lcom/amazon/identity/auth/device/dq;->TAG:Ljava/lang/String;

    const-string v1, "Cannot fix legacy authportal domain in database"

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
