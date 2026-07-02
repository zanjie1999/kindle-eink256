.class public Lcom/amazon/weblab/mobile/utils/TestUtils;
.super Ljava/lang/Object;
.source "TestUtils.java"


# static fields
.field private static final IS_TEST_KEY:Ljava/lang/String; = "com.amazon.mobile.weblab.test.isTest"

.field private static volatile isUnderTestCached:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static isUnderTest()Z
    .locals 3

    .line 29
    sget-object v0, Lcom/amazon/weblab/mobile/utils/TestUtils;->isUnderTestCached:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 32
    :try_start_0
    invoke-static {}, Lcom/amazon/weblab/mobile/metrics/ApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "com.amazon.mobile.weblab.test.isTest"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/amazon/weblab/mobile/utils/TestUtils;->isUnderTestCached:Ljava/lang/Boolean;

    goto :goto_0

    :catch_0
    return v0

    .line 40
    :cond_0
    :goto_0
    sget-object v0, Lcom/amazon/weblab/mobile/utils/TestUtils;->isUnderTestCached:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static logDebugForAutomation(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static logIfUnderTest(Ljava/lang/String;)V
    .locals 1

    .line 52
    invoke-static {}, Lcom/amazon/weblab/mobile/utils/TestUtils;->isUnderTest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {p0}, Lcom/amazon/weblab/mobile/utils/TestUtils;->logDebugForAutomation(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
