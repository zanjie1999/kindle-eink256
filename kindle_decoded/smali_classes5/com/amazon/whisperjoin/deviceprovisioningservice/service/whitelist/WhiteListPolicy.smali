.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;
.super Ljava/lang/Object;
.source "WhiteListPolicy.java"


# static fields
.field private static final KEY_LAST_REFRESH:Ljava/lang/String; = "FFSWhiteListPolicy.LastRefresh"

.field private static final KEY_MIN_BATTERY_LEVEL:Ljava/lang/String; = "FFSWhiteListPolicy.MinBatteryLevel"

.field private static final KEY_POLICY_EXPIRES_AT:Ljava/lang/String; = "FFSWhiteListPolicy.ExpiresAt"

.field private static final KEY_SCAN_MODE:Ljava/lang/String; = "FFSWhiteListPolicy.ScanMode"

.field private static final PREFIX:Ljava/lang/String; = "FFSWhiteListPolicy."

.field private static final TAG:Ljava/lang/String; = "WhiteListPolicy"


# instance fields
.field private final mLastRefresh:J

.field private final mMinBatteryLevel:I

.field private final mPolicyExpiresAt:J

.field private final mScanningMode:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;IJJ)V
    .locals 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    if-ltz p2, :cond_2

    const/16 v0, 0x64

    if-gt p2, v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_1

    cmp-long v2, p5, v0

    if-ltz v2, :cond_0

    .line 46
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->mScanningMode:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    .line 47
    iput p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->mMinBatteryLevel:I

    .line 48
    iput-wide p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->mPolicyExpiresAt:J

    .line 49
    iput-wide p5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->mLastRefresh:J

    return-void

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "lastRefresh must be a positive number"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "policyExpiresAt must be a positive number"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minBatteryLevel must be within 0 to 100"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "scanningMode can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static readFromBundle(Landroid/os/Bundle;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;
    .locals 10

    if-eqz p0, :cond_0

    .line 113
    :try_start_0
    new-instance v7, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;

    .line 114
    invoke-static {}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;->values()[Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    move-result-object v0

    const-string v1, "FFSWhiteListPolicy.ScanMode"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    aget-object v1, v0, v1

    const-string v0, "FFSWhiteListPolicy.MinBatteryLevel"

    const/4 v2, -0x1

    .line 115
    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v0, "FFSWhiteListPolicy.ExpiresAt"

    const-wide/16 v3, -0x1

    .line 116
    invoke-virtual {p0, v0, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v0, "FFSWhiteListPolicy.LastRefresh"

    .line 117
    invoke-virtual {p0, v0, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    move-object v0, v7

    move-wide v3, v5

    move-wide v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;IJJ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 120
    :catch_0
    sget-object p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->TAG:Ljava/lang/String;

    const-string v0, "No valid WhiteListPolicy found in bundle"

    invoke-static {p0, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 109
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bundle can not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readFromSharedPreferences(Landroid/content/SharedPreferences;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;
    .locals 10

    if-eqz p0, :cond_0

    .line 146
    :try_start_0
    new-instance v7, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;

    .line 147
    invoke-static {}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;->values()[Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    move-result-object v0

    const-string v1, "FFSWhiteListPolicy.ScanMode"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aget-object v1, v0, v1

    const-string v0, "FFSWhiteListPolicy.MinBatteryLevel"

    const/4 v2, -0x1

    .line 148
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v0, "FFSWhiteListPolicy.ExpiresAt"

    const-wide/16 v3, -0x1

    .line 149
    invoke-interface {p0, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v0, "FFSWhiteListPolicy.LastRefresh"

    .line 150
    invoke-interface {p0, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    move-object v0, v7

    move-wide v3, v5

    move-wide v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;IJJ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 153
    :catch_0
    sget-object p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->TAG:Ljava/lang/String;

    const-string v0, "No valid WhiteListPolicy found in SharedPreferences"

    invoke-static {p0, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 142
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "sharedPreferences can not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static writeToBundle(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;Landroid/os/Bundle;)V
    .locals 3

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->getScanningMode()Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "FFSWhiteListPolicy.ScanMode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->getMinBatteryLevel()I

    move-result v0

    const-string v1, "FFSWhiteListPolicy.MinBatteryLevel"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->getPolicyExpiresAt()J

    move-result-wide v0

    const-string v2, "FFSWhiteListPolicy.ExpiresAt"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 137
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->getLastRefresh()J

    move-result-wide v0

    const-string p0, "FFSWhiteListPolicy.LastRefresh"

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void

    .line 131
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bundle can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 128
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "whiteListPolicy can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static writeToSharedPreferences(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;Landroid/content/SharedPreferences;)V
    .locals 3

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 166
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 167
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->getScanningMode()Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "FFSWhiteListPolicy.ScanMode"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 168
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->getMinBatteryLevel()I

    move-result v0

    const-string v1, "FFSWhiteListPolicy.MinBatteryLevel"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 169
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->getPolicyExpiresAt()J

    move-result-wide v0

    const-string v2, "FFSWhiteListPolicy.ExpiresAt"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 170
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->getLastRefresh()J

    move-result-wide v0

    const-string p0, "FFSWhiteListPolicy.LastRefresh"

    invoke-interface {p1, p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 172
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 163
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "sharedPreferences can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 160
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "whiteListPolicy can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public allowedToScan()Z
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->mScanningMode:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;->PROHIBITED:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 94
    const-class v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 95
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;

    .line 96
    iget v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->mMinBatteryLevel:I

    iget v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->mMinBatteryLevel:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->mPolicyExpiresAt:J

    iget-wide v4, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->mPolicyExpiresAt:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->mLastRefresh:J

    iget-wide v4, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->mLastRefresh:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->mScanningMode:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    iget-object p1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->mScanningMode:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getLastRefresh()J
    .locals 2

    .line 74
    iget-wide v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->mLastRefresh:J

    return-wide v0
.end method

.method public getMinBatteryLevel()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->mMinBatteryLevel:I

    return v0
.end method

.method public getPolicyExpiresAt()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->mPolicyExpiresAt:J

    return-wide v0
.end method

.method public getScanningMode()Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->mScanningMode:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 104
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->mScanningMode:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->mMinBatteryLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->mPolicyExpiresAt:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->mLastRefresh:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 83
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->mScanningMode:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    const-string v2, "mScanningMode"

    .line 84
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->mMinBatteryLevel:I

    const-string v2, "mMinBatteryLevel"

    .line 85
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-wide v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->mPolicyExpiresAt:J

    const-string v3, "mPolicyExpiresAt"

    .line 86
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-wide v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->mLastRefresh:J

    const-string v3, "mLastRefresh"

    .line 87
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 88
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
