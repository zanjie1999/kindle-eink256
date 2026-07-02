.class final Lcom/amazon/rma/rs/encoding/MessageEncoderV4$1;
.super Ljava/lang/Object;
.source "MessageEncoderV4.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic val$payload:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4$1;->val$payload:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 379
    invoke-static {}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->access$000()Lcom/amazon/rma/rs/encoding/IReadingStreamsMessagePublisher;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4$1;->val$payload:[B

    invoke-interface {v0, v1}, Lcom/amazon/rma/rs/encoding/IReadingStreamsMessagePublisher;->publishReadingStreamsMessage([B)V

    return-void
.end method
