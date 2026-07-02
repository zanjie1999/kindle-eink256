.class public Lorg/spongycastle/jce/X509LDAPCertStoreParameters;
.super Ljava/lang/Object;
.source "X509LDAPCertStoreParameters.java"

# interfaces
.implements Lorg/spongycastle/x509/X509StoreParameters;
.implements Ljava/security/cert/CertStoreParameters;


# instance fields
.field private aACertificateAttribute:Ljava/lang/String;

.field private aACertificateSubjectAttributeName:Ljava/lang/String;

.field private attributeAuthorityRevocationListAttribute:Ljava/lang/String;

.field private attributeAuthorityRevocationListIssuerAttributeName:Ljava/lang/String;

.field private attributeCertificateAttributeAttribute:Ljava/lang/String;

.field private attributeCertificateAttributeSubjectAttributeName:Ljava/lang/String;

.field private attributeCertificateRevocationListAttribute:Ljava/lang/String;

.field private attributeCertificateRevocationListIssuerAttributeName:Ljava/lang/String;

.field private attributeDescriptorCertificateAttribute:Ljava/lang/String;

.field private attributeDescriptorCertificateSubjectAttributeName:Ljava/lang/String;

.field private authorityRevocationListAttribute:Ljava/lang/String;

.field private authorityRevocationListIssuerAttributeName:Ljava/lang/String;

.field private baseDN:Ljava/lang/String;

.field private cACertificateAttribute:Ljava/lang/String;

.field private cACertificateSubjectAttributeName:Ljava/lang/String;

.field private certificateRevocationListAttribute:Ljava/lang/String;

.field private certificateRevocationListIssuerAttributeName:Ljava/lang/String;

.field private crossCertificateAttribute:Ljava/lang/String;

.field private crossCertificateSubjectAttributeName:Ljava/lang/String;

.field private deltaRevocationListAttribute:Ljava/lang/String;

.field private deltaRevocationListIssuerAttributeName:Ljava/lang/String;

.field private ldapAACertificateAttributeName:Ljava/lang/String;

.field private ldapAttributeAuthorityRevocationListAttributeName:Ljava/lang/String;

.field private ldapAttributeCertificateAttributeAttributeName:Ljava/lang/String;

.field private ldapAttributeCertificateRevocationListAttributeName:Ljava/lang/String;

.field private ldapAttributeDescriptorCertificateAttributeName:Ljava/lang/String;

.field private ldapAuthorityRevocationListAttributeName:Ljava/lang/String;

.field private ldapCACertificateAttributeName:Ljava/lang/String;

.field private ldapCertificateRevocationListAttributeName:Ljava/lang/String;

.field private ldapCrossCertificateAttributeName:Ljava/lang/String;

.field private ldapDeltaRevocationListAttributeName:Ljava/lang/String;

.field private ldapURL:Ljava/lang/String;

.field private ldapUserCertificateAttributeName:Ljava/lang/String;

.field private searchForSerialNumberIn:Ljava/lang/String;

.field private userCertificateAttribute:Ljava/lang/String;

.field private userCertificateSubjectAttributeName:Ljava/lang/String;


# direct methods
.method private addHashCode(ILjava/lang/Object;)I
    .locals 0

    mul-int/lit8 p1, p1, 0x1d

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 960
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    :goto_0
    add-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getAACertificateAttribute()Ljava/lang/String;
    .locals 1

    .line 968
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->aACertificateAttribute:Ljava/lang/String;

    return-object v0
.end method

.method public getAACertificateSubjectAttributeName()Ljava/lang/String;
    .locals 1

    .line 976
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->aACertificateSubjectAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeAuthorityRevocationListAttribute()Ljava/lang/String;
    .locals 1

    .line 984
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->attributeAuthorityRevocationListAttribute:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeAuthorityRevocationListIssuerAttributeName()Ljava/lang/String;
    .locals 1

    .line 992
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->attributeAuthorityRevocationListIssuerAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeCertificateAttributeAttribute()Ljava/lang/String;
    .locals 1

    .line 1000
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->attributeCertificateAttributeAttribute:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeCertificateAttributeSubjectAttributeName()Ljava/lang/String;
    .locals 1

    .line 1008
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->attributeCertificateAttributeSubjectAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeCertificateRevocationListAttribute()Ljava/lang/String;
    .locals 1

    .line 1016
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->attributeCertificateRevocationListAttribute:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeCertificateRevocationListIssuerAttributeName()Ljava/lang/String;
    .locals 1

    .line 1025
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->attributeCertificateRevocationListIssuerAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeDescriptorCertificateAttribute()Ljava/lang/String;
    .locals 1

    .line 1033
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->attributeDescriptorCertificateAttribute:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeDescriptorCertificateSubjectAttributeName()Ljava/lang/String;
    .locals 1

    .line 1041
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->attributeDescriptorCertificateSubjectAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorityRevocationListAttribute()Ljava/lang/String;
    .locals 1

    .line 1049
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->authorityRevocationListAttribute:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorityRevocationListIssuerAttributeName()Ljava/lang/String;
    .locals 1

    .line 1057
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->authorityRevocationListIssuerAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseDN()Ljava/lang/String;
    .locals 1

    .line 1065
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->baseDN:Ljava/lang/String;

    return-object v0
.end method

.method public getCACertificateAttribute()Ljava/lang/String;
    .locals 1

    .line 1073
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->cACertificateAttribute:Ljava/lang/String;

    return-object v0
.end method

.method public getCACertificateSubjectAttributeName()Ljava/lang/String;
    .locals 1

    .line 1081
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->cACertificateSubjectAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getCertificateRevocationListAttribute()Ljava/lang/String;
    .locals 1

    .line 1089
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->certificateRevocationListAttribute:Ljava/lang/String;

    return-object v0
