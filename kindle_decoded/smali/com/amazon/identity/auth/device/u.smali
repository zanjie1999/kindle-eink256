.class public Lcom/amazon/identity/auth/device/u;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/dcp/sso/ISubAuthenticator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/u$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final bd:Ljava/lang/String;


# instance fields
.field private final D:Lcom/amazon/identity/auth/device/fz;

.field private final aZ:Lcom/amazon/identity/auth/device/ds;

.field private final be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

.field private final bf:Lcom/amazon/identity/auth/device/ab;

.field private final bg:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

.field private final bh:Lcom/amazon/identity/auth/device/cz;

.field private final bi:Ljava/lang/String;

.field private final bj:Ljava/lang/String;

.field private final bk:Ljava/lang/String;

.field private final bl:Ljava/lang/Long;

.field private final bm:Z

.field private final bn:Lcom/amazon/identity/auth/device/u$a;

.field private final bo:Lcom/amazon/identity/auth/device/u$a;

.field private final bp:Lcom/amazon/identity/auth/device/u$a;

.field private final bq:Lcom/amazon/identity/auth/device/u$a;

.field private final br:Lcom/amazon/identity/auth/device/u$a;

.field private final bs:Lcom/amazon/identity/auth/device/u$a;

.field private final bt:Lcom/amazon/identity/auth/device/u$a;

.field private final bu:Lcom/amazon/identity/auth/device/u$a;

.field private final bv:Lcom/amazon/identity/auth/device/u$a;

.field private final bw:Lcom/amazon/identity/auth/device/u$a;

.field private final bx:Lcom/amazon/identity/auth/device/u$a;

.field private final mPackageName:Ljava/lang/String;

.field private final o:Lcom/amazon/identity/auth/device/ed;

