.class public abstract Lcom/amazon/ksdk/core/Version;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ksdk/core/Version$CppProxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNDKVersionMajor()I
    .locals 1

    .line 79
    invoke-static {}, Lcom/amazon/ksdk/core/Version$CppProxy;->getNDKVersionMajor()I

    move-result v0

    return v0
.end method

.method public static getNDKVersionMinor()I
    .locals 1

    .line 88
    invoke-static {}, Lcom/amazon/ksdk/core/Version$CppProxy;->getNDKVersionMinor()I

    move-result v0

    return v0
.end method

.method public static getNDKVersionPatch()I
    .locals 1

    .line 97
    invoke-static {}, Lcom/amazon/ksdk/core/Version$CppProxy;->getNDKVersionPatch()I

    move-result v0

    return v0
.end method

.method public static getNDKVersionString()Ljava/lang/String;
    .locals 1

    .line 70
    invoke-static {}, Lcom/amazon/ksdk/core/Version$CppProxy;->getNDKVersionString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNDKVersionTweak()I
    .locals 1

    .line 106
    invoke-static {}, Lcom/amazon/ksdk/core/Version$CppProxy;->getNDKVersionTweak()I

    move-result v0

    return v0
.end method

.method public static getVersionMajor()I
    .locals 1

    .line 34
    invoke-static {}, Lcom/amazon/ksdk/core/Version$CppProxy;->getVersionMajor()I

    move-result v0

    return v0
.end method

.method public static getVersionMinor()I
    .locals 1

    .line 43
    invoke-static {}, Lcom/amazon/ksdk/core/Version$CppProxy;->getVersionMinor()I

    move-result v0

    return v0
.end method

.method public static getVersionPatch()I
    .locals 1

    .line 52
    invoke-static {}, Lcom/amazon/ksdk/core/Version$CppProxy;->getVersionPatch()I

    move-result v0

    return v0
.end method

.method public static getVersionString()Ljava/lang/String;
    .locals 1

    .line 25
    invoke-static {}, Lcom/amazon/ksdk/core/Version$CppProxy;->getVersionString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersionTweak()I
    .locals 1

    .line 61
    invoke-static {}, Lcom/amazon/ksdk/core/Version$CppProxy;->getVersionTweak()I

    move-result v0

    return v0
.end method
