.class Lcom/amazon/device/ads/ContextUtils;
.super Ljava/lang/Object;
.source "ContextUtils.java"


# direct methods
.method public static getContextAsActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 26
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 28
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 31
    :cond_0
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-nez v1, :cond_1

    return-object v0

    .line 36
    :cond_1
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_2
    return-object v0
.end method
