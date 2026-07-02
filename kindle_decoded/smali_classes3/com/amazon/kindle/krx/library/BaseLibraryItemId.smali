.class public Lcom/amazon/kindle/krx/library/BaseLibraryItemId;
.super Ljava/lang/Object;
.source "BaseLibraryItemId.java"

# interfaces
.implements Lcom/amazon/kindle/krx/library/ILibraryItemId;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCmsItemId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSerializedBookID()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isApp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReaderContent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSample()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
