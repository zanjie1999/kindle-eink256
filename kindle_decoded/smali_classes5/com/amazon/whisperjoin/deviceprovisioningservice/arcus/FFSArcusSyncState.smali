.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncState;
.super Ljava/lang/Object;
.source "FFSArcusSyncState.java"


# static fields
.field private static final SHARED_PREF_SYNC_BLOCKED_UNTIL_TIMESTAMP_MILLIS:Ljava/lang/String; = "arcusSyncStateSyncBlockedUntilTimestampMillis"


# instance fields
.field private final mSyncBlockedUntilTimestampMillis:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncState;->mSyncBlockedUntilTimestampMillis:J

    return-void
.end method

.method public static readFromSharedPreferences(Landroid/content/SharedPreferences;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncState;
    .locals 3

    const-string v0, "arcusSyncStateSyncBlockedUntilTimestampMillis"

    const-wide/16 v1, 0x0

    .line 53
    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 54
    new-instance p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncState;

    invoke-direct {p0, v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncState;-><init>(J)V

    return-object p0
.end method

.method public static writeToSharedPreferences(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncState;Landroid/content/SharedPreferences;)V
    .locals 2

    .line 58
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 59
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncState;->getSyncBlockedUntilTimestampMillis()J

    move-result-wide v0

    const-string p0, "arcusSyncStateSyncBlockedUntilTimestampMillis"

    invoke-interface {p1, p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 60
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 29
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncState;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 31
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncState;

    .line 33
    new-instance v0, Lorg/apache/commons/lang/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;-><init>()V

    iget-wide v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncState;->mSyncBlockedUntilTimestampMillis:J

    iget-wide v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncState;->mSyncBlockedUntilTimestampMillis:J

    .line 34
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(JJ)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 35
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals()Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getSyncBlockedUntilTimestampMillis()J
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncState;->mSyncBlockedUntilTimestampMillis:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 40
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    const/16 v1, 0x11

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>(II)V

    iget-wide v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncState;->mSyncBlockedUntilTimestampMillis:J

    .line 41
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(J)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 42
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 47
    new-instance v0, Lorg/apache/commons/lang/builder/ToStringBuilder;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/builder/ToStringBuilder;-><init>(Ljava/lang/Object;)V

    iget-wide v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncState;->mSyncBlockedUntilTimestampMillis:J

    const-string v3, "mSyncBlockedUntilTimestampMillis"

    .line 48
    invoke-virtual {v0, v3, v1, v2}, Lorg/apache/commons/lang/builder/ToStringBuilder;->append(Ljava/lang/String;J)Lorg/apache/commons/lang/builder/ToStringBuilder;

    .line 49
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
