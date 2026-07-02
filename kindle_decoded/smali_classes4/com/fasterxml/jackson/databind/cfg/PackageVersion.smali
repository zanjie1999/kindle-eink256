.class public final Lcom/fasterxml/jackson/databind/cfg/PackageVersion;
.super Ljava/lang/Object;
.source "PackageVersion.java"

# interfaces
.implements Lcom/fasterxml/jackson/core/Versioned;


# static fields
.field public static final VERSION:Lcom/fasterxml/jackson/core/Version;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "2.7.2"

    const-string v1, "com.fasterxml.jackson.core"

    const-string v2, "jackson-databind"

    .line 13
    invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/core/util/VersionUtil;->parseVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/core/Version;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/cfg/PackageVersion;->VERSION:Lcom/fasterxml/jackson/core/Version;

    return-void
.end method
