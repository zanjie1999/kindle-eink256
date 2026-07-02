.class public abstract Lcom/amazon/identity/auth/device/api/MAPBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final go:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final gp:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    const-class v0, Lcom/amazon/identity/auth/device/api/MAPBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPBroadcastReceiver;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 30
    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPBroadcastReceiver;->go:Ljava/util/Set;

    const-string v1, "com.amazon.dcp.sso.action.account.added"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPBroadcastReceiver;->go:Ljava/util/Set;

    const-string v1, "com.amazon.dcp.sso.action.secondary.account.added"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 37
    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPBroadcastReceiver;->gp:Ljava/util/Set;

    const-string v1, "com.amazon.dcp.sso.action.account.removed"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPBroadcastReceiver;->gp:Ljava/util/Set;

    const-string v1, "com.amazon.dcp.sso.action.secondary.account.removed"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPBroadcastReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructBackwardsCompatibleIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 106
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 108
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 110
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPBroadcastReceiver;->go:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPBroadcastReceiver;->gp:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "com.amazon.dcp.sso.action.AmazonAccountPropertyService.property.changed"

    .line 114
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v2, "new.account.property.changed"

    if-eqz v0, :cond_4

    .line 1158
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object v1

    :cond_2
    const-string p1, "account.property.changed"

    .line 1164
    invoke-virtual {v1, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/accounts/Account;

    .line 1165
    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/hr;->a(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    .line 1168
    new-instance p1, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-direct {p1, p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    .line 1169
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccount()Ljava/lang/String;

    move-result-object p1

    .line 1172
    :cond_3
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v1

    :cond_4
    const-string v0, "com.amazon.dcp.sso.broadcast.CORPFMHasChanged"

    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1179
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    return-object v1

    .line 1185
    :cond_5
    new-instance p1, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-direct {p1, p0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;-><init>(Landroid/content/Context;)V

    .line 1186
    invoke-virtual {p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->n()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    return-object v1

    :cond_7
    :goto_0
    const-string p1, "com.amazon.dcp.sso.extra.account.directed_id"

    .line 1128
    invoke-virtual {v1, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    return-object v1

    .line 1139
    :cond_8
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPBroadcastReceiver;->gp:Ljava/util/Set;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    return-object v0

    :cond_9
    const-string v0, "com.amazon.dcp.sso.extra.account.type"

    .line 1145
    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.amazon.dcp.sso.extra.account.name"

    .line 1147
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1149
    invoke-static {p0, v0, v2}, Lcom/amazon/identity/auth/device/hr;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1151
    invoke-virtual {v1, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v1
.end method


# virtual methods
.method protected abstract backwardsCompatibleOnReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 56
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPBroadcastReceiver$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/identity/auth/device/api/MAPBroadcastReceiver$1;-><init>(Lcom/amazon/identity/auth/device/api/MAPBroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {v0}, Lcom/amazon/identity/auth/device/jf;->c(Ljava/lang/Runnable;)V

    return-void
.end method
