.class public Lcom/amazon/identity/auth/device/bu;
.super Lcom/amazon/identity/auth/device/br;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.bu"


# instance fields
.field private bM:Ljava/lang/String;

.field private final be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

.field private hC:Lcom/amazon/identity/auth/device/a;

.field private final hD:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

.field private hE:Ljava/lang/String;

.field private hF:Ljava/lang/String;

.field private hG:Ljava/lang/String;

.field private hH:Ljava/lang/String;

.field private final o:Lcom/amazon/identity/auth/device/ed;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/br;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/amazon/identity/auth/device/bu;->o:Lcom/amazon/identity/auth/device/ed;

    .line 39
    iput-object v0, p0, Lcom/amazon/identity/auth/device/bu;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    .line 40
    iput-object v0, p0, Lcom/amazon/identity/auth/device/bu;->hD:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    .line 41
    iput-object v0, p0, Lcom/amazon/identity/auth/device/bu;->hH:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/br;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/bu;->o:Lcom/amazon/identity/auth/device/ed;

    .line 58
    iput-object p3, p0, Lcom/amazon/identity/auth/device/bu;->hH:Ljava/lang/String;

    const-string p3, "dcp_amazon_account_man"

    .line 60
    invoke-virtual {p1, p3}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/bu;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    .line 61
    new-instance p1, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    iget-object p3, p0, Lcom/amazon/identity/auth/device/bu;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {p1, p3}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;-><init>(Lcom/amazon/identity/auth/device/ed;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/bu;->hD:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    .line 63
    iput-object p2, p0, Lcom/amazon/identity/auth/device/bu;->bM:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/bu;->bw()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/bu;->hE:Ljava/lang/String;

    const-string p1, "com.amazon.dcp.sso.token.device.adptoken"

    .line 1172
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/bu;->aO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 66
    iput-object p1, p0, Lcom/amazon/identity/auth/device/bu;->hF:Ljava/lang/String;

    const-string p1, "com.amazon.dcp.sso.token.device.privatekey"

    .line 1177
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/bu;->aO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 67
    iput-object p1, p0, Lcom/amazon/identity/auth/device/bu;->hG:Ljava/lang/String;

    return-void
.end method

.method private aN(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 142
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/bu;->getAccountDirectedId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 145
    sget-object p1, Lcom/amazon/identity/auth/device/bu;->TAG:Ljava/lang/String;

    const-string v0, "Failed to locate an amazon account to retrieve amazon credentials from."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/bu;->hH:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/amazon/identity/auth/device/bu;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/bu;->hH:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/amazon/identity/auth/device/gs;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/amazon/identity/auth/device/bu;->hD:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    invoke-virtual {v1, v0, p1}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private aO(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 182
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/bu;->getAccountDirectedId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 185
    sget-object p1, Lcom/amazon/identity/auth/device/bu;->TAG:Ljava/lang/String;

    const-string v0, "Failed to locate an amazon account to retrieve amazon credentials from."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/bu;->hD:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    invoke-virtual {v1, v0, p1}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/bu;
    .locals 1

    .line 81
    new-instance v0, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;-><init>(Landroid/content/Context;)V

    .line 82
    invoke-virtual {v0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->m()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 87
    :cond_0
    new-instance v0, Lcom/amazon/identity/auth/device/bu;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/identity/auth/device/bu;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getAccountDirectedId()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bu;->bM:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bu;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/bu;->bM:Ljava/lang/String;

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bu;->bM:Ljava/lang/String;

    return-object v0
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/bu;
    .locals 1

    .line 92
    new-instance v0, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_1

    .line 93
    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->D(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    new-instance v0, Lcom/amazon/identity/auth/device/bu;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/identity/auth/device/bu;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 95
    :cond_1
    :goto_0
    sget-object p0, Lcom/amazon/identity/auth/device/bu;->TAG:Ljava/lang/String;

    const-string p1, "Error, the account given does not exist. Cannot construct account credentials"

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected bw()Ljava/lang/String;
    .locals 3

    .line 160
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/bu;->getAccountDirectedId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 163
    sget-object v0, Lcom/amazon/identity/auth/device/bu;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/bu;->hD:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    const-string v2, "com.amazon.dcp.sso.property.account.UUID"

    invoke-virtual {v1, v0, v2}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Lcom/amazon/identity/auth/device/a;
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bu;->hC:Lcom/amazon/identity/auth/device/a;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/amazon/identity/auth/device/a;

    const-string v1, "com.amazon.dcp.sso.token.device.adptoken"

    invoke-direct {p0, v1}, Lcom/amazon/identity/auth/device/bu;->aN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.amazon.dcp.sso.token.device.privatekey"

    .line 108
    invoke-direct {p0, v2}, Lcom/amazon/identity/auth/device/bu;->aN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/bu;->hC:Lcom/amazon/identity/auth/device/a;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bu;->hC:Lcom/amazon/identity/auth/device/a;

    return-object v0
.end method

.method public y()Z
    .locals 3

    .line 116
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/bu;->bw()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/bu;->hE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bu;->hF:Ljava/lang/String;

    const-string v2, "com.amazon.dcp.sso.token.device.adptoken"

    .line 2172
    invoke-direct {p0, v2}, Lcom/amazon/identity/auth/device/bu;->aO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bu;->hG:Ljava/lang/String;

    const-string v2, "com.amazon.dcp.sso.token.device.privatekey"

    .line 2177
    invoke-direct {p0, v2}, Lcom/amazon/identity/auth/device/bu;->aO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method
