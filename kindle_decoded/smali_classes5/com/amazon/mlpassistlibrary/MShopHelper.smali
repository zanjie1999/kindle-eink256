.class public final Lcom/amazon/mlpassistlibrary/MShopHelper;
.super Ljava/lang/Object;
.source "MShopHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MLPAssist-MShopHelper"


# direct methods
.method public static isMShopInstalled(Landroid/content/Context;)Z
    .locals 7

    .line 29
    invoke-static {}, Lcom/amazon/mlpassistlibrary/MShopPackage;->values()[Lcom/amazon/mlpassistlibrary/MShopPackage;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 30
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Checking if "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/amazon/mlpassistlibrary/MShopPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is installed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 34
    :try_start_0
    invoke-virtual {v4}, Lcom/amazon/mlpassistlibrary/MShopPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method
