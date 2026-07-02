.class Lcom/amazon/kcp/util/OsArchitecture$BuildInfoAccessor;
.super Ljava/lang/Object;
.source "OsArchitecture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/util/OsArchitecture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BuildInfoAccessor"
.end annotation


# direct methods
.method static getCpuAbi()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    return-object v0
.end method

.method static getCpuAbi2()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    return-object v0
.end method
