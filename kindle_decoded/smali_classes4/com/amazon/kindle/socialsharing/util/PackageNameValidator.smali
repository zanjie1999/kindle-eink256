.class public Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;
.super Ljava/lang/Object;
.source "PackageNameValidator.java"

# interfaces
.implements Lcom/amazon/kindle/socialsharing/util/IPackageNameValidator;


# instance fields
.field protected packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDefaultPackageName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getValidPackageName()Ljava/lang/String;
    .locals 1

    .line 25
    invoke-static {}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->getInstalledPackageNames()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;->getValidPackageNameFromActivityNames(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getValidPackageNameFromActivityNames(Ljava/util/Set;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;->packageName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;->packageName:Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
