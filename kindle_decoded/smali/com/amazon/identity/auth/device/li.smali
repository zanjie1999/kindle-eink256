.class public Lcom/amazon/identity/auth/device/li;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/kj;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.li"


# instance fields
.field private tT:Lcom/amazon/identity/auth/device/kl;

.field private tU:Lcom/amazon/identity/auth/device/lt;

.field private tV:Lcom/amazon/identity/auth/device/jy;

.field private tW:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/lt;Lcom/amazon/identity/auth/device/kl;Z)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 28
    iput-object p2, p0, Lcom/amazon/identity/auth/device/li;->tT:Lcom/amazon/identity/auth/device/kl;

    goto :goto_0

    .line 32
    :cond_0
    new-instance p2, Lcom/amazon/identity/auth/device/ke;

    invoke-direct {p2}, Lcom/amazon/identity/auth/device/ke;-><init>()V

    iput-object p2, p0, Lcom/amazon/identity/auth/device/li;->tT:Lcom/amazon/identity/auth/device/kl;

    .line 35
    :goto_0
    iput-object p1, p0, Lcom/amazon/identity/auth/device/li;->tU:Lcom/amazon/identity/auth/device/lt;

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/li;->tW:Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    .line 40
    new-instance p1, Lcom/amazon/identity/auth/device/jy;

    iget-object p2, p0, Lcom/amazon/identity/auth/device/li;->tU:Lcom/amazon/identity/auth/device/lt;

    invoke-direct {p1, p2}, Lcom/amazon/identity/auth/device/jy;-><init>(Lcom/amazon/identity/auth/device/lt;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/li;->tV:Lcom/amazon/identity/auth/device/jy;

    .line 41
    iput-object p1, p0, Lcom/amazon/identity/auth/device/li;->tU:Lcom/amazon/identity/auth/device/lt;

    :cond_1
    return-void
.end method

.method private h(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 116
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getError"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 117
    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    return v0

    :catch_0
    :cond_1
    return v1
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/mb;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/identity/auth/device/li;->tU:Lcom/amazon/identity/auth/device/lt;

    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/lt;->c(Lcom/amazon/identity/auth/device/mb;)V

    return-void
.end method

.method public a([BI)V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/amazon/identity/auth/device/li;->tU:Lcom/amazon/identity/auth/device/lt;

    invoke-interface {v0}, Lcom/amazon/identity/auth/device/lt;->hf()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1063
    iget-object v0, p0, Lcom/amazon/identity/auth/device/li;->tW:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x400

    if-ge v0, v1, :cond_1

    .line 1069
    iget-object v0, p0, Lcom/amazon/identity/auth/device/li;->tW:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/2addr v0, p2

    if-le v0, v1, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/amazon/identity/auth/device/li;->tW:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    move v1, p2

    .line 1074
    :goto_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/li;->tW:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/li;->tU:Lcom/amazon/identity/auth/device/lt;

    invoke-interface {v0, p1, p2}, Lcom/amazon/identity/auth/device/lt;->b([BI)Lcom/amazon/identity/kcpsdk/common/ParseError;

    :cond_2
    return-void
.end method

.method public cD()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/amazon/identity/auth/device/li;->tU:Lcom/amazon/identity/auth/device/lt;

    invoke-interface {v0}, Lcom/amazon/identity/auth/device/lt;->hj()Lcom/amazon/identity/kcpsdk/common/ParseError;

    .line 82
    iget-object v0, p0, Lcom/amazon/identity/auth/device/li;->tU:Lcom/amazon/identity/auth/device/lt;

    invoke-interface {v0}, Lcom/amazon/identity/auth/device/lt;->hk()Lcom/amazon/identity/kcpsdk/common/ParseError;

    move-result-object v0

    sget-object v1, Lcom/amazon/identity/kcpsdk/common/ParseError;->ParseErrorNoError:Lcom/amazon/identity/kcpsdk/common/ParseError;

    if-eq v0, v1, :cond_0

    .line 84
    sget-object v0, Lcom/amazon/identity/auth/device/li;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/amazon/identity/auth/device/li;->tU:Lcom/amazon/identity/auth/device/lt;

    invoke-interface {v0}, Lcom/amazon/identity/auth/device/lt;->hk()Lcom/amazon/identity/kcpsdk/common/ParseError;

    .line 87
    iget-object v0, p0, Lcom/amazon/identity/auth/device/li;->tT:Lcom/amazon/identity/auth/device/kl;

    invoke-interface {v0}, Lcom/amazon/identity/auth/device/kl;->k()V

    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/li;->tV:Lcom/amazon/identity/auth/device/jy;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/jy;->hg()Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/amazon/identity/auth/device/li;->tT:Lcom/amazon/identity/auth/device/kl;

    invoke-interface {v0}, Lcom/amazon/identity/auth/device/kl;->onAuthenticationFailed()V

    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/li;->tU:Lcom/amazon/identity/auth/device/lt;

    invoke-interface {v0}, Lcom/amazon/identity/auth/device/lt;->hh()Ljava/lang/Object;

    move-result-object v0

    .line 96
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/li;->h(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    sget-object v1, Lcom/amazon/identity/auth/device/li;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 101
    :cond_2
    iget-object v1, p0, Lcom/amazon/identity/auth/device/li;->tT:Lcom/amazon/identity/auth/device/kl;

    invoke-interface {v1, v0}, Lcom/amazon/identity/auth/device/kl;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public cE()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/amazon/identity/auth/device/li;->tT:Lcom/amazon/identity/auth/device/kl;

    invoke-interface {v0}, Lcom/amazon/identity/auth/device/kl;->onAuthenticationFailed()V

    return-void
.end method

.method public onNetworkError()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/amazon/identity/auth/device/li;->tT:Lcom/amazon/identity/auth/device/kl;

    invoke-interface {v0}, Lcom/amazon/identity/auth/device/kl;->j()V

    return-void
.end method
