.class public Lcom/amazon/identity/auth/accounts/RegisterChildApplicationAction;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/accounts/RegisterChildApplicationAction$a;,
        Lcom/amazon/identity/auth/accounts/RegisterChildApplicationAction$NotChildApplicationException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.accounts.RegisterChildApplicationAction"


# instance fields
.field private final cw:Lcom/amazon/identity/auth/device/bm;

.field private final cx:Lcom/amazon/identity/auth/device/bm;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/accounts/RegisterChildApplicationAction;->mContext:Landroid/content/Context;

    .line 77
    new-instance p1, Lcom/amazon/identity/auth/device/bm;

    invoke-direct {p1}, Lcom/amazon/identity/auth/device/bm;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/auth/accounts/RegisterChildApplicationAction;->cw:Lcom/amazon/identity/auth/device/bm;

    .line 78
    new-instance p1, Lcom/amazon/identity/auth/device/bm;

    invoke-direct {p1}, Lcom/amazon/identity/auth/device/bm;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/auth/accounts/RegisterChildApplicationAction;->cx:Lcom/amazon/identity/auth/device/bm;

    return-void
.end method

.method private Y(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ly;
    .locals 11

    .line 161
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/RegisterChildApplicationAction;->mContext:Landroid/content/Context;

    .line 162
    invoke-static {v0}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->E(Landroid/content/Context;)Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->cW()Ljava/util/Collection;

    move-result-object v0

    .line 166
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/identity/auth/device/du;

    .line 170
    :try_start_0
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/du;->getDeviceType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 172
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/du;->dC()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 178
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/framework/RemoteMAPException; {:try_start_0 .. :try_end_0} :catch_1

    cmp-long v9, v5, v7

    if-gez v9, :cond_0

    .line 181
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Lcom/amazon/identity/auth/device/framework/RemoteMAPException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v1

    move-object v1, v4

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v10, v4

    move-object v4, v1

    move-object v1, v10

    goto :goto_1

    :catch_1
    move-exception v4

    .line 189
    :goto_1
    sget-object v5, Lcom/amazon/identity/auth/accounts/RegisterChildApplicationAction;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Couldn\'t determine device type for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v4}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 193
    :cond_3
    new-instance p1, Lcom/amazon/identity/auth/device/ly;

    invoke-direct {p1, v1, v2}, Lcom/amazon/identity/auth/device/ly;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/accounts/RegisterChildApplicationAction$NotChildApplicationException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/RegisterChildApplicationAction;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/amazon/identity/auth/device/p;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/RegisterChildApplicationAction;->cw:Lcom/amazon/identity/auth/device/bm;

    .line 93
    invoke-virtual {v0, p2, p4}, Lcom/amazon/identity/auth/device/bm;->b(Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object p4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p4, :cond_0

    .line 96
    sget-object p1, Lcom/amazon/identity/auth/accounts/RegisterChildApplicationAction;->TAG:Ljava/lang/String;

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p2, p3, v1

    const-string p2, "Register child app request already in flight for device type %s"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 100
    :cond_0
    new-instance v2, Lcom/amazon/identity/auth/accounts/RegisterChildApplicationAction$a;

    invoke-direct {v2, p4}, Lcom/amazon/identity/auth/accounts/RegisterChildApplicationAction$a;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 102
    invoke-static {p3}, Lcom/amazon/identity/auth/device/ht;->H(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3

    const-string/jumbo p4, "override_dsn"

    .line 103
    invoke-virtual {p3, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 105
    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/accounts/RegisterChildApplicationAction;->Y(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ly;

    move-result-object p4

    .line 106
    invoke-virtual {p4}, Lcom/amazon/identity/auth/device/ly;->iy()Ljava/lang/Long;

    move-result-object v3

    .line 107
    invoke-virtual {p4}, Lcom/amazon/identity/auth/device/ly;->iz()Ljava/lang/String;

    move-result-object p4

    .line 108
    sget-object v4, Lcom/amazon/identity/auth/accounts/RegisterChildApplicationAction;->TAG:Ljava/lang/String;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v1

    if-eqz v3, :cond_1

    .line 111
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "None"

    :goto_0
    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object p4, v5, v0

    const-string v0, "Registering child application with device type %s, version %s, and component id %s"

    .line 109
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v4, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/RegisterChildApplicationAction;->mContext:Landroid/content/Context;

    .line 115
    invoke-static {v0, p2, p3, v3, p4}, Lcom/amazon/identity/auth/device/u;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)Lcom/amazon/identity/auth/device/u;

    move-result-object p2

    .line 120
    invoke-virtual {p2, v2, p1, p5}, Lcom/amazon/identity/auth/device/u;->a(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)V

    return-void

    .line 89
    :cond_2
    new-instance p1, Lcom/amazon/identity/auth/accounts/RegisterChildApplicationAction$NotChildApplicationException;

    invoke-direct {p1}, Lcom/amazon/identity/auth/accounts/RegisterChildApplicationAction$NotChildApplicationException;-><init>()V

    throw p1
.end method
