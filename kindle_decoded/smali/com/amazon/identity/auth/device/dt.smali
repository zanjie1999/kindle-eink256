.class public final Lcom/amazon/identity/auth/device/dt;
.super Ljava/lang/Object;
.source "DCP"


# direct methods
.method public static a(Landroid/net/Uri;Landroid/content/pm/PackageManager;)Landroid/content/pm/ProviderInfo;
    .locals 2

    const/4 v0, 0x0

    .line 31
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 35
    invoke-static {v1}, Lcom/amazon/identity/auth/device/ek;->a(Ljava/lang/Exception;)V

    .line 36
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    :goto_0
    return-object p0
.end method
