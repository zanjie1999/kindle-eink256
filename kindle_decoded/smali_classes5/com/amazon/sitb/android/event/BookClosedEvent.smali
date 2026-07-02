.class public Lcom/amazon/sitb/android/event/BookClosedEvent;
.super Ljava/lang/Object;
.source "BookClosedEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private final book:Lcom/amazon/kindle/krx/content/IBook;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/amazon/sitb/android/event/BookClosedEvent;->book:Lcom/amazon/kindle/krx/content/IBook;

    return-void
.end method


# virtual methods
.method public getBook()Lcom/amazon/kindle/krx/content/IBook;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/sitb/android/event/BookClosedEvent;->book:Lcom/amazon/kindle/krx/content/IBook;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BookClosedEvent ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/sitb/android/event/BookClosedEvent;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-static {v1}, Lcom/amazon/sitb/android/utils/BookUtils;->toString(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
