.class public Lcom/amazon/kcp/reader/LastReadBookEvent;
.super Ljava/lang/Object;
.source "LastReadBookEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private final book:Lcom/amazon/kindle/content/ContentMetadata;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazon/kcp/reader/LastReadBookEvent;->book:Lcom/amazon/kindle/content/ContentMetadata;

    return-void
.end method


# virtual methods
.method public getBook()Lcom/amazon/kindle/content/ContentMetadata;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/kcp/reader/LastReadBookEvent;->book:Lcom/amazon/kindle/content/ContentMetadata;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
