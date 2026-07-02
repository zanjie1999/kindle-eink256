.class public Lcom/amazon/identity/auth/device/ej;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final lt:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final lu:Ljava/lang/String;

.field private final lv:I

.field private final lw:I

.field private lx:Lcom/amazon/identity/auth/device/mr;

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/amazon/identity/auth/device/ej;->lt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 40
    const-class v0, Lcom/amazon/identity/auth/device/ej;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/ej;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;I)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/identity/auth/device/ej;->mStartTime:J

    .line 56
    iput p1, p0, Lcom/amazon/identity/auth/device/ej;->lv:I

    .line 57
    iput-object p2, p0, Lcom/amazon/identity/auth/device/ej;->lu:Ljava/lang/String;

    .line 58
    iput p3, p0, Lcom/amazon/identity/auth/device/ej;->lw:I

    .line 59
    invoke-static {p2}, Lcom/amazon/identity/auth/device/mn;->eR(Ljava/lang/String;)Lcom/amazon/identity/auth/device/mr;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ej;->lx:Lcom/amazon/identity/auth/device/mr;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 60
    iget p2, p0, Lcom/amazon/identity/auth/device/ej;->lv:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    iget-object p2, p0, Lcom/amazon/identity/auth/device/ej;->lu:Ljava/lang/String;

    const/4 p3, 0x1

    aput-object p2, p1, p3

    const-string p2, "Tracer created. Tracer Id : %s API Name : %s"

    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 65
    invoke-static {}, Lcom/amazon/identity/auth/device/ej;->dY()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amazon/identity/auth/device/ej;-><init>(ILjava/lang/String;I)V

    return-void
.end method

.method public static b(Landroid/content/Intent;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;
    .locals 5

    if-nez p0, :cond_0

    .line 122
    new-instance p0, Lcom/amazon/identity/auth/device/ej;

    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/ej;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 125
    :cond_0
    invoke-static {}, Lcom/amazon/identity/auth/device/ej;->dY()I

    move-result v0

    const-string/jumbo v1, "traceId"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "apiName"

    .line 127
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const-string v3, "callingUid"

    .line 129
    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 131
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, " apiName:"

    if-eqz v2, :cond_1

    .line 133
    sget-object v1, Lcom/amazon/identity/auth/device/ej;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "There is no tracer info in intent, creating tracer using new traceId and defaultApiName, traceId:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 136
    new-instance v1, Lcom/amazon/identity/auth/device/ej;

    invoke-direct {v1, v0, p1, p0}, Lcom/amazon/identity/auth/device/ej;-><init>(ILjava/lang/String;I)V

    return-object v1

    .line 139
    :cond_1
    sget-object p1, Lcom/amazon/identity/auth/device/ej;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Creating Tracer from intent, traceId:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 140
    new-instance p1, Lcom/amazon/identity/auth/device/ej;

    invoke-direct {p1, v0, v1, p0}, Lcom/amazon/identity/auth/device/ej;-><init>(ILjava/lang/String;I)V

    return-object p1
.end method

.method public static by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;
    .locals 1

    .line 82
    new-instance v0, Lcom/amazon/identity/auth/device/ej;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/ej;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static d(Landroid/os/Bundle;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;
    .locals 4

    if-nez p0, :cond_0

    .line 95
    new-instance p0, Lcom/amazon/identity/auth/device/ej;

    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/ej;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 98
    :cond_0
    invoke-static {}, Lcom/amazon/identity/auth/device/ej;->dY()I

    move-result v0

    const-string/jumbo v1, "traceId"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "apiName"

    .line 100
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const-string v3, "callingUid"

    .line 102
    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 104
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    new-instance v1, Lcom/amazon/identity/auth/device/ej;

    invoke-direct {v1, v0, p1, p0}, Lcom/amazon/identity/auth/device/ej;-><init>(ILjava/lang/String;I)V

    return-object v1

    .line 109
    :cond_1
    new-instance p1, Lcom/amazon/identity/auth/device/ej;

    invoke-direct {p1, v0, v1, p0}, Lcom/amazon/identity/auth/device/ej;-><init>(ILjava/lang/String;I)V

    return-object p1
.end method

.method private static dY()I
    .locals 2

    .line 74
    sget-object v0, Lcom/amazon/identity/auth/device/ej;->lt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    rem-int/lit16 v0, v0, 0x3e8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public A(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 174
    :cond_0
    iget v0, p0, Lcom/amazon/identity/auth/device/ej;->lv:I

    const-string/jumbo v1, "traceId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ej;->lu:Ljava/lang/String;

    const-string v1, "apiName"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public O(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "unknown"

    .line 198
    :try_start_0
    iget v1, p0, Lcom/amazon/identity/auth/device/ej;->lw:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget v1, p0, Lcom/amazon/identity/auth/device/ej;->lw:I

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 203
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 209
    sget-object v1, Lcom/amazon/identity/auth/device/ej;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 210
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "Couldn\'t get packages for the calling uid.Error Message : %s"

    .line 209
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public varargs b(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ej;->lx:Lcom/amazon/identity/auth/device/mr;

    invoke-interface {v0, p1, p2}, Lcom/amazon/identity/auth/device/mr;->b(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public bA(Ljava/lang/String;)V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ej;->lx:Lcom/amazon/identity/auth/device/mr;

    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/mr;->bA(Ljava/lang/String;)V

    return-void
.end method

.method public bz(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ej;->lx:Lcom/amazon/identity/auth/device/mr;

    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/mr;->eM(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object p1

    .line 238
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ms;->start()V

    return-object p1
.end method

.method public dZ()Lcom/amazon/identity/auth/device/ms;
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ej;->lx:Lcom/amazon/identity/auth/device/mr;

    const-string v1, "Time"

    invoke-interface {v0, v1}, Lcom/amazon/identity/auth/device/mr;->eM(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->start()V

    return-object v0
.end method

.method public e(Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 157
    :cond_0
    iget v0, p0, Lcom/amazon/identity/auth/device/ej;->lv:I

    const-string/jumbo v1, "traceId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ej;->lu:Ljava/lang/String;

    const-string v1, "apiName"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public ea()V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ej;->lx:Lcom/amazon/identity/auth/device/mr;

    invoke-interface {v0}, Lcom/amazon/identity/auth/device/mr;->iL()V

    return-void
.end method

.method public f(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;
    .locals 2

    .line 244
    invoke-static {p1}, Lcom/amazon/identity/auth/device/mp;->aT(Landroid/content/Context;)Lcom/amazon/identity/auth/device/mp;

    move-result-object p1

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ej;->lu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/mp;->eL(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object p1

    .line 246
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ms;->start()V

    return-object p1
.end method

.method public incrementCounter(Ljava/lang/String;D)V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ej;->lx:Lcom/amazon/identity/auth/device/mr;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/mr;->incrementCounter(Ljava/lang/String;D)V

    return-void
.end method
