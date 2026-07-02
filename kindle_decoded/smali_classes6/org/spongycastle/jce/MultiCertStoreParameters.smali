.class public Lorg/spongycastle/jce/MultiCertStoreParameters;
.super Ljava/lang/Object;
.source "MultiCertStoreParameters.java"

# interfaces
.implements Ljava/security/cert/CertStoreParameters;


# instance fields
.field private certStores:Ljava/util/Collection;

.field private searchAllStores:Z


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getCertStores()Ljava/util/Collection;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/spongycastle/jce/MultiCertStoreParameters;->certStores:Ljava/util/Collection;

    return-object v0
.end method

.method public getSearchAllStores()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lorg/spongycastle/jce/MultiCertStoreParameters;->searchAllStores:Z

    return v0
.end method
