.class public Lcom/amazon/identity/auth/device/k;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.k"

.field private static final aK:[Ljava/lang/Object;


# instance fields
.field private final aL:Lcom/amazon/identity/auth/device/gm;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 22
    sput-object v0, Lcom/amazon/identity/auth/device/k;->aK:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/k;->mContext:Landroid/content/Context;

    const-string v0, "account_removed_flag_store"

    .line 31
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/gm;->l(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/identity/auth/device/gm;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/k;->aL:Lcom/amazon/identity/auth/device/gm;

    return-void
.end method


# virtual methods
.method public a(Landroid/accounts/Account;)Z
    .locals 4

    .line 36
    sget-object v0, Lcom/amazon/identity/auth/device/k;->aK:[Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "com.amazon.account"

    .line 1081
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    iget-object v1, p0, Lcom/amazon/identity/auth/device/k;->aL:Lcom/amazon/identity/auth/device/gm;

    .line 2076
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Account_To_Remove_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 41
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v2}, Lcom/amazon/identity/auth/device/gm;->a(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 46
    sget-object p1, Lcom/amazon/identity/auth/device/k;->TAG:Ljava/lang/String;

    const-string v1, "Could not write account removed flag to disk"

    invoke-static {p1, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 47
    monitor-exit v0

    return p1

    :cond_0
    const/4 p1, 0x1

    .line 49
    monitor-exit v0

    return p1

    .line 1083
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not valid for accounts of type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p1

    .line 50
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
