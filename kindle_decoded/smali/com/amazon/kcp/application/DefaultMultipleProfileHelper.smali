.class public Lcom/amazon/kcp/application/DefaultMultipleProfileHelper;
.super Ljava/lang/Object;
.source "DefaultMultipleProfileHelper.java"

# interfaces
.implements Lcom/amazon/kcp/application/IMultipleProfileHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addOwnership(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getOwnershipCount(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getSecuredStorageDirectory()Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public isSharedDownloadsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public revokeOwnership(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setSharedDownloadsEnabled(Z)V
    .locals 0

    return-void
.end method

.method public shareFileOrDirectory(Ljava/lang/String;ZZZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
