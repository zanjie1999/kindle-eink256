.class public Lcom/audible/mobile/download/AudiobookRequest;
.super Lcom/audible/mobile/download/Request;
.source "AudiobookRequest.java"


# direct methods
.method public constructor <init>(Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Format;)V
    .locals 1

    .line 20
    sget-object v0, Lcom/audible/mobile/download/ContentType;->Audiobook:Lcom/audible/mobile/download/ContentType;

    invoke-direct {p0, v0, p1, p2}, Lcom/audible/mobile/download/Request;-><init>(Lcom/audible/mobile/download/ContentType;Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/domain/Asin;)V

    .line 21
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/audible/mobile/download/Request;->setOptionalPayload(Ljava/lang/String;)V

    return-void
.end method
