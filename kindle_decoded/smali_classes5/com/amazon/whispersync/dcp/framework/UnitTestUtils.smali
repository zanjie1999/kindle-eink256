.class public final Lcom/amazon/whispersync/dcp/framework/UnitTestUtils;
.super Ljava/lang/Object;
.source "UnitTestUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isRunningInUnitTest()Z
    .locals 1

    :try_start_0
    const-string v0, "android.test.mock.MockContext"

    .line 16
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method
