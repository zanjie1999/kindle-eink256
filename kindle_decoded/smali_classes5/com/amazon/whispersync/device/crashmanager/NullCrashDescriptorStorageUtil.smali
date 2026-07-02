.class public Lcom/amazon/whispersync/device/crashmanager/NullCrashDescriptorStorageUtil;
.super Ljava/lang/Object;
.source "NullCrashDescriptorStorageUtil.java"

# interfaces
.implements Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 0

    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getCount(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    const/4 p1, 0x0

    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public persistCrashDescriptors()V
    .locals 0

    return-void
.end method

.method public prune(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 33
    new-instance p1, Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/lang/Integer;-><init>(I)V

    return-object p1
.end method

.method public push(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public shouldDedupe(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 38
    new-instance p1, Ljava/lang/Boolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p1
.end method
