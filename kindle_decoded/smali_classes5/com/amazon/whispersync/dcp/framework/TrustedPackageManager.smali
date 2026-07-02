.class public Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;
.super Ljava/lang/Object;
.source "TrustedPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.whispersync.dcp.framework.TrustedPackageManager"


# instance fields
.field private final mCurrentPackageName:Ljava/lang/String;

.field private final mPackageManager:Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;-><init>(Ljava/lang/String;Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/amazon/whispersync/com/google/inject/name/Named;
            value = "Context_packageName"
        .end annotation
    .end param
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->mCurrentPackageName:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->mPackageManager:Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;

    return-void
.end method

.method private getUidForPackage(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->mPackageManager:Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 290
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    return p1

    .line 287
    :cond_0
    new-instance p1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw p1
.end method

.method private getUidForSystem()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->mPackageManager:Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;

    const-string v1, "android.uid.system"

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;->getUidForSharedUser(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private isAmazonSignedPackage(Ljava/lang/String;)Z
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->mPackageManager:Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isSystemPackage(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    .line 265
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->getUidForSystem()I

    move-result v1

    .line 266
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->getUidForPackage(Ljava/lang/String;)I

    move-result v2

    .line 268
    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->mPackageManager:Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;

    invoke-virtual {v3, v1, v2}, Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;->checkSignatures(II)I

    move-result p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 272
    sget-object v2, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Name not found for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method


# virtual methods
.method public getInstalledPackages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;

    .line 199
    sget-object v1, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;->Signature:Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;->System:Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->getInstalledPackages([Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public varargs getInstalledPackages([Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->mPackageManager:Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 205
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 206
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 208
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3, p1}, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->isTrustedPackage(Ljava/lang/String;[Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getInstalledPackagesFromNames(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 219
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->mPackageManager:Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 226
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 228
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 230
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;

    .line 295
    sget-object v1, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;->Signature:Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;->System:Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->getResourcesForApplication(Ljava/lang/String;[Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;)Landroid/content/res/Resources;

    move-result-object p1

    return-object p1
.end method

.method public varargs getResourcesForApplication(Ljava/lang/String;[Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;)Landroid/content/res/Resources;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 302
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->isTrustedPackage(Ljava/lang/String;[Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 304
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->mPackageManager:Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;

    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public hasPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->mPackageManager:Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;

    invoke-virtual {v0, p2, p1}, Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isTrustedPackage(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;

    .line 245
    sget-object v1, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;->Signature:Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;->System:Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->isTrustedPackage(Ljava/lang/String;[Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;)Z

    move-result p1

    return p1
.end method

.method public varargs isTrustedPackage(Ljava/lang/String;[Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;)Z
    .locals 1

    .line 250
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 252
    sget-object p2, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;->Signature:Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->isAmazonSignedPackage(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    sget-object p2, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;->System:Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->isSystemPackage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;

    .line 171
    sget-object v1, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;->Signature:Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;->System:Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I[Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs queryBroadcastReceivers(Landroid/content/Intent;I[Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I[",
            "Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->mPackageManager:Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 183
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2, p3}, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->isTrustedPackage(Ljava/lang/String;[Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 185
    sget-object v2, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->TAG:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v1, v3, v4

    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "Receiver %s/%s responds to intent %s, but is not trusted."

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 191
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;

    .line 60
    sget-object v1, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;->Signature:Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;->System:Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->queryIntentActivities(Landroid/content/Intent;I[Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs queryIntentActivities(Landroid/content/Intent;I[Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I[",
            "Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->mPackageManager:Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 72
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2, p3}, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->isTrustedPackage(Ljava/lang/String;[Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    sget-object v2, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->TAG:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v1, v3, v4

    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "Activity %s/%s responds to intent %s, but is not trusted."

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v6, v0, [Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;

    .line 88
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;->Signature:Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;

    const/4 v1, 0x0

    aput-object v0, v6, v1

    sget-object v0, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;->System:Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;

    const/4 v1, 0x1

    aput-object v0, v6, v1

    const/4 v4, -0x2

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;IILjava/lang/String;[Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryIntentServices(Landroid/content/Intent;ILjava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;

    .line 95
    sget-object v1, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;->Signature:Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;->System:Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->queryIntentServices(Landroid/content/Intent;ILjava/lang/String;[Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs queryIntentServices(Landroid/content/Intent;ILjava/lang/String;[Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Ljava/lang/String;",
            "[",
            "Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->mPackageManager:Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 106
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 108
    invoke-virtual {p0, v2, p4}, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->isTrustedPackage(Ljava/lang/String;[Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p0, v2, p3}, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->hasPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 115
    :cond_0
    sget-object v2, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->TAG:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    aput-object v1, v3, v4

    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "Service %s/%s responds to intent %s, but is not trusted."

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :cond_1
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v6, v0, [Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;

    .line 126
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;->Signature:Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;

    const/4 v1, 0x0

    aput-object v0, v6, v1

    sget-object v0, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;->System:Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;

    const/4 v1, 0x1

    aput-object v0, v6, v1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;IILjava/lang/String;[Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryIntentServicesAsUser(Landroid/content/Intent;IILjava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v6, v0, [Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;

    .line 133
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;->Signature:Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;

    const/4 v1, 0x0

    aput-object v0, v6, v1

    sget-object v0, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;->System:Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;

    const/4 v1, 0x1

    aput-object v0, v6, v1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;IILjava/lang/String;[Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs queryIntentServicesAsUser(Landroid/content/Intent;IILjava/lang/String;[Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II",
            "Ljava/lang/String;",
            "[",
            "Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->mPackageManager:Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p2

    .line 147
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 149
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 151
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 153
    invoke-virtual {p0, v1, p5}, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->isTrustedPackage(Ljava/lang/String;[Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p4, :cond_0

    invoke-virtual {p0, v1, p4}, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->hasPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 160
    :cond_0
    sget-object v1, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    aput-object v0, v2, v3

    const/4 v0, 0x2

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "Service %s/%s responds to intent %s, but is not trusted."

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    :cond_1
    :goto_1
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p3
.end method

.method public varargs queryIntentServicesAsUser(Landroid/content/Intent;II[Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II[",
            "Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 140
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;IILjava/lang/String;[Lcom/amazon/whispersync/dcp/framework/TrustedPackageManager$TrustLevel;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
