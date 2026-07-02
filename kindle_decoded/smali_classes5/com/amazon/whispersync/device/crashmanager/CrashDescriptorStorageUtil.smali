.class public interface abstract Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;
.super Ljava/lang/Object;
.source "CrashDescriptorStorageUtil.java"


# virtual methods
.method public abstract clearAll()V
.end method

.method public abstract contains(Ljava/lang/String;)Z
.end method

.method public abstract getCount(Ljava/lang/String;)Ljava/lang/Integer;
.end method

.method public abstract getDescriptors()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract persistCrashDescriptors()V
.end method

.method public abstract prune(Ljava/lang/String;)Ljava/lang/Integer;
.end method

.method public abstract push(Ljava/lang/String;)V
.end method

.method public abstract shouldDedupe(Ljava/lang/String;)Ljava/lang/Boolean;
.end method
