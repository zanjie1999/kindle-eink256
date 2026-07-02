.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;
.super Ljava/lang/Object;
.source "FFSArcusSyncResult.java"


# static fields
.field private static final SHARED_PREF_MODIFIED:Ljava/lang/String; = "arcusSyncResultModified"

.field private static final SHARED_PREF_TIMESTAMP:Ljava/lang/String; = "arcusSyncResultTimestamp"


# instance fields
.field private final mFFSArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

.field private final mModified:Z

.field private final mTimestamp:J


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;ZJ)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;->mFFSArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    .line 25
    iput-boolean p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;->mModified:Z

    .line 26
    iput-wide p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;->mTimestamp:J

    return-void
.end method

.method public static readFromSharedPreferences(Landroid/content/SharedPreferences;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;
    .locals 5

    .line 66
    invoke-static {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->readFromSharedPreferences(Landroid/content/SharedPreferences;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    move-result-object v0

    const-string v1, "arcusSyncResultModified"

    const/4 v2, 0x0

    .line 67
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "arcusSyncResultTimestamp"

    const-wide/16 v3, 0x0

    .line 68
    invoke-interface {p0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 69
    new-instance p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;ZJ)V

    return-object p0
.end method

.method public static writeToSharedPreferences(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;Landroid/content/SharedPreferences;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;->mFFSArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    invoke-static {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->writeToSharedPreferences(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;Landroid/content/SharedPreferences;)V

    .line 75
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 76
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;->isModified()Z

    move-result v0

    const-string v1, "arcusSyncResultModified"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;->getTimestamp()J

    move-result-wide v0

    const-string p0, "arcusSyncResultTimestamp"

    invoke-interface {p1, p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 78
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 44
    :cond_0
    instance-of v1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 45
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;

    .line 46
    iget-boolean v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;->mModified:Z

    iget-boolean v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;->mModified:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;->mFFSArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    iget-object v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;->mFFSArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    .line 47
    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;->mTimestamp:J

    .line 48
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;->mTimestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFFSArcusSettings()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;->mFFSArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;->mTimestamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 53
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;->mFFSArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;->mModified:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;->mTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isModified()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;->mModified:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 58
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;->mFFSArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    const-string v2, "mFFSArcusSettings"

    .line 59
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-boolean v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;->mModified:Z

    const-string v2, "mModified"

    .line 60
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-wide v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;->mTimestamp:J

    const-string v3, "mTimestamp"

    .line 61
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 62
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
