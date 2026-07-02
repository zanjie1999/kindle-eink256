.class public Lorg/apache/commons/lang/math/RandomUtils;
.super Ljava/lang/Object;
.source "RandomUtils.java"


# static fields
.field public static final JVM_RANDOM:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lorg/apache/commons/lang/math/JVMRandom;

    invoke-direct {v0}, Lorg/apache/commons/lang/math/JVMRandom;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/math/RandomUtils;->JVM_RANDOM:Ljava/util/Random;

    return-void
.end method

.method public static nextInt(I)I
    .locals 1

    .line 74
    sget-object v0, Lorg/apache/commons/lang/math/RandomUtils;->JVM_RANDOM:Ljava/util/Random;

    invoke-static {v0, p0}, Lorg/apache/commons/lang/math/RandomUtils;->nextInt(Ljava/util/Random;I)I

    move-result p0

    return p0
.end method

.method public static nextInt(Ljava/util/Random;I)I
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    return p0
.end method
