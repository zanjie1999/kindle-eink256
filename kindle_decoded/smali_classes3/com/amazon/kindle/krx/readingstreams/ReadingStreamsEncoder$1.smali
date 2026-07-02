.class Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$1;
.super Ljava/lang/Object;
.source "ReadingStreamsEncoder.java"

# interfaces
.implements Lcom/amazon/dcp/messaging/DeliveryOption;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$1;->this$0:Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "REQUESTER"

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    const-string v0, "ReadingStreamsRequester"

    return-object v0
.end method
