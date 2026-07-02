.class public Lcom/amazon/identity/auth/device/fe;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/fe$a;
    }
.end annotation


# instance fields
.field private mi:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;

.field private mj:Lcom/amazon/identity/auth/device/fe$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/identity/auth/device/fe$a<",
            "Lcom/amazon/identity/auth/device/fd;",
            ">;"
        }
    .end annotation
.end field

.field private mk:Z

.field private o:Lcom/amazon/identity/auth/device/ed;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/amazon/identity/auth/device/fe;->o:Lcom/amazon/identity/auth/device/ed;

    .line 45
    iput-object p2, p0, Lcom/amazon/identity/auth/device/fe;->mi:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/amazon/identity/auth/device/fe;->mj:Lcom/amazon/identity/auth/device/fe$a;

    if-eqz p2, :cond_0

    .line 50
    invoke-virtual {p2, p1}, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->H(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/identity/auth/device/fe;->mk:Z

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "SmsRetriever supporting: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/amazon/identity/auth/device/fe;->mk:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SmsRetrieverManager"

    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(ZLjava/lang/String;)Lcom/amazon/identity/auth/device/fd;
    .locals 1

    .line 3012
    new-instance v0, Lcom/amazon/identity/auth/device/fd$a;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/fd$a;-><init>()V

    .line 117
    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/fd$a;->f(Z)Lcom/amazon/identity/auth/device/fd$a;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 118
    :goto_0
    invoke-virtual {v0, p2}, Lcom/amazon/identity/auth/device/fd$a;->bK(Ljava/lang/String;)Lcom/amazon/identity/auth/device/fd$a;

    .line 119
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/fd$a;->es()Lcom/amazon/identity/auth/device/fd;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/amazon/identity/auth/device/fd;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fe;->mj:Lcom/amazon/identity/auth/device/fe$a;

    if-nez v0, :cond_0

    const-string p1, "SmsRetrieverManager"

    const-string v0, "Got null consumer callback, there may be errors when consuming sms"

    .line 92
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 96
    :cond_0
    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/fe$a;->f(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lcom/amazon/identity/auth/device/fe;->mj:Lcom/amazon/identity/auth/device/fe$a;

    .line 99
    iget-object p1, p0, Lcom/amazon/identity/auth/device/fe;->mi:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/fe;->mk:Z

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fe;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->L(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private et()Ljava/lang/String;
    .locals 4

    const-string v0, "SmsRetrieverManager"

    .line 124
    iget-object v1, p0, Lcom/amazon/identity/auth/device/fe;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 125
    iget-object v2, p0, Lcom/amazon/identity/auth/device/fe;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    .line 129
    :try_start_0
    invoke-static {v1, v3, v2}, Lcom/amazon/identity/auth/device/ek;->a(Ljava/lang/String;ILandroid/content/pm/PackageManager;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 130
    invoke-static {v1}, Lcom/amazon/identity/auth/device/fh;->a(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appSmsHash =  "

    .line 131
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const-string v1, "NameNotFoundException when getting packageInfo for appSmsHash"

    .line 136
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/fe$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/fe$a<",
            "Lcom/amazon/identity/auth/device/ff;",
            ">;)V"
        }
    .end annotation

    .line 2012
    new-instance v0, Lcom/amazon/identity/auth/device/ff$a;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/ff$a;-><init>()V

    .line 1109
    iget-boolean v1, p0, Lcom/amazon/identity/auth/device/fe;->mk:Z

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ff$a;->g(Z)Lcom/amazon/identity/auth/device/ff$a;

    .line 1110
    iget-boolean v1, p0, Lcom/amazon/identity/auth/device/fe;->mk:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/amazon/identity/auth/device/fe;->et()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ff$a;->bM(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ff$a;

    .line 1111
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ff$a;->eu()Lcom/amazon/identity/auth/device/ff;

    move-result-object v0

    .line 64
    invoke-interface {p1, v0}, Lcom/amazon/identity/auth/device/fe$a;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/amazon/identity/auth/device/fe$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/fe$a<",
            "Lcom/amazon/identity/auth/device/fd;",
            ">;)V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/amazon/identity/auth/device/fe;->mj:Lcom/amazon/identity/auth/device/fe$a;

    .line 71
    iget-object p1, p0, Lcom/amazon/identity/auth/device/fe;->mi:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/fe;->mk:Z

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fe;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {p1, v0, p0}, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->a(Landroid/content/Context;Lcom/amazon/identity/auth/device/fe;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    const-string v0, ""

    .line 77
    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/fe;->a(ZLjava/lang/String;)Lcom/amazon/identity/auth/device/fd;

    move-result-object p1

    .line 78
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/fe;->a(Lcom/amazon/identity/auth/device/fd;)V

    return-void
.end method

.method public bL(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 84
    invoke-direct {p0, v0, p1}, Lcom/amazon/identity/auth/device/fe;->a(ZLjava/lang/String;)Lcom/amazon/identity/auth/device/fd;

    move-result-object p1

    .line 85
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/fe;->a(Lcom/amazon/identity/auth/device/fd;)V

    return-void
.end method
