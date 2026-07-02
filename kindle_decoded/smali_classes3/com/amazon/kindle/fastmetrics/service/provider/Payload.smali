.class public Lcom/amazon/kindle/fastmetrics/service/provider/Payload;
.super Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;
.source "Payload.java"


# instance fields
.field private final nativePayload:Lcom/amazon/kindle/fastmetrics/jni/Payload;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/amazon/kindle/fastmetrics/service/provider/Payload;->nativePayload:Lcom/amazon/kindle/fastmetrics/jni/Payload;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/kindle/fastmetrics/jni/Payload;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/amazon/kindle/fastmetrics/service/provider/Payload;->nativePayload:Lcom/amazon/kindle/fastmetrics/jni/Payload;

    return-void
.end method


# virtual methods
.method protected getNativePayload()Lcom/amazon/kindle/fastmetrics/jni/Payload;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/kindle/fastmetrics/service/provider/Payload;->nativePayload:Lcom/amazon/kindle/fastmetrics/jni/Payload;

    return-object v0
.end method
