.class public Lcom/amazon/whispersync/dcp/SettingsSecureWrapper;
.super Ljava/lang/Object;
.source "SettingsSecureWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    .line 15
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/UnitTestUtils;->isRunningInUnitTest()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 21
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method