.end method

.method public getCertificateRevocationListIssuerAttributeName()Ljava/lang/String;
    .locals 1

    .line 1097
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->certificateRevocationListIssuerAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getCrossCertificateAttribute()Ljava/lang/String;
    .locals 1

    .line 1105
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->crossCertificateAttribute:Ljava/lang/String;

    return-object v0
.end method

.method public getCrossCertificateSubjectAttributeName()Ljava/lang/String;
    .locals 1

    .line 1113
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->crossCertificateSubjectAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeltaRevocationListAttribute()Ljava/lang/String;
    .locals 1

    .line 1121
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->deltaRevocationListAttribute:Ljava/lang/String;

    return-object v0
.end method

.method public getDeltaRevocationListIssuerAttributeName()Ljava/lang/String;
    .locals 1

    .line 1129
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->deltaRevocationListIssuerAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getLdapAACertificateAttributeName()Ljava/lang/String;
    .locals 1

    .line 1137
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->ldapAACertificateAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getLdapAttributeAuthorityRevocationListAttributeName()Ljava/lang/String;
    .locals 1

    .line 1145
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->ldapAttributeAuthorityRevocationListAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getLdapAttributeCertificateAttributeAttributeName()Ljava/lang/String;
    .locals 1

    .line 1153
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->ldapAttributeCertificateAttributeAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getLdapAttributeCertificateRevocationListAttributeName()Ljava/lang/String;
    .locals 1

    .line 1161
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->ldapAttributeCertificateRevocationListAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getLdapAttributeDescriptorCertificateAttributeName()Ljava/lang/String;
    .locals 1

    .line 1169
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->ldapAttributeDescriptorCertificateAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getLdapAuthorityRevocationListAttributeName()Ljava/lang/String;
    .locals 1

    .line 1177
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->ldapAuthorityRevocationListAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getLdapCACertificateAttributeName()Ljava/lang/String;
    .locals 1

    .line 1185
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->ldapCACertificateAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getLdapCertificateRevocationListAttributeName()Ljava/lang/String;
    .locals 1

    .line 1193
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->ldapCertificateRevocationListAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getLdapCrossCertificateAttributeName()Ljava/lang/String;
    .locals 1

    .line 1201
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->ldapCrossCertificateAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getLdapDeltaRevocationListAttributeName()Ljava/lang/String;
    .locals 1

    .line 1209
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->ldapDeltaRevocationListAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getLdapURL()Ljava/lang/String;
    .locals 1

    .line 1217
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->ldapURL:Ljava/lang/String;

    return-object v0
.end method

.method public getLdapUserCertificateAttributeName()Ljava/lang/String;
    .locals 1

    .line 1225
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->ldapUserCertificateAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchForSerialNumberIn()Ljava/lang/String;
    .locals 1

    .line 1233
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->searchForSerialNumberIn:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCertificateAttribute()Ljava/lang/String;
    .locals 1

    .line 1241
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->userCertificateAttribute:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCertificateSubjectAttributeName()Ljava/lang/String;
    .locals 1

    .line 1249
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->userCertificateSubjectAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 920
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->userCertificateAttribute:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    .line 921
    iget-object v1, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->cACertificateAttribute:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    .line 922
    iget-object v1, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->crossCertificateAttribute:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    .line 923
    iget-object v1, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->certificateRevocationListAttribute:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    .line 924
    iget-object v1, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->deltaRevocationListAttribute:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    .line 925
    iget-object v1, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->authorityRevocationListAttribute:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    .line 926
    iget-object v1, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->attributeCertificateAttributeAttribute:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    .line 927
    iget-object v1, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->aACertificateAttribute:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    .line 928
    iget-object v1, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->attributeDescriptorCertificateAttribute:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    .line 929
    iget-object v1, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->attributeCertificateRevocationListAttribute:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    .line 930
    iget-object v1, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->attributeAuthorityRevocationListAttribute:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    .line 931
    iget-object v1, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->ldapUserCertificateAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    .line 932
    iget-object v1, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->ldapCACertificateAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    .line 933
    iget-object v1, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->ldapCrossCertificateAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    .line 934
    iget-object v1, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->ldapCertificateRevocationListAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    .line 935
    iget-object v1, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->ldapDeltaRevocationListAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    .line 936
    iget-object v1, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->ldapAuthorityRevocationListAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    .line 937
    iget-object v1, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->ldapAttributeCertificateAttributeAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    .line 938
    iget-object v1, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->ldapAACertificateAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    .line 939
    iget-object v1, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->ldapAttributeDescriptorCertificateAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    .line 940
    iget-object v1, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->ldapAttributeCertificateRevocationListAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    .line 941
    iget-object v1, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->ldapAttributeAuthorityRevocationListAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    .line 942
    iget-object v1, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->userCertificateSubjectAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    .line 943
    iget-object v1, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->cACertificateSubjectAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    .line 944
    iget-object v1, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->crossCertificateSubjectAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    .line 945
    iget-object v1, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->certificateRevocationListIssuerAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    .line 946
    iget-object v1, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->deltaRevocationListIssuerAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    .line 947
    iget-object v1, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->authorityRevocationListIssuerAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    .line 948
    iget-object v1, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->attributeCertificateAttributeSubjectAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    .line 949
    iget-object v1, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->aACertificateSubjectAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    .line 950
    iget-object v1, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->attributeDescriptorCertificateSubjectAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    .line 951
    iget-object v1, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->attributeCertificateRevocationListIssuerAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    .line 952
    iget-object v1, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->attributeAuthorityRevocationListIssuerAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    .line 953
    iget-object v1, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->searchForSerialNumberIn:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method
