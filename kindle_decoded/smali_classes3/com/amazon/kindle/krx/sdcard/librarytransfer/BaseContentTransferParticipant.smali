.class public Lcom/amazon/kindle/krx/sdcard/librarytransfer/BaseContentTransferParticipant;
.super Ljava/lang/Object;
.source "BaseContentTransferParticipant.java"

# interfaces
.implements Lcom/amazon/kindle/krx/sdcard/librarytransfer/IContentTransferParticipant;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public estimateTransfer(Lcom/amazon/kindle/krx/content/IBook;Ljava/io/File;)Lcom/amazon/kindle/krx/sdcard/librarytransfer/ContentTransferData;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public executeTransfer(Lcom/amazon/kindle/krx/content/IBook;Ljava/io/File;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
