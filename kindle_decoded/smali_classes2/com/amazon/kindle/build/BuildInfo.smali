.class public final Lcom/amazon/kindle/build/BuildInfo;
.super Ljava/lang/Object;
.source "BuildInfo.java"


# static fields
.field private static BETA:Z = false

.field private static CHINA:Z = false

.field private static COMICS:Z = false

.field private static FIRST_PARTY:Z = false

.field private static KFA:Z = false

.field private static PLAY_STORE:Z = false

.field private static RELEASE:Z = true

.field private static buildInfoString:Ljava/lang/String;

.field private static version:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static compareVersions(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const-string v0, "[0-9]+(\\.[0-9]+)*"

    .line 189
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "\\."

    .line 193
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 194
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 195
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 197
    array-length v3, p0

    if-ge v2, v3, :cond_0

    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 198
    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_1

    aget-object v4, p1, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    if-ge v3, v4, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    if-le v3, v4, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v1

    .line 190
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid version format"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAppType()Ljava/lang/String;
    .locals 1

    .line 138
    sget-boolean v0, Lcom/amazon/kindle/build/BuildInfo;->FIRST_PARTY:Z

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Lcom/amazon/kindle/krx/application/AppType;->KRT:Lcom/amazon/kindle/krx/application/AppType;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 140
    :cond_0
    sget-boolean v0, Lcom/amazon/kindle/build/BuildInfo;->CHINA:Z

    if-eqz v0, :cond_1

    .line 141
    sget-object v0, Lcom/amazon/kindle/krx/application/AppType;->KFC:Lcom/amazon/kindle/krx/application/AppType;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 142
    :cond_1
    sget-boolean v0, Lcom/amazon/kindle/build/BuildInfo;->COMICS:Z

    if-eqz v0, :cond_2

    .line 143
    sget-object v0, Lcom/amazon/kindle/krx/application/AppType;->CMX:Lcom/amazon/kindle/krx/application/AppType;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 146
    :cond_2
    sget-object v0, Lcom/amazon/kindle/krx/application/AppType;->KFA:Lcom/amazon/kindle/krx/application/AppType;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBuildInfoString()Ljava/lang/String;
    .locals 1

    .line 134
    sget-object v0, Lcom/amazon/kindle/build/BuildInfo;->buildInfoString:Ljava/lang/String;

    return-object v0
.end method

.method public static getFireOSVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.build.version.fireos"

    .line 152
    invoke-static {v0}, Lcom/amazon/kindle/util/SystemProperties;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion()J
    .locals 2

    .line 130
    sget-wide v0, Lcom/amazon/kindle/build/BuildInfo;->version:J

    return-wide v0
.end method

.method public static initialize(ZZZZZZZJ)V
    .locals 0

    .line 28
    sput-boolean p0, Lcom/amazon/kindle/build/BuildInfo;->RELEASE:Z

    .line 29
    sput-boolean p1, Lcom/amazon/kindle/build/BuildInfo;->FIRST_PARTY:Z

    .line 30
    sput-boolean p2, Lcom/amazon/kindle/build/BuildInfo;->CHINA:Z

    .line 31
    sput-boolean p3, Lcom/amazon/kindle/build/BuildInfo;->KFA:Z

    .line 32
    sput-boolean p4, Lcom/amazon/kindle/build/BuildInfo;->BETA:Z

    .line 33
    sput-boolean p5, Lcom/amazon/kindle/build/BuildInfo;->COMICS:Z

    .line 34
    sput-boolean p6, Lcom/amazon/kindle/build/BuildInfo;->PLAY_STORE:Z

    .line 35
    sput-wide p7, Lcom/amazon/kindle/build/BuildInfo;->version:J

    .line 36
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string p1, "BuildInfo.RELEASE:"

    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-boolean p1, Lcom/amazon/kindle/build/BuildInfo;->RELEASE:Z

    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string p1, ",BuildInfo.FIRST_PARTY:"

    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-boolean p1, Lcom/amazon/kindle/build/BuildInfo;->FIRST_PARTY:Z

    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string p1, ",BuildInfo.CHINA:"

    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-boolean p1, Lcom/amazon/kindle/build/BuildInfo;->CHINA:Z

    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string p1, ",BuildInfo.KFA:"

    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-boolean p1, Lcom/amazon/kindle/build/BuildInfo;->KFA:Z

    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string p1, ",BuildInfo.BETA:"

    .line 49
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-boolean p1, Lcom/amazon/kindle/build/BuildInfo;->BETA:Z

    .line 50
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string p1, ",BuildInfo.COMICS:"

    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-boolean p1, Lcom/amazon/kindle/build/BuildInfo;->COMICS:Z

    .line 53
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string p1, ",BuildInfo.PLAY_STORE:"

    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-boolean p1, Lcom/amazon/kindle/build/BuildInfo;->PLAY_STORE:Z

    .line 56
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 58
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/amazon/kindle/build/BuildInfo;->buildInfoString:Ljava/lang/String;

    return-void
.end method

.method public static isChinaBuild()Z
    .locals 1

    .line 70
    sget-boolean v0, Lcom/amazon/kindle/build/BuildInfo;->CHINA:Z

    return v0
.end method

.method public static isComicsBuild()Z
    .locals 1

    .line 121
    sget-boolean v0, Lcom/amazon/kindle/build/BuildInfo;->COMICS:Z

    return v0
.end method

.method public static isDebugBuild()Z
    .locals 1

    .line 62
    sget-boolean v0, Lcom/amazon/kindle/build/BuildInfo;->RELEASE:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isEInkBuild()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static isEarlyAccessBuild()Z
    .locals 1

    .line 84
    sget-boolean v0, Lcom/amazon/kindle/build/BuildInfo;->BETA:Z

    return v0
.end method

.method public static isFOSDevice()Z
    .locals 2

    .line 161
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isFirstPartyBuild()Z
    .locals 1

    .line 114
    sget-boolean v0, Lcom/amazon/kindle/build/BuildInfo;->FIRST_PARTY:Z

    return v0
.end method

.method public static isKFABuild()Z
    .locals 1

    .line 74
    sget-boolean v0, Lcom/amazon/kindle/build/BuildInfo;->KFA:Z

    return v0
.end method

.method public static isKFAEarlyAccessBuild()Z
    .locals 1

    .line 95
    sget-boolean v0, Lcom/amazon/kindle/build/BuildInfo;->BETA:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/amazon/kindle/build/BuildInfo;->KFA:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPlayStoreBuild()Z
    .locals 1

    .line 110
    sget-boolean v0, Lcom/amazon/kindle/build/BuildInfo;->KFA:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/amazon/kindle/build/BuildInfo;->PLAY_STORE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isReleaseBuild()Z
    .locals 1

    .line 66
    sget-boolean v0, Lcom/amazon/kindle/build/BuildInfo;->RELEASE:Z

    return v0
.end method

.method public static isThirdPartyBuild()Z
    .locals 1

    .line 118
    sget-boolean v0, Lcom/amazon/kindle/build/BuildInfo;->FIRST_PARTY:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isWindowsDevice()Z
    .locals 2

    .line 170
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "Windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Subsystem for Android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
