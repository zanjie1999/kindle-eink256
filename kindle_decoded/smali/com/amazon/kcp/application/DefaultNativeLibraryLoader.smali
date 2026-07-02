.class public Lcom/amazon/kcp/application/DefaultNativeLibraryLoader;
.super Ljava/lang/Object;
.source "DefaultNativeLibraryLoader.java"

# interfaces
.implements Lcom/amazon/kcp/application/INativeLibraryLoader;


# instance fields
.field private loadedLibs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/DefaultNativeLibraryLoader;->loadedLibs:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public declared-synchronized loadLibraryByName(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    monitor-enter p0

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/application/DefaultNativeLibraryLoader;->loadedLibs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/amazon/kcp/application/DefaultNativeLibraryLoader;->loadedLibs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
