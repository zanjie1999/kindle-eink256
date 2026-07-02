.class public Lcom/amazon/whispersync/communication/InputStreamMessageImpl;
.super Ljava/lang/Object;
.source "InputStreamMessageImpl.java"

# interfaces
.implements Lamazon/whispersync/communication/Message;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/communication/InputStreamMessageImpl$PayloadInputStream;
    }
.end annotation


# static fields
.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field private final mInputStream:Ljava/io/InputStream;

.field private mIsGetPayloadInvoked:Z

.field private final mPrependedData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "TComm.InputStreamMessageImpl"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;->mPrependedData:Ljava/util/List;

    .line 188
    iput-object p1, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;->mInputStream:Ljava/io/InputStream;

    const/4 p1, 0x0

    .line 189
    iput-boolean p1, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;->mIsGetPayloadInvoked:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;->mPrependedData:Ljava/util/List;

    .line 195
    iput-object p2, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;->mInputStream:Ljava/io/InputStream;

    const/4 p1, 0x0

    .line 196
    iput-boolean p1, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;->mIsGetPayloadInvoked:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/communication/InputStreamMessageImpl;)Ljava/util/List;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;->mPrependedData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/whispersync/communication/InputStreamMessageImpl;)Ljava/io/InputStream;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;->mInputStream:Ljava/io/InputStream;

    return-object p0
.end method

.method static synthetic access$200()Lcom/amazon/whispersync/dp/logger/DPLogger;
    .locals 1

    .line 30
    sget-object v0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-object v0
.end method


# virtual methods
.method public appendPayload(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 205
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "We don\'t support append a payload to InputStream based message."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public extractPayload()Lamazon/whispersync/communication/Message;
    .locals 3

    .line 220
    new-instance v0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;->mPrependedData:Ljava/util/List;

    iget-object v2, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;->mInputStream:Ljava/io/InputStream;

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;-><init>(Ljava/util/List;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public getPayload()Ljava/io/InputStream;
    .locals 2

    .line 225
    iget-boolean v0, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;->mIsGetPayloadInvoked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 229
    iput-boolean v0, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;->mIsGetPayloadInvoked:Z

    .line 230
    new-instance v0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl$PayloadInputStream;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/communication/InputStreamMessageImpl$PayloadInputStream;-><init>(Lcom/amazon/whispersync/communication/InputStreamMessageImpl;)V

    return-object v0

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getPayload can only be called once for InputStream based message."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPayloadSize()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public prependPayload(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 211
    iget-boolean v0, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;->mIsGetPayloadInvoked:Z

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;->mPrependedData:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    .line 212
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Can\'t prepend more payload after getPayload is called."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputStreamMessageImpl [PrependedData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;->mPrependedData:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] [InputStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
