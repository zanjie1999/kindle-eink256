.class public final Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.api.AuthenticationMethodFactory"


# instance fields
.field private final aZ:Lcom/amazon/identity/auth/device/ds;

.field private final bM:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/amazon/identity/auth/device/api/MAPInit;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/MAPInit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPInit;->initialize()V

    .line 47
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->bM:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->mPackageName:Ljava/lang/String;

    .line 53
    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "sso_platform"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/ds;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->aZ:Lcom/amazon/identity/auth/device/ds;

    return-void
.end method

.method private be()Z
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->aZ:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ds;->dh()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->aZ:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ds;->dg()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/ib;->q(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public newAuthenticationMethod(Lcom/amazon/identity/auth/device/api/AuthenticationType;)Lcom/amazon/identity/auth/device/api/AuthenticationMethod;
    .locals 5
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->be()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 1093
    sget-object v0, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory$1;->fI:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v0, v0, v4

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    .line 1101
    new-instance p1, Lcom/amazon/identity/auth/device/api/DefaultAuthenticationMethod;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->bM:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Lcom/amazon/identity/auth/device/api/DefaultAuthenticationMethod;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p1

    .line 1098
    :cond_1
    new-instance v0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->bM:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/AuthenticationType;)V

    return-object v0

    .line 1107
    :cond_2
    sget-object v0, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory$1;->fI:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v0, v0, v4

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    .line 1116
    new-instance p1, Lcom/amazon/identity/auth/device/api/DefaultAuthenticationMethod;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->bM:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Lcom/amazon/identity/auth/device/api/DefaultAuthenticationMethod;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p1

    .line 1113
    :cond_3
    new-instance v0, Lcom/amazon/identity/auth/device/api/InProcessOauthAuthenticationMethod;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->bM:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/amazon/identity/auth/device/api/InProcessOauthAuthenticationMethod;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/AuthenticationType;)V

    return-object v0

    .line 1111
    :cond_4
    new-instance v0, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->bM:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/AuthenticationType;)V

    return-object v0
.end method

.method public newAuthenticationMethod(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/AuthenticationMethod;
    .locals 4
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 123
    invoke-static {p1}, Lcom/amazon/identity/auth/device/api/AuthenticationType;->parse(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/AuthenticationType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->newAuthenticationMethod(Lcom/amazon/identity/auth/device/api/AuthenticationType;)Lcom/amazon/identity/auth/device/api/AuthenticationMethod;

    move-result-object p1

    return-object p1

    .line 130
    :cond_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->be()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1142
    new-instance v0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->bM:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string v0, "BustedIdentityADPAuthenticator"

    .line 1147
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1149
    new-instance v0, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->bM:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Authentication Type %s is not supported on this build"

    .line 1153
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1154
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->mPackageName:Ljava/lang/String;

    return-void
.end method