.field private final w:Lcom/amazon/identity/auth/device/gc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.amazon.kindle"

    .line 89
    invoke-static {v0}, Lcom/amazon/identity/auth/device/aj;->ah(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/u;->bd:Ljava/lang/String;

    .line 91
    const-class v0, Lcom/amazon/identity/auth/device/u;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/u;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/u;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v1, "dcp_amazon_account_man"

    .line 130
    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    iput-object v0, p0, Lcom/amazon/identity/auth/device/u;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    .line 132
    iget-object v0, p0, Lcom/amazon/identity/auth/device/u;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/ab;->g(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/u;->bf:Lcom/amazon/identity/auth/device/ab;

    .line 134
    iget-object v0, p0, Lcom/amazon/identity/auth/device/u;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v1, "dcp_data_storage_factory"

    .line 135
    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/gd;

    .line 136
    invoke-interface {v0}, Lcom/amazon/identity/auth/device/gd;->dU()Lcom/amazon/identity/auth/device/gc;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/u;->w:Lcom/amazon/identity/auth/device/gc;

    .line 138
    new-instance v0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/u;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;-><init>(Lcom/amazon/identity/auth/device/ed;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/u;->bg:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    .line 140
    iget-object v0, p0, Lcom/amazon/identity/auth/device/u;->o:Lcom/amazon/identity/auth/device/ed;

    const-string/jumbo v1, "sso_webservice_caller_creator"

    .line 141
    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/cz;

    iput-object v0, p0, Lcom/amazon/identity/auth/device/u;->bh:Lcom/amazon/identity/auth/device/cz;

    .line 143
    iget-object v0, p0, Lcom/amazon/identity/auth/device/u;->o:Lcom/amazon/identity/auth/device/ed;

    const-string/jumbo v1, "sso_platform"

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/ds;

    iput-object v0, p0, Lcom/amazon/identity/auth/device/u;->aZ:Lcom/amazon/identity/auth/device/ds;

    .line 145
    iput-object p3, p0, Lcom/amazon/identity/auth/device/u;->bi:Ljava/lang/String;

    .line 146
    iput-object p4, p0, Lcom/amazon/identity/auth/device/u;->bj:Ljava/lang/String;

    .line 147
    iput-object p2, p0, Lcom/amazon/identity/auth/device/u;->mPackageName:Ljava/lang/String;

    .line 148
    iput-object p5, p0, Lcom/amazon/identity/auth/device/u;->bl:Ljava/lang/Long;

    .line 153
    invoke-static {p1, p3, p2}, Lcom/amazon/identity/auth/device/ib;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/u;->bk:Ljava/lang/String;

    const/4 p1, 0x1

    .line 155
    iput-boolean p1, p0, Lcom/amazon/identity/auth/device/u;->bm:Z

    .line 157
    new-instance p1, Lcom/amazon/identity/auth/device/u$a;

    .line 158
    invoke-static {p2}, Lcom/amazon/identity/auth/device/aj;->ad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lcom/amazon/identity/auth/device/u;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v0, "com.amazon.dcp.sso.token.device.adptoken"

    .line 159
    invoke-static {p5, p3, v0}, Lcom/amazon/identity/auth/device/gs;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-direct {p1, p4, p5}, Lcom/amazon/identity/auth/device/u$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/u;->bn:Lcom/amazon/identity/auth/device/u$a;

    .line 162
    new-instance p1, Lcom/amazon/identity/auth/device/u$a;

    .line 163
    invoke-static {p2}, Lcom/amazon/identity/auth/device/aj;->ae(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lcom/amazon/identity/auth/device/u;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v0, "com.amazon.dcp.sso.token.device.privatekey"

    .line 164
    invoke-static {p5, p3, v0}, Lcom/amazon/identity/auth/device/gs;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-direct {p1, p4, p5}, Lcom/amazon/identity/auth/device/u$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/u;->bo:Lcom/amazon/identity/auth/device/u$a;

    .line 167
    new-instance p1, Lcom/amazon/identity/auth/device/u$a;

    .line 168
    invoke-static {p2}, Lcom/amazon/identity/auth/device/aj;->af(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lcom/amazon/identity/auth/device/u;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v0, "com.amazon.dcp.sso.token.devicedevicetype"

    .line 169
    invoke-static {p5, p3, v0}, Lcom/amazon/identity/auth/device/gs;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-direct {p1, p4, p5}, Lcom/amazon/identity/auth/device/u$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/u;->bp:Lcom/amazon/identity/auth/device/u$a;

    .line 172
    new-instance p1, Lcom/amazon/identity/auth/device/u$a;

    .line 173
    invoke-static {p2}, Lcom/amazon/identity/auth/device/aj;->ag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lcom/amazon/identity/auth/device/u;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v0, "com.amazon.dcp.sso.token.device.deviceserialname"

    .line 174
    invoke-static {p5, p3, v0}, Lcom/amazon/identity/auth/device/gs;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-direct {p1, p4, p5}, Lcom/amazon/identity/auth/device/u$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/u;->bq:Lcom/amazon/identity/auth/device/u$a;

    .line 175
    new-instance p1, Lcom/amazon/identity/auth/device/u$a;

    .line 176
    invoke-static {p2}, Lcom/amazon/identity/auth/device/aj;->ah(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lcom/amazon/identity/auth/device/u;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v0, "com.amazon.dcp.sso.property.deviceemail"

    .line 177
    invoke-static {p5, p3, v0}, Lcom/amazon/identity/auth/device/gs;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-direct {p1, p4, p5}, Lcom/amazon/identity/auth/device/u$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/u;->br:Lcom/amazon/identity/auth/device/u$a;

    .line 180
    new-instance p1, Lcom/amazon/identity/auth/device/u$a;

    .line 181
    invoke-static {p2}, Lcom/amazon/identity/auth/device/aj;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lcom/amazon/identity/auth/device/u;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v0, "com.amazon.identity.cookies.xfsn"

    .line 182
    invoke-static {p5, p3, v0}, Lcom/amazon/identity/auth/device/gs;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-direct {p1, p4, p5}, Lcom/amazon/identity/auth/device/u$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/u;->bs:Lcom/amazon/identity/auth/device/u$a;

    .line 183
    new-instance p1, Lcom/amazon/identity/auth/device/u$a;

    .line 184
    invoke-static {p2}, Lcom/amazon/identity/auth/device/aj;->aj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lcom/amazon/identity/auth/device/u;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v0, "com.amazon.dcp.sso.token.cookie.xmain"

    .line 185
    invoke-static {p5, p3, v0}, Lcom/amazon/identity/auth/device/gs;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-direct {p1, p4, p5}, Lcom/amazon/identity/auth/device/u$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/u;->bt:Lcom/amazon/identity/auth/device/u$a;

    .line 186
    new-instance p1, Lcom/amazon/identity/auth/device/u$a;

    const/4 p4, 0x0

    if-nez p2, :cond_0

    move-object p5, p4

    goto :goto_0

    .line 2179
    :cond_0
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".tokens.device_name"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 187
    :goto_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/u;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v1, "com.amazon.dcp.sso.property.devicename"

    .line 188
    invoke-static {v0, p3, v1}, Lcom/amazon/identity/auth/device/gs;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p5, v0}, Lcom/amazon/identity/auth/device/u$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/u;->bu:Lcom/amazon/identity/auth/device/u$a;

    .line 191
    new-instance p1, Lcom/amazon/identity/auth/device/u$a;

    if-nez p2, :cond_1

    move-object p5, p4

    goto :goto_1

    .line 2189
    :cond_1
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".tokens.user_name"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 192
    :goto_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/u;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v1, "com.amazon.dcp.sso.property.username"

    .line 193
    invoke-static {v0, p3, v1}, Lcom/amazon/identity/auth/device/gs;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p5, v0}, Lcom/amazon/identity/auth/device/u$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/u;->bv:Lcom/amazon/identity/auth/device/u$a;

    .line 197
    new-instance p1, Lcom/amazon/identity/auth/device/u$a;

    if-nez p2, :cond_2

    goto :goto_2

    .line 2199
    :cond_2
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ".tokens.user_firstname"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 198
    :goto_2
    iget-object p5, p0, Lcom/amazon/identity/auth/device/u;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v0, "com.amazon.dcp.sso.property.firstname"

    .line 199
    invoke-static {p5, p3, v0}, Lcom/amazon/identity/auth/device/gs;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-direct {p1, p4, p5}, Lcom/amazon/identity/auth/device/u$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/u;->bw:Lcom/amazon/identity/auth/device/u$a;

    .line 203
    new-instance p1, Lcom/amazon/identity/auth/device/u$a;

    .line 204
    invoke-static {p2}, Lcom/amazon/identity/auth/device/aj;->ak(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lcom/amazon/identity/auth/device/u;->o:Lcom/amazon/identity/auth/device/ed;

    const-string p5, "com.amazon.dcp.sso.token.device.accountpool"

    .line 205
    invoke-static {p4, p3, p5}, Lcom/amazon/identity/auth/device/gs;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/amazon/identity/auth/device/u$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/u;->bx:Lcom/amazon/identity/auth/device/u$a;

    .line 209
    new-instance p1, Lcom/amazon/identity/auth/device/ga;

    iget-object p2, p0, Lcom/amazon/identity/auth/device/u;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {p1, p2}, Lcom/amazon/identity/auth/device/ga;-><init>(Landroid/content/Context;)V

    .line 210
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ga;->fa()Lcom/amazon/identity/auth/device/fz;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/u;->D:Lcom/amazon/identity/auth/device/fz;

    return-void
.end method

.method private K(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ma;
    .locals 5

    .line 993
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/u;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v0, v1}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;-><init>(Lcom/amazon/identity/auth/device/ed;)V

    .line 994
    invoke-virtual {v0}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->hF()V

    .line 995
    iget-object v1, p0, Lcom/amazon/identity/auth/device/u;->bi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ld;->dR(Ljava/lang/String;)Z

    .line 996
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/u;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ld;->dS(Ljava/lang/String;)Z

    .line 999
    iget-object v1, p0, Lcom/amazon/identity/auth/device/u;->bj:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/u;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/ed;->dV()Lcom/amazon/identity/auth/device/co;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/q;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/co;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1001
    invoke-virtual {v0}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->hG()V

    .line 1004
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/u;->L(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1007
    sget-object v1, Lcom/amazon/identity/auth/device/u;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/amazon/identity/auth/device/u;->bi:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "Registering secondary account for device type %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    :cond_1
    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;->SECONDARY:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->a(ZLcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;)V

    .line 1013
    iget-object p1, p0, Lcom/amazon/identity/auth/device/u;->bl:Ljava/lang/Long;

    if-eqz p1, :cond_2

    .line 1015
    new-instance p1, Lcom/amazon/identity/auth/device/lz;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/u;->bl:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/amazon/identity/auth/device/lz;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->a(Lcom/amazon/identity/auth/device/lz;)V

    .line 1018
    :cond_2
    iget-object p1, p0, Lcom/amazon/identity/auth/device/u;->bk:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 1020
    invoke-virtual {v0, p1}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->eg(Ljava/lang/String;)V

    .line 1023
    :cond_3
    invoke-virtual {v0}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->hq()Lcom/amazon/identity/auth/device/ma;

    move-result-object p1

    return-object p1
.end method

.method private L(Ljava/lang/String;)Z
    .locals 2

    .line 1028
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/u;->bm:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/u;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->C(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private M(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1173
    iget-object v0, p0, Lcom/amazon/identity/auth/device/u;->bj:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const/4 v0, 0x1

    .line 1175
    iget-object v1, p0, Lcom/amazon/identity/auth/device/u;->bi:Ljava/lang/String;

    aput-object v1, p1, v0

    const-string v0, "Using custom override DSN %s for registering of device type %s"

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1176
    iget-object p1, p0, Lcom/amazon/identity/auth/device/u;->bj:Ljava/lang/String;

    return-object p1

    .line 1179
    :cond_0
    new-instance v0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/u;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/u;->w:Lcom/amazon/identity/auth/device/gc;

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/gc;)V

    const-string v1, "com.amazon.dcp.sso.token.device.deviceserialname"

    .line 1182
    invoke-virtual {v0, p1, v1}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .line 809
    sget-object v0, Lcom/amazon/identity/auth/device/u;->TAG:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error gettingAuthToken "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.amazon.dcp.sso.dms.ErrorCode"

    .line 812
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "com.amazon.dcp.sso.dms.ErrorMessage"

    .line 813
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/u;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "com.amazon.dcp.sso.dms.ErrorCode"

    .line 4784
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 4789
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/u;->w:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0, p2, p3}, Lcom/amazon/identity/auth/device/gc;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 p1, 0x68

    const-string p2, "Requested token type was not found in authenticator cache."

    .line 4794
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/u;->a(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 4797
    :cond_1
    sget-object v1, Lcom/amazon/identity/auth/device/u;->bd:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 4799
    iget-object p0, p0, Lcom/amazon/identity/auth/device/u;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p0, p2, v0}, Lcom/amazon/identity/auth/device/ax;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    :cond_2
    const-string p0, "authtoken"

    .line 4802
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/u;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    const/16 v0, 0x67

    .line 62
    invoke-direct {p0, v0, p1}, Lcom/amazon/identity/auth/device/u;->a(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;
    .locals 7

    .line 328
    new-instance v6, Lcom/amazon/identity/auth/device/u$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/identity/auth/device/u$1;-><init>(Lcom/amazon/identity/auth/device/u;Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Lcom/amazon/identity/auth/device/ej;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/u;)Lcom/amazon/identity/auth/device/u$a;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/amazon/identity/auth/device/u;->bn:Lcom/amazon/identity/auth/device/u$a;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)Lcom/amazon/identity/auth/device/u;
    .locals 7

    .line 260
    new-instance v6, Lcom/amazon/identity/auth/device/u;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/identity/auth/device/u;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v6
.end method

.method public static a(Landroid/content/Context;Lcom/amazon/identity/auth/device/fv;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/identity/auth/device/fv;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_2

    .line 272
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    invoke-static {p0, p2}, Lcom/amazon/identity/auth/device/p;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 283
    :cond_1
    new-instance v0, Lcom/amazon/identity/auth/device/u;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/u;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 284
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/u;->a(Lcom/amazon/identity/auth/device/fv;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 274
    :cond_2
    :goto_0
    sget-object p0, Lcom/amazon/identity/auth/device/u;->TAG:Ljava/lang/String;

    const-string p1, "The input device type or map is null or empty. Ignoring it."

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;)V
    .locals 2

    .line 841
    :try_start_0
    invoke-static {}, Lcom/amazon/identity/auth/device/p;->w()Landroid/os/Bundle;

    move-result-object v0

    .line 842
    invoke-interface {p1, v0}, Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 846
    sget-object v0, Lcom/amazon/identity/auth/device/u;->TAG:Ljava/lang/String;

    const-string v1, "Error Callback Success"

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Lcom/amazon/identity/auth/device/s;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)V
    .locals 1

    .line 544
    new-instance v0, Lcom/amazon/identity/auth/device/u$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/amazon/identity/auth/device/u$2;-><init>(Lcom/amazon/identity/auth/device/u;Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Ljava/lang/String;)V

    .line 631
    invoke-direct {p0, p3}, Lcom/amazon/identity/auth/device/u;->K(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ma;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 635
    invoke-interface {p2, p3, p1, v0, p4}, Lcom/amazon/identity/auth/device/s;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/auth/device/t;Lcom/amazon/identity/auth/device/ej;)V

    return-void

    .line 639
    :cond_0
    sget-object p1, Lcom/amazon/identity/auth/device/u;->TAG:Ljava/lang/String;

    const-string p2, "Could not construct a valid child application registration request"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/u$a;Ljava/lang/String;)V
    .locals 3

    .line 743
    sget-object v0, Lcom/amazon/identity/auth/device/u;->TAG:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Local storeToken: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 746
    sget-object p1, Lcom/amazon/identity/auth/device/u;->TAG:Ljava/lang/String;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    const-string p2, "Tried to set token %s to null"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 749
    :cond_0
    iget-object v0, p2, Lcom/amazon/identity/auth/device/u$a;->bD:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 751
    invoke-virtual {p1, v0, p3}, Lcom/amazon/identity/auth/device/fv;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    :cond_1
    iget-object p2, p2, Lcom/amazon/identity/auth/device/u$a;->bE:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 755
    invoke-virtual {p1, p2, p3}, Lcom/amazon/identity/auth/device/fv;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private a(Lcom/amazon/identity/auth/device/ky;Lcom/amazon/identity/auth/device/fv;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 715
    iget-object v0, p0, Lcom/amazon/identity/auth/device/u;->bn:Lcom/amazon/identity/auth/device/u$a;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->hN()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Lcom/amazon/identity/auth/device/u;->a(Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/u$a;Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/amazon/identity/auth/device/u;->bo:Lcom/amazon/identity/auth/device/u$a;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Lcom/amazon/identity/auth/device/u;->a(Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/u$a;Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lcom/amazon/identity/auth/device/u;->bs:Lcom/amazon/identity/auth/device/u$a;

    .line 719
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->hR()Ljava/lang/String;

    move-result-object v1

    .line 717
    invoke-direct {p0, p2, v0, v1}, Lcom/amazon/identity/auth/device/u;->a(Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/u$a;Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lcom/amazon/identity/auth/device/u;->bt:Lcom/amazon/identity/auth/device/u$a;

    invoke-direct {p0, p2, v0, p3}, Lcom/amazon/identity/auth/device/u;->a(Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/u$a;Ljava/lang/String;)V

    .line 722
    iget-object p3, p0, Lcom/amazon/identity/auth/device/u;->bp:Lcom/amazon/identity/auth/device/u$a;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/u;->bi:Ljava/lang/String;

    invoke-direct {p0, p2, p3, v0}, Lcom/amazon/identity/auth/device/u;->b(Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/u$a;Ljava/lang/String;)V

    .line 723
    iget-object p3, p0, Lcom/amazon/identity/auth/device/u;->bq:Lcom/amazon/identity/auth/device/u$a;

    invoke-direct {p0, p2, p3, p4}, Lcom/amazon/identity/auth/device/u;->b(Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/u$a;Ljava/lang/String;)V

    .line 724
    iget-object p3, p0, Lcom/amazon/identity/auth/device/u;->br:Lcom/amazon/identity/auth/device/u$a;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->getEmail()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p2, p3, p4}, Lcom/amazon/identity/auth/device/u;->b(Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/u$a;Ljava/lang/String;)V

    .line 725
    iget-object p3, p0, Lcom/amazon/identity/auth/device/u;->bu:Lcom/amazon/identity/auth/device/u$a;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->getDeviceName()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p2, p3, p4}, Lcom/amazon/identity/auth/device/u;->b(Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/u$a;Ljava/lang/String;)V

    .line 726
    iget-object p3, p0, Lcom/amazon/identity/auth/device/u;->bv:Lcom/amazon/identity/auth/device/u$a;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->getUserName()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p2, p3, p4}, Lcom/amazon/identity/auth/device/u;->b(Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/u$a;Ljava/lang/String;)V

    .line 727
    iget-object p3, p0, Lcom/amazon/identity/auth/device/u;->bw:Lcom/amazon/identity/auth/device/u$a;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->hQ()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p2, p3, p4}, Lcom/amazon/identity/auth/device/u;->b(Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/u$a;Ljava/lang/String;)V

    .line 728
    iget-object p3, p0, Lcom/amazon/identity/auth/device/u;->bx:Lcom/amazon/identity/auth/device/u$a;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->ca()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Lcom/amazon/identity/auth/device/u;->b(Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/u$a;Ljava/lang/String;)V

    .line 732
    iget-object p1, p0, Lcom/amazon/identity/auth/device/u;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ed;->dV()Lcom/amazon/identity/auth/device/co;

    move-result-object p1

    iget-object p3, p0, Lcom/amazon/identity/auth/device/u;->bi:Ljava/lang/String;

    iget-object p4, p0, Lcom/amazon/identity/auth/device/u;->mPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/u;->bj:Ljava/lang/String;

    invoke-static {p1, p2, p3, p4, v0}, Lcom/amazon/identity/auth/device/p;->a(Lcom/amazon/identity/auth/device/co;Lcom/amazon/identity/auth/device/fv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/amazon/identity/auth/device/ky;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 700
    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/u;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 701
    new-instance v1, Lcom/amazon/identity/auth/device/fv;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v4, p0, Lcom/amazon/identity/auth/device/u;->bg:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    invoke-direct {v1, p2, v2, v3, v4}, Lcom/amazon/identity/auth/device/fv;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/amazon/identity/auth/device/gc;)V

    .line 706
    invoke-direct {p0, p1, v1, p3, v0}, Lcom/amazon/identity/auth/device/u;->a(Lcom/amazon/identity/auth/device/ky;Lcom/amazon/identity/auth/device/fv;Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    iget-object p1, p0, Lcom/amazon/identity/auth/device/u;->bg:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    invoke-virtual {p1, v1}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->a(Lcom/amazon/identity/auth/device/fv;)V

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/u;Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/u;->a(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;)V

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/u;Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Lcom/amazon/identity/auth/device/ky;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x5

    if-nez p2, :cond_0

    const-string p0, "Could not parse response"

    .line 4824
    invoke-interface {p1, v0, p0}, Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;->onError(ILjava/lang/String;)V

    return-void

    .line 4826
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ky;->hS()Lcom/amazon/identity/auth/device/kx;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4828
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ky;->hS()Lcom/amazon/identity/auth/device/kx;

    move-result-object p2

    const/4 p3, 0x0

    .line 5069
    sget-object v1, Lcom/amazon/identity/auth/device/u$6;->aG:[I

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/kx;->hB()Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 5096
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid Response: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5097
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/kx;->hB()Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->getErrorString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5096
    invoke-interface {p1, v0, p0}, Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 5092
    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized Response "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5093
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/kx;->hB()Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->getErrorString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5092
    invoke-interface {p1, v0, p0}, Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const/16 p2, 0x66

    const-string p3, "Duplicate device name"

    .line 5085
    invoke-direct {p0, p2, p3}, Lcom/amazon/identity/auth/device/u;->a(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p3

    goto :goto_0

    :pswitch_2
    const/16 p2, 0x65

    const-string p3, "Device already registered to another user."

    .line 5079
    invoke-direct {p0, p2, p3}, Lcom/amazon/identity/auth/device/u;->a(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p3

    goto :goto_0

    :pswitch_3
    const/16 p2, 0x64

    const-string p3, "Invalid username or password"

    .line 5073
    invoke-direct {p0, p2, p3}, Lcom/amazon/identity/auth/device/u;->a(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p3

    :goto_0
    if-eqz p3, :cond_1

    .line 5103
    invoke-interface {p1, p3}, Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    :cond_1
    return-void

    .line 5649
    :cond_2
    new-instance v0, Lcom/amazon/identity/auth/device/gb;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ky;->hP()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/gb;-><init>(Ljava/util/List;)V

    .line 5650
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gb;->fb()Ljava/lang/String;

    move-result-object v6

    .line 5662
    invoke-static {}, Lcom/amazon/identity/auth/device/jf;->gR()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5664
    new-instance v0, Lcom/amazon/identity/auth/device/u$3;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/amazon/identity/auth/device/u$3;-><init>(Lcom/amazon/identity/auth/device/u;Lcom/amazon/identity/auth/device/ky;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;)V

    invoke-static {v0}, Lcom/amazon/identity/auth/device/jf;->c(Ljava/lang/Runnable;)V

    return-void

    .line 5681
    :cond_3
    invoke-direct {p0, p2, p3, v6}, Lcom/amazon/identity/auth/device/u;->a(Lcom/amazon/identity/auth/device/ky;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 5685
    sget-object p2, Lcom/amazon/identity/auth/device/u;->TAG:Ljava/lang/String;

    const-string p3, "Callback with success after storing tokens for the child app."

    invoke-static {p2, p3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 5686
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/u;->a(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;)V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/u;Lcom/amazon/identity/auth/device/ky;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/u;->a(Lcom/amazon/identity/auth/device/ky;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 62
    sget-object v0, Lcom/amazon/identity/auth/device/u;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/amazon/identity/auth/device/u;)Lcom/amazon/identity/auth/device/gc;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/amazon/identity/auth/device/u;->w:Lcom/amazon/identity/auth/device/gc;

    return-object p0
.end method

.method private b(Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/u$a;Ljava/lang/String;)V
    .locals 3

    .line 763
    sget-object v0, Lcom/amazon/identity/auth/device/u;->TAG:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Local storeUserData: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 766
    sget-object p1, Lcom/amazon/identity/auth/device/u;->TAG:Ljava/lang/String;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    const-string p2, "Tried to set user data %s to null"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 769
    :cond_0
    iget-object v0, p2, Lcom/amazon/identity/auth/device/u$a;->bD:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 772
    invoke-virtual {p1, v0, p3}, Lcom/amazon/identity/auth/device/fv;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    :cond_1
    iget-object p2, p2, Lcom/amazon/identity/auth/device/u$a;->bE:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 776
    invoke-virtual {p1, p2, p3}, Lcom/amazon/identity/auth/device/fv;->q(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/amazon/identity/auth/device/u;)Lcom/amazon/identity/auth/device/u$a;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/amazon/identity/auth/device/u;->bo:Lcom/amazon/identity/auth/device/u$a;

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Lcom/amazon/identity/auth/device/u;
    .locals 9

    .line 228
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 229
    invoke-static {p0}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->E(Landroid/content/Context;)Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->bm(Ljava/lang/String;)Lcom/amazon/identity/auth/device/du;

    move-result-object v0

    const-string v7, "Could not construct DMSSubAuthenticator for this package ("

    if-eqz v0, :cond_0

    .line 235
    invoke-static {p0, v6}, Lcom/amazon/identity/auth/device/iq;->x(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    .line 239
    :try_start_0
    new-instance v8, Lcom/amazon/identity/auth/device/u;

    .line 241
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/du;->getDeviceType()Ljava/lang/String;

    move-result-object v3

    .line 242
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/du;->dD()Ljava/lang/String;

    move-result-object v4

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/identity/auth/device/u;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/framework/RemoteMAPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    :catch_0
    move-exception p0

    .line 248
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") because we couldn\'t query its MAP info provider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 232
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") because it\'s not properly integrated with MAP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)V
    .locals 5

    .line 370
    iget-object v0, p0, Lcom/amazon/identity/auth/device/u;->bi:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/p;->I(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "RemoteException on callback error for account not existing."

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 372
    sget-object p2, Lcom/amazon/identity/auth/device/u;->TAG:Ljava/lang/String;

    new-array p3, v3, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/u;->bi:Ljava/lang/String;

    aput-object v0, p3, v2

    const-string v0, "An Attempt to register an invalid child device type: %s. This is due to wrong integration with MAP."

    .line 373
    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 372
    invoke-static {p2, p3}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :try_start_0
    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result p2

    const-string p3, "Child Application registration failed due to invalid child device type. This is due to wrong integration with MAP."

    invoke-interface {p1, p2, p3}, Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 382
    :catch_0
    sget-object p1, Lcom/amazon/identity/auth/device/u;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/u;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0, p2}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->D(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 390
    sget-object p2, Lcom/amazon/identity/auth/device/u;->TAG:Ljava/lang/String;

    const-string p3, "An Attempt to register a child device type for a non-existant amazon account. This can happen if the device has been deregistered during this flow."

    invoke-static {p2, p3}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :try_start_1
    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->NO_ACCOUNT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result p2

    const-string p3, "Child Application registration failed due to account not being registered on the device. This can happen if the device has been deregistered during this flow."

    invoke-interface {p1, p2, p3}, Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 401
    :catch_1
    sget-object p1, Lcom/amazon/identity/auth/device/u;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/u;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/u;->w:Lcom/amazon/identity/auth/device/gc;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/u;->bi:Ljava/lang/String;

    invoke-static {v0, v1, p2, v4}, Lcom/amazon/identity/auth/device/p;->a(Landroid/content/Context;Lcom/amazon/identity/auth/device/gc;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 416
    sget-object p2, Lcom/amazon/identity/auth/device/u;->TAG:Ljava/lang/String;

    new-array p3, v3, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/u;->bi:Ljava/lang/String;

    aput-object v0, p3, v2

    const-string v0, "Child Application device type %s is already registered"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/u;->a(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;)V

    return-void

    .line 421
    :cond_2
    new-instance v0, Lcom/amazon/identity/auth/device/ah;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/u;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/ah;-><init>(Landroid/content/Context;)V

    .line 423
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/amazon/identity/auth/device/u;->a(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Lcom/amazon/identity/auth/device/s;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)V

    return-void
.end method

.method public a(Lcom/amazon/identity/auth/device/fv;Ljava/lang/String;Ljava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/fv;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v1, :cond_9

    .line 2457
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v6, "adp_token"

    .line 2463
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    const-string v6, "device_private_key"

    .line 2464
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Ljava/lang/String;

    .line 2466
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v2, "store_authentication_cookie"

    .line 2475
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2476
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2478
    sget-object v6, Lcom/amazon/identity/auth/device/u;->TAG:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "The batch registration did not return store auth cookie for device type: "

    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v6, "user_device_name"

    .line 2481
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2482
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v6, "com.amazon.dcp.sso.property.devicename"

    .line 2484
    invoke-virtual {v0, v6}, Lcom/amazon/identity/auth/device/fv;->bZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2485
    sget-object v7, Lcom/amazon/identity/auth/device/u;->TAG:Ljava/lang/String;

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v6, v9, v4

    aput-object p2, v9, v3

    const-string v11, "Using the device name: %s of central device type for child device type: %s"

    invoke-static {v11, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v7}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    :cond_3
    move-object v9, v6

    const-string v6, "kindle_email_address"

    .line 2491
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2492
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v6, "com.amazon.dcp.sso.property.deviceemail"

    .line 2494
    invoke-virtual {v0, v6}, Lcom/amazon/identity/auth/device/fv;->bZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2495
    sget-object v7, Lcom/amazon/identity/auth/device/u;->TAG:Ljava/lang/String;

    new-array v11, v5, [Ljava/lang/Object;

    aput-object v6, v11, v4

    aput-object p2, v11, v3

    const-string v12, "Using the device email: %s of central device type for child device type: %s"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v7}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    :cond_4
    move-object v13, v6

    const-string/jumbo v6, "name"

    .line 2500
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2501
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v6, "com.amazon.dcp.sso.property.username"

    .line 2503
    invoke-virtual {v0, v6}, Lcom/amazon/identity/auth/device/fv;->bZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2504
    sget-object v7, Lcom/amazon/identity/auth/device/u;->TAG:Ljava/lang/String;

    new-array v11, v5, [Ljava/lang/Object;

    aput-object v6, v11, v4

    aput-object p2, v11, v3

    const-string v12, "Using the username: %s of central device type for child device type: %s"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v7}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    :cond_5
    move-object v11, v6

    const-string v6, "given_name"

    .line 2509
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2510
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v6, "com.amazon.dcp.sso.property.firstname"

    .line 2512
    invoke-virtual {v0, v6}, Lcom/amazon/identity/auth/device/fv;->bZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2513
    sget-object v7, Lcom/amazon/identity/auth/device/u;->TAG:Ljava/lang/String;

    new-array v12, v5, [Ljava/lang/Object;

    aput-object v6, v12, v4

    aput-object p2, v12, v3

    const-string v14, "Using the first name: %s of central device type for child device type: %s"

    invoke-static {v14, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v7}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    :cond_6
    move-object v12, v6

    const-string v6, "account_pool"

    .line 2520
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2521
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v6, "com.amazon.dcp.sso.token.device.accountpool"

    .line 2523
    invoke-virtual {v0, v6}, Lcom/amazon/identity/auth/device/fv;->bZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2524
    sget-object v7, Lcom/amazon/identity/auth/device/u;->TAG:Ljava/lang/String;

    new-array v14, v5, [Ljava/lang/Object;

    aput-object v6, v14, v4

    aput-object p2, v14, v3

    const-string v15, "Using the account pool: %s of central device type for child device type: %s"

    invoke-static {v15, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v7}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 2529
    :cond_7
    new-instance v14, Lcom/amazon/identity/auth/device/ky;

    move-object v7, v14

    invoke-direct/range {v7 .. v13}, Lcom/amazon/identity/auth/device/ky;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2531
    invoke-virtual {v14, v2}, Lcom/amazon/identity/auth/device/ky;->er(Ljava/lang/String;)V

    .line 2532
    invoke-virtual {v14, v6}, Lcom/amazon/identity/auth/device/ky;->j(Ljava/lang/String;)V

    move-object v2, v14

    goto :goto_2

    .line 2468
    :cond_8
    :goto_0
    sget-object v6, Lcom/amazon/identity/auth/device/u;->TAG:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "The pre-populated credential map does not have valid ADP credentials, ignoring it for device type: "

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 2471
    sget-object v6, Lcom/amazon/identity/auth/device/u;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "The pre-populated credential map contains the following  invalid key: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2459
    :cond_9
    :goto_1
    sget-object v6, Lcom/amazon/identity/auth/device/u;->TAG:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "The pre-populated credential map does not have any valid data, ignoring it for device type: "

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-nez v2, :cond_a

    return-void

    .line 438
    :cond_a
    sget-object v6, Lcom/amazon/identity/auth/device/u;->TAG:Ljava/lang/String;

    new-array v7, v5, [Ljava/lang/Object;

    .line 439
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    aput-object p2, v7, v3

    const-string v8, "There are %d pre-populated tokens for child device type: %s"

    .line 438
    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 444
    sget-object v7, Lcom/amazon/identity/auth/device/u;->TAG:Ljava/lang/String;

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v6, v8, v4

    aput-object p2, v8, v3

    const-string v6, "Pre-populating the token: %s for child device type: %s"

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v7}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    const-string v1, "com.amazon.dcp.sso.token.cookie.xmain"

    .line 447
    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/fv;->bY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.amazon.dcp.sso.token.device.deviceserialname"

    .line 448
    invoke-virtual {v0, v3}, Lcom/amazon/identity/auth/device/fv;->bZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p0

    .line 449
    invoke-direct {v4, v2, v0, v1, v3}, Lcom/amazon/identity/auth/device/u;->a(Lcom/amazon/identity/auth/device/ky;Lcom/amazon/identity/auth/device/fv;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 2

    .line 1168
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "asBinder is not supported in DMSSubAuthenticator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)V
    .locals 4

    .line 876
    new-instance v0, Lcom/amazon/identity/auth/device/lj;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/lj;-><init>()V

    .line 877
    iget-object v1, p0, Lcom/amazon/identity/auth/device/u;->bl:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 879
    new-instance v1, Lcom/amazon/identity/auth/device/lz;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/u;->bl:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/identity/auth/device/lz;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/lj;->c(Lcom/amazon/identity/auth/device/lz;)Z

    .line 882
    :cond_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/u;->bk:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 884
    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/lj;->eg(Ljava/lang/String;)V

    .line 887
    :cond_1
    new-instance v1, Lcom/amazon/identity/auth/device/u$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/identity/auth/device/u$4;-><init>(Lcom/amazon/identity/auth/device/u;Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Ljava/lang/String;)V

    .line 956
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/lj;->hq()Lcom/amazon/identity/auth/device/ma;

    move-result-object p1

    .line 958
    new-instance v0, Lcom/amazon/identity/auth/device/lk;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/lk;-><init>()V

    .line 3038
    new-instance v2, Lcom/amazon/identity/auth/device/u$5;

    invoke-direct {v2, p0, p2}, Lcom/amazon/identity/auth/device/u$5;-><init>(Lcom/amazon/identity/auth/device/u;Ljava/lang/String;)V

    .line 3985
    iget-object p2, p0, Lcom/amazon/identity/auth/device/u;->bh:Lcom/amazon/identity/auth/device/cz;

    invoke-virtual {p2, v2, p3}, Lcom/amazon/identity/auth/device/cz;->a(Lcom/amazon/identity/auth/device/br;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/dc;

    move-result-object p2

    .line 3986
    invoke-virtual {p2, p1, v0, v1}, Lcom/amazon/identity/auth/device/dc;->a(Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/kcpsdk/common/WebResponseParser;Lcom/amazon/identity/auth/device/kl;)Lcom/amazon/identity/auth/device/db;

    move-result-object p1

    .line 3988
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/db;->cC()V

    return-void
.end method

.method public getAccountRemovalAllowed(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1112
    sget-object v0, Lcom/amazon/identity/auth/device/u;->TAG:Ljava/lang/String;

    const-string v1, "DMS sub authenticator getAccountRemovalAllowed was called"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    new-instance v5, Landroid/accounts/Account;

    invoke-direct {v5, p3, p2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4142
    iget-object p2, p0, Lcom/amazon/identity/auth/device/u;->aZ:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ds;->dl()Z

    move-result p2

    if-nez p2, :cond_0

    .line 4144
    sget-object p2, Lcom/amazon/identity/auth/device/u;->TAG:Ljava/lang/String;

    invoke-static {p2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    goto :goto_0

    .line 4148
    :cond_0
    sget-object p2, Lcom/amazon/identity/auth/device/u;->TAG:Ljava/lang/String;

    const-string p3, "Generating local account removed broadcast."

    invoke-static {p2, p3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 4149
    iget-object p2, p0, Lcom/amazon/identity/auth/device/u;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p2, v5}, Lcom/amazon/identity/auth/device/hr;->a(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v4

    .line 4152
    iget-object p2, p0, Lcom/amazon/identity/auth/device/u;->D:Lcom/amazon/identity/auth/device/fz;

    iget-object p3, p0, Lcom/amazon/identity/auth/device/u;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {p2, p3, v4}, Lcom/amazon/identity/auth/device/fz;->j(Landroid/content/Context;Ljava/lang/String;)Z

    .line 4153
    sget-object p2, Lcom/amazon/identity/auth/device/u;->TAG:Ljava/lang/String;

    const-string p3, "Cleared local cookies in pre merge devices"

    invoke-static {p2, p3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 4155
    iget-object v2, p0, Lcom/amazon/identity/auth/device/u;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object p2, p0, Lcom/amazon/identity/auth/device/u;->bf:Lcom/amazon/identity/auth/device/ab;

    .line 4156
    invoke-virtual {p2, v4}, Lcom/amazon/identity/auth/device/ab;->Q(Ljava/lang/String;)Z

    move-result v3

    iget-object p2, p0, Lcom/amazon/identity/auth/device/u;->o:Lcom/amazon/identity/auth/device/ed;

    .line 4159
    invoke-virtual {p2}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object p2, p0, Lcom/amazon/identity/auth/device/u;->bf:Lcom/amazon/identity/auth/device/ab;

    iget-object p3, p0, Lcom/amazon/identity/auth/device/u;->o:Lcom/amazon/identity/auth/device/ed;

    .line 4160
    invoke-virtual {p2, p3, v4}, Lcom/amazon/identity/auth/device/ab;->a(Lcom/amazon/identity/auth/device/ed;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    const/4 v8, 0x0

    .line 4155
    invoke-static/range {v2 .. v8}, Lcom/amazon/identity/auth/device/l;->a(Landroid/content/Context;ZLjava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Ljava/util/Set;Landroid/os/Bundle;)V

    .line 1117
    :goto_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const/4 p3, 0x1

    const-string v0, "booleanResult"

    .line 1118
    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1121
    :try_start_0
    invoke-interface {p1, p2}, Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1125
    :catch_0
    sget-object p1, Lcom/amazon/identity/auth/device/u;->TAG:Ljava/lang/String;

    const-string p2, "RemoteException during getAccountRemovalAllowed in DMS sub authenticator"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAuthToken(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;)V
    .locals 1

    const-string p5, "DMSSubAuthenticator:GetAuthToken"

    .line 295
    invoke-static {p5}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object p5

    const-string v0, "com.amazon.account"

    .line 297
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    sget-object p1, Lcom/amazon/identity/auth/device/u;->TAG:Ljava/lang/String;

    const-string p2, "An Attempt to retrieve a token for a non amazon account."

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 303
    :cond_0
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, p3, p2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object p2, p0, Lcom/amazon/identity/auth/device/u;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p2, v0}, Lcom/amazon/identity/auth/device/hr;->a(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p2

    .line 308
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/amazon/identity/auth/device/u;->a(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;

    move-result-object p1

    if-eqz p6, :cond_1

    .line 313
    new-instance p3, Lcom/amazon/identity/auth/device/ai;

    invoke-direct {p3, p6}, Lcom/amazon/identity/auth/device/ai;-><init>(Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;)V

    goto :goto_0

    .line 317
    :cond_1
    new-instance p3, Lcom/amazon/identity/auth/device/ah;

    iget-object p4, p0, Lcom/amazon/identity/auth/device/u;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {p3, p4}, Lcom/amazon/identity/auth/device/ah;-><init>(Landroid/content/Context;)V

    .line 320
    :goto_0
    invoke-direct {p0, p1, p3, p2, p5}, Lcom/amazon/identity/auth/device/u;->a(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Lcom/amazon/identity/auth/device/s;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)V

    return-void
.end method

.method public updateAuthToken(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;)V
    .locals 1

    const-string p5, "DMSSubAuthenticator:UpdateAuthToken"

    .line 858
    invoke-static {p5}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object p5

    .line 860
    sget-object p6, Lcom/amazon/identity/auth/device/u;->TAG:Ljava/lang/String;

    const-string v0, "Updating DMS authentication tokens"

    invoke-static {p6, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    new-instance p6, Landroid/accounts/Account;

    invoke-direct {p6, p3, p2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    iget-object p2, p0, Lcom/amazon/identity/auth/device/u;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p2, p6}, Lcom/amazon/identity/auth/device/hr;->a(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p2

    .line 866
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/amazon/identity/auth/device/u;->a(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;

    move-result-object p1

    .line 868
    invoke-virtual {p0, p1, p2, p5}, Lcom/amazon/identity/auth/device/u;->b(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)V

    return-void
.end method
