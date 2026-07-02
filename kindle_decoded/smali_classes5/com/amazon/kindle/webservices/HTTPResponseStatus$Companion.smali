.class public final Lcom/amazon/kindle/webservices/HTTPResponseStatus$Companion;
.super Ljava/lang/Object;
.source "HttpResponseProperties.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/webservices/HTTPResponseStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/amazon/kindle/webservices/HTTPResponseStatus$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromHttpCode(I)Lcom/amazon/kindle/webservices/HTTPResponseStatus;
    .locals 3

    const/16 v0, 0x64

    if-le v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xc7

    if-lt v0, p1, :cond_1

    .line 30
    new-instance v0, Lcom/amazon/kindle/webservices/HTTPResponseStatus$Informational;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/webservices/HTTPResponseStatus$Informational;-><init>(I)V

    goto :goto_4

    :cond_1
    :goto_0
    const/16 v0, 0x12b

    const/16 v1, 0xc8

    if-le v1, p1, :cond_2

    goto :goto_1

    :cond_2
    if-lt v0, p1, :cond_3

    .line 31
    new-instance v0, Lcom/amazon/kindle/webservices/HTTPResponseStatus$Successful;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/webservices/HTTPResponseStatus$Successful;-><init>(I)V

    goto :goto_4

    :cond_3
    :goto_1
    const/16 v0, 0x18f

    const/16 v1, 0x12c

    if-le v1, p1, :cond_4

    goto :goto_2

    :cond_4
    if-lt v0, p1, :cond_5

    .line 32
    new-instance v0, Lcom/amazon/kindle/webservices/HTTPResponseStatus$Redirects;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/webservices/HTTPResponseStatus$Redirects;-><init>(I)V

    goto :goto_4

    :cond_5
    :goto_2
    const/16 v0, 0x1f3

    const/16 v1, 0x190

    if-le v1, p1, :cond_6

    goto :goto_3

    :cond_6
    if-lt v0, p1, :cond_7

    .line 33
    new-instance v0, Lcom/amazon/kindle/webservices/HTTPResponseStatus$ClientError;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/webservices/HTTPResponseStatus$ClientError;-><init>(I)V

    goto :goto_4

    :cond_7
    :goto_3
    const/16 v0, 0x257

    const/16 v1, 0x1f4

    if-gt v1, p1, :cond_8

    if-lt v0, p1, :cond_8

    .line 34
    new-instance v0, Lcom/amazon/kindle/webservices/HTTPResponseStatus$ServerError;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/webservices/HTTPResponseStatus$ServerError;-><init>(I)V

    :goto_4
    return-object v0

    .line 36
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to map http code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to HTTPResponseStatus."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
