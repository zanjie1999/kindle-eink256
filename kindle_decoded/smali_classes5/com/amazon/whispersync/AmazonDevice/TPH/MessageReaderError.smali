.class public final enum Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;
.super Ljava/lang/Enum;
.source "MessageReaderError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

.field public static final enum MessageReaderErrorCorruptBuffer:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

.field public static final enum MessageReaderErrorDecryptionFailure:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

.field public static final enum MessageReaderErrorEmptyBuffer:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

.field public static final enum MessageReaderErrorNone:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

.field public static final enum MessageReaderErrorUnknown:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

.field public static final enum MessageReaderErrorWrongProtocolVersion:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;


# instance fields
.field private mMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 6
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

    const/4 v1, 0x0

    const-string v2, "MessageReaderErrorNone"

    const-string v3, "No Error"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;->MessageReaderErrorNone:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

    .line 7
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

    const/4 v2, 0x1

    const-string v3, "MessageReaderErrorEmptyBuffer"

    const-string v4, "Buffer was empty"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;->MessageReaderErrorEmptyBuffer:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

    .line 8
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

    const/4 v3, 0x2

    const-string v4, "MessageReaderErrorCorruptBuffer"

    const-string v5, "Buffer was corrupt"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;->MessageReaderErrorCorruptBuffer:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

    .line 9
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

    const/4 v4, 0x3

    const-string v5, "MessageReaderErrorDecryptionFailure"

    const-string v6, "Decryption Failed"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;->MessageReaderErrorDecryptionFailure:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

    .line 10
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

    const/4 v5, 0x4

    const-string v6, "MessageReaderErrorWrongProtocolVersion"

    const-string v7, "Incorrect Protocol Version"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;->MessageReaderErrorWrongProtocolVersion:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

    .line 11
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

    const/4 v6, 0x5

    const-string v7, "MessageReaderErrorUnknown"

    const-string v8, "Unknown Error"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;->MessageReaderErrorUnknown:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

    .line 4
    sget-object v8, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;->MessageReaderErrorNone:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;->MessageReaderErrorEmptyBuffer:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;->MessageReaderErrorCorruptBuffer:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;->MessageReaderErrorDecryptionFailure:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;->MessageReaderErrorWrongProtocolVersion:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;
    .locals 1

    .line 4
    const-class v0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;
    .locals 1

    .line 4
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;->mMessage:Ljava/lang/String;

    return-object v0
.end method
