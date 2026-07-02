.class public Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;
.super Ljava/lang/Object;
.source "BookOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/BookOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BookOpenParameters"
.end annotation


# instance fields
.field private closePrevious:Z

.field private openMode:Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;

.field private startPage:Lcom/amazon/kcp/reader/IReaderController$StartPage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Lcom/amazon/kcp/reader/IReaderController$StartPageDefault;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/IReaderController$StartPageDefault;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;->startPage:Lcom/amazon/kcp/reader/IReaderController$StartPage;

    .line 97
    sget-object v0, Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;->LOADING_ASYNC:Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;

    iput-object v0, p0, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;->openMode:Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;->closePrevious:Z

    return-void
.end method


# virtual methods
.method public getClosePrevious()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;->closePrevious:Z

    return v0
.end method

.method public getOpenReaderMode()Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;->openMode:Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;

    return-object v0
.end method

.method public getStartPage()Lcom/amazon/kcp/reader/IReaderController$StartPage;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;->startPage:Lcom/amazon/kcp/reader/IReaderController$StartPage;

    return-object v0
.end method

.method public setClosePrevious(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;->closePrevious:Z

    return-void
.end method

.method public setOpenReaderMode(Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;->openMode:Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;

    return-void
.end method
