.class final Lcom/amazon/kindle/services/authentication/UserStateHelper;
.super Ljava/lang/Object;
.source "UserStateHelper.java"


# static fields
.field private static final SAFEMODE_STATE_KEY:Ljava/lang/String; = "SAFEMODE_STATE"

.field private static final SAFEMODE_STATE_SAFEMODE:Ljava/lang/String; = "SAFEMODE"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInSafeMode(Landroid/content/Context;)Z
    .locals 1

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "SAFEMODE_STATE"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SAFEMODE"

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
