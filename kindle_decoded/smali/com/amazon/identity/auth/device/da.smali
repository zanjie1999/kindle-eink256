.class public final Lcom/amazon/identity/auth/device/da;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final iD:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final iE:Ljava/lang/Integer;


# instance fields
.field private final iF:Landroid/os/UserHandle;

.field private final iG:I

.field private final mFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    invoke-static {}, Lcom/amazon/identity/auth/device/da;->cB()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/da;->iD:Ljava/lang/Class;

    .line 20
    const-class v0, Lcom/amazon/identity/auth/device/da;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/da;->TAG:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/amazon/identity/auth/device/da;->iD:Ljava/lang/Class;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/da;->a(Ljava/lang/Class;)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/da;->iE:Ljava/lang/Integer;

    return-void
.end method

.method constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/amazon/identity/auth/device/da;->iG:I

    .line 41
    iput p2, p0, Lcom/amazon/identity/auth/device/da;->mFlags:I

    .line 42
    check-cast p3, Landroid/os/UserHandle;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/da;->iF:Landroid/os/UserHandle;

    return-void
.end method

.method private static a(Ljava/lang/Class;)Ljava/lang/Integer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 225
    sget-object v0, Lcom/amazon/identity/auth/device/da;->iD:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 227
    sget-object p0, Lcom/amazon/identity/auth/device/da;->TAG:Ljava/lang/String;

    invoke-static {p0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-object v1

    .line 233
    :cond_0
    :try_start_0
    new-instance v0, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;-><init>()V

    const-string v2, "USER_OWNER"

    .line 234
    invoke-virtual {v0, p0, v2}, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/utils/ReflectionHelper$CannotCallMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 238
    sget-object v0, Lcom/amazon/identity/auth/device/da;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    const-string p0, "Cannot get USER_OWNER static field. Error: %s"

    invoke-static {v0, p0, v2}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public static c(Ljava/lang/Object;)Lcom/amazon/identity/auth/device/da;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 185
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.content.pm.UserInfo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    :try_start_0
    new-instance v1, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;

    invoke-direct {v1}, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;-><init>()V

    const-string v2, "id"

    .line 195
    invoke-virtual {v1, p0, v2}, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "flags"

    .line 196
    invoke-virtual {v1, p0, v3}, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "getUserHandle"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    new-array v5, v5, [Ljava/lang/Object;

    .line 197
    invoke-virtual {v1, v4, p0, v6, v5}, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 199
    new-instance v1, Lcom/amazon/identity/auth/device/da;

    invoke-direct {v1, v2, v3, p0}, Lcom/amazon/identity/auth/device/da;-><init>(IILjava/lang/Object;)V
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/utils/ReflectionHelper$CannotCallMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 203
    sget-object v1, Lcom/amazon/identity/auth/device/da;->TAG:Ljava/lang/String;

    const-string v2, "Cannot construct Android User from User Info"

    invoke-static {v1, v2, p0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 187
    :cond_1
    :goto_0
    sget-object p0, Lcom/amazon/identity/auth/device/da;->TAG:Ljava/lang/String;

    const-string v1, "Given Object is not a valid UserInfo class"

    invoke-static {p0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static cA()I
    .locals 6

    .line 111
    invoke-static {}, Lcom/amazon/identity/auth/device/mw;->iT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Lcom/amazon/android/os/MultipleProfileHelper;->getForegroundProfileId()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 119
    :try_start_0
    new-instance v1, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;

    invoke-direct {v1}, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;-><init>()V

    const-string v2, "getCurrentUser"

    .line 120
    const-class v3, Landroid/app/ActivityManager;

    new-array v4, v0, [Ljava/lang/Class;

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;->a(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/utils/ReflectionHelper$CannotCallMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 124
    :catch_0
    sget-object v1, Lcom/amazon/identity/auth/device/da;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dm(Ljava/lang/String;)V

    return v0
.end method

.method private static cB()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-string v0, "android.os.UserHandle"

    .line 213
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Cannot find class %s"

    .line 217
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static cx()I
    .locals 1

    .line 47
    sget-object v0, Lcom/amazon/identity/auth/device/da;->iE:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 52
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static cy()I
    .locals 6

    .line 57
    invoke-static {}, Lcom/amazon/identity/auth/device/mw;->iT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {}, Lcom/amazon/android/os/MultipleProfileHelper;->myProfileId()I

    move-result v0

    return v0

    .line 63
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/da;->iD:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 70
    :cond_1
    :try_start_0
    new-instance v0, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;-><init>()V

    const-string/jumbo v2, "myUserId"

    const-string v3, "android.os.UserHandle"

    new-array v4, v1, [Ljava/lang/Class;

    new-array v5, v1, [Ljava/lang/Object;

    .line 71
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/utils/ReflectionHelper$CannotCallMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 75
    sget-object v2, Lcom/amazon/identity/auth/device/da;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "Cannot get myUserId static field. Error: %s"

    invoke-static {v2, v0, v3}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public static cz()I
    .locals 6

    .line 84
    invoke-static {}, Lcom/amazon/identity/auth/device/mw;->iT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lcom/amazon/android/os/MultipleProfileHelper;->getCallingProfileId()I

    move-result v0

    return v0

    .line 90
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/da;->iD:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 97
    :cond_1
    :try_start_0
    new-instance v0, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;-><init>()V

    const-string v2, "getCallingUserId"

    const-string v3, "android.os.UserHandle"

    new-array v4, v1, [Ljava/lang/Class;

    new-array v5, v1, [Ljava/lang/Object;

    .line 98
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/utils/ReflectionHelper$CannotCallMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 102
    sget-object v2, Lcom/amazon/identity/auth/device/da;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "Cannot get getCallingUserId static field. Error: %s"

    invoke-static {v2, v0, v3}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 173
    instance-of v1, p1, Lcom/amazon/identity/auth/device/da;

    if-nez v1, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    check-cast p1, Lcom/amazon/identity/auth/device/da;

    .line 180
    iget v1, p0, Lcom/amazon/identity/auth/device/da;->iG:I

    iget p1, p1, Lcom/amazon/identity/auth/device/da;->iG:I

    if-ne v1, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/amazon/identity/auth/device/da;->iF:Landroid/os/UserHandle;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/amazon/identity/auth/device/da;->iG:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/amazon/identity/auth/device/da;->iG:I

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method
