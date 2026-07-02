.class Lcom/amazon/identity/auth/device/gt$a;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/gt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final cf:Landroid/accounts/Account;

.field private final mContext:Landroid/content/Context;

.field private final ns:Lcom/amazon/identity/auth/device/hn;

.field private final nv:Lcom/amazon/identity/auth/device/hb;

.field private final oU:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/hn;Landroid/accounts/Account;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/identity/auth/device/gt$a;->mContext:Landroid/content/Context;

    .line 37
    iput-object p3, p0, Lcom/amazon/identity/auth/device/gt$a;->cf:Landroid/accounts/Account;

    .line 39
    new-instance p1, Lcom/amazon/identity/auth/device/hb;

    iget-object p3, p0, Lcom/amazon/identity/auth/device/gt$a;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/gt$a;->cf:Landroid/accounts/Account;

    invoke-direct {p1, p3, v0}, Lcom/amazon/identity/auth/device/hb;-><init>(Landroid/content/Context;Landroid/accounts/Account;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/gt$a;->nv:Lcom/amazon/identity/auth/device/hb;

    .line 41
    iput-object p2, p0, Lcom/amazon/identity/auth/device/gt$a;->ns:Lcom/amazon/identity/auth/device/hn;

    .line 42
    iget-object p1, p0, Lcom/amazon/identity/auth/device/gt$a;->cf:Landroid/accounts/Account;

    const-string p3, "com.amazon.dcp.sso.property.account.UUID"

    invoke-virtual {p2, p1, p3}, Lcom/amazon/identity/auth/device/hn;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/gt$a;->oU:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fO()Lcom/amazon/identity/auth/device/hb;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gt$a;->nv:Lcom/amazon/identity/auth/device/hb;

    return-object v0
.end method

.method public isValid()Z
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gt$a;->ns:Lcom/amazon/identity/auth/device/hn;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/gt$a;->cf:Landroid/accounts/Account;

    const-string v2, "com.amazon.dcp.sso.property.account.UUID"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/auth/device/hn;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/gt$a;->oU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
