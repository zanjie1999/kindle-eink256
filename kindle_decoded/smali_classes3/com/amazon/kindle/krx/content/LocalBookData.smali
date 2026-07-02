.class public Lcom/amazon/kindle/krx/content/LocalBookData;
.super Ljava/lang/Object;
.source "LocalBookData.java"

# interfaces
.implements Lcom/amazon/kindle/krx/content/ILocalBookData;


# instance fields
.field private filePath:Ljava/lang/String;

.field private fpr:Lcom/amazon/kindle/krx/reader/IPosition;

.field private isRead:Z

.field private lpr:Lcom/amazon/kindle/krx/reader/IPosition;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;ZLjava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/LocalBookData;->lpr:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 17
    iput-boolean p3, p0, Lcom/amazon/kindle/krx/content/LocalBookData;->isRead:Z

    .line 18
    iput-object p2, p0, Lcom/amazon/kindle/krx/content/LocalBookData;->fpr:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 19
    iput-object p4, p0, Lcom/amazon/kindle/krx/content/LocalBookData;->filePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/LocalBookData;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFurtherestPositionRead()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/content/LocalBookData;->getFurthestPositionRead()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    return-object v0
.end method

.method public getFurthestPositionRead()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/LocalBookData;->fpr:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getLastPositionRead()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/LocalBookData;->lpr:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public isBookRead()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/amazon/kindle/krx/content/LocalBookData;->isRead:Z

    return v0
.end method

.method public setBookRead()V
    .locals 1

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/amazon/kindle/krx/content/LocalBookData;->isRead:Z

    return-void
.end method

.method public setFutherestPositionRead(Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/LocalBookData;->fpr:Lcom/amazon/kindle/krx/reader/IPosition;

    return-void
.end method

.method public setLastPositionRead(Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/LocalBookData;->lpr:Lcom/amazon/kindle/krx/reader/IPosition;

    return-void
.end method
