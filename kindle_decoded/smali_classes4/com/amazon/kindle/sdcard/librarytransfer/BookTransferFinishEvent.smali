.class public final Lcom/amazon/kindle/sdcard/librarytransfer/BookTransferFinishEvent;
.super Ljava/lang/Object;
.source "BookTransferFinishEvent.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private final bookId:Lcom/amazon/kindle/model/content/IBookID;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 1

    const-string v0, "bookId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/BookTransferFinishEvent;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    return-void
.end method


# virtual methods
.method public final getBookId()Lcom/amazon/kindle/model/content/IBookID;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amazon/kindle/sdcard/librarytransfer/BookTransferFinishEvent;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
