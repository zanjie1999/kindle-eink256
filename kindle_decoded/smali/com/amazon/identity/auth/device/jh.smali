.class public final Lcom/amazon/identity/auth/device/jh;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.jh"

.field private static final rs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    invoke-static {}, Lcom/amazon/identity/auth/device/jh;->gU()Z

    move-result v0

    sput-boolean v0, Lcom/amazon/identity/auth/device/jh;->rs:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gT()Z
    .locals 1

    .line 19
    sget-boolean v0, Lcom/amazon/identity/auth/device/jh;->rs:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/identity/auth/device/api/MAPInit;->isRunningInFunctionalTest()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static gU()Z
    .locals 2

    :try_start_0
    const-string v0, "android.test.mock.MockContext"

    .line 26
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "com.amazon.identity.auth.unittest.IsRunningInUnitTest"

    .line 27
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 28
    sget-object v0, Lcom/amazon/identity/auth/device/jh;->TAG:Ljava/lang/String;

    const-string v1, "Is running in unit test!"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method
