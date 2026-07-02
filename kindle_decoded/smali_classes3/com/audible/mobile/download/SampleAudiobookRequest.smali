.class public final Lcom/audible/mobile/download/SampleAudiobookRequest;
.super Lcom/audible/mobile/download/Request;
.source "SampleAudiobookRequest.java"


# direct methods
.method public constructor <init>(Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Format;)V
    .locals 1

    .line 21
    sget-object v0, Lcom/audible/mobile/download/ContentType;->SampleAudiobook:Lcom/audible/mobile/download/ContentType;

    invoke-direct {p0, v0, p1, p2}, Lcom/audible/mobile/download/Request;-><init>(Lcom/audible/mobile/download/ContentType;Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/domain/Asin;)V

    const-string v0, "CustomerId is required"

    .line 22
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "Asin is required"

    .line 23
    invoke-static {p2, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "Format is required"

    .line 24
    invoke-static {p3, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/audible/mobile/download/Request;->setOptionalPayload(Ljava/lang/String;)V

    return-void
.end method
