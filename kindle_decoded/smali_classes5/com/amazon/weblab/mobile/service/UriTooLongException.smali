.class Lcom/amazon/weblab/mobile/service/UriTooLongException;
.super Ljava/lang/RuntimeException;
.source "UriTooLongException.java"


# instance fields
.field private uriLength:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 10
    iput p2, p0, Lcom/amazon/weblab/mobile/service/UriTooLongException;->uriLength:I

    return-void
.end method
