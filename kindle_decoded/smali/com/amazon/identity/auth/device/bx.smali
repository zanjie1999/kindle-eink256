.class public final Lcom/amazon/identity/auth/device/bx;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static hI:Ljava/lang/String;


# direct methods
.method private static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    .line 119
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x40

    .line 120
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 123
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    return v0

    .line 127
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 129
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v1, :cond_1

    .line 134
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "CustomTabsHelper"

    const-string p1, "Exception while getting specialized handlers"

    .line 147
    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method public static declared-synchronized s(Landroid/content/Context;)Ljava/lang/String;
    .locals 11

    const-class v0, Lcom/amazon/identity/auth/device/bx;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/bx;->hI:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 49
    sget-object p0, Lcom/amazon/identity/auth/device/bx;->hI:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 51
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 53
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "https://www.amazon-customtabtest.com"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v3, 0x0

    .line 54
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 58
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v4, v5

    .line 62
    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 63
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 64
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 66
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string v10, "android.support.customtabs.action.CustomTabsService"

    .line 67
    invoke-virtual {v9, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    invoke-virtual {v1, v9, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 71
    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 77
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 79
    sput-object v5, Lcom/amazon/identity/auth/device/bx;->hI:Ljava/lang/String;

    goto :goto_2

    .line 81
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_5

    .line 83
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sput-object p0, Lcom/amazon/identity/auth/device/bx;->hI:Ljava/lang/String;

    goto :goto_2

    .line 85
    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 86
    invoke-static {p0, v2}, Lcom/amazon/identity/auth/device/bx;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 87
    invoke-interface {v7, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 89
    sput-object v4, Lcom/amazon/identity/auth/device/bx;->hI:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const-string p0, "com.android.chrome"

    .line 91
    invoke-interface {v7, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "com.android.chrome"

    .line 93
    sput-object p0, Lcom/amazon/identity/auth/device/bx;->hI:Ljava/lang/String;

    goto :goto_2

    :cond_7
    const-string p0, "com.chrome.beta"

    .line 95
    invoke-interface {v7, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "com.chrome.beta"

    .line 97
    sput-object p0, Lcom/amazon/identity/auth/device/bx;->hI:Ljava/lang/String;

    goto :goto_2

    :cond_8
    const-string p0, "com.chrome.dev"

    .line 99
    invoke-interface {v7, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "com.chrome.dev"

    .line 101
    sput-object p0, Lcom/amazon/identity/auth/device/bx;->hI:Ljava/lang/String;

    goto :goto_2

    :cond_9
    const-string p0, "com.google.android.apps.chrome"

    .line 103
    invoke-interface {v7, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const-string p0, "com.google.android.apps.chrome"

    .line 105
    sput-object p0, Lcom/amazon/identity/auth/device/bx;->hI:Ljava/lang/String;

    .line 107
    :cond_a
    :goto_2
    sget-object p0, Lcom/amazon/identity/auth/device/bx;->hI:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
