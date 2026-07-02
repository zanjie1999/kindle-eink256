.class public final Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;
.super Ljava/lang/Object;
.source "KRXGetOfferResponse.java"


# instance fields
.field private final error:Lcom/amazon/kindle/krx/glide/GetOfferError;

.field private final glideLink:Lcom/amazon/kindle/krx/glide/KRXGlideLink;

.field private final localizedMessage:Ljava/lang/String;

.field private final resource:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/amazon/kindle/krx/glide/GetOfferError;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/KRXGlideLink;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;",
            ">;",
            "Lcom/amazon/kindle/krx/glide/GetOfferError;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/glide/KRXGlideLink;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;->resource:Ljava/util/Map;

    .line 34
    iput-object p2, p0, Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;->error:Lcom/amazon/kindle/krx/glide/GetOfferError;

    .line 35
    iput-object p3, p0, Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;->localizedMessage:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;->glideLink:Lcom/amazon/kindle/krx/glide/KRXGlideLink;

    return-void
.end method


# virtual methods
.method public getError()Lcom/amazon/kindle/krx/glide/GetOfferError;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;->error:Lcom/amazon/kindle/krx/glide/GetOfferError;

    return-object v0
.end method

.method public getLink()Lcom/amazon/kindle/krx/glide/KRXGlideLink;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;->glideLink:Lcom/amazon/kindle/krx/glide/KRXGlideLink;

    return-object v0
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;->localizedMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getResource()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;->resource:Ljava/util/Map;

    return-object v0
.end method
