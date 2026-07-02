.class public final enum Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;
.super Ljava/lang/Enum;
.source "MessageWriterError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;

.field public static final enum MessageWriterErrorEncryptionFailure:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;

.field public static final enum MessageWriterErrorNone:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;

.field public static final enum MessageWriterErrorUnknown:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;


# instance fields
.field private final mMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 6
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;

    const/4 v1, 0x0

    const-string v2, "MessageWriterErrorNone"

    const-string v3, "No Error"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;->MessageWriterErrorNone:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;

    .line 7
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;

    const/4 v2, 0x1

    const-string v3, "MessageWriterErrorEncryptionFailure"

    const-string v4, "Encryption Failure"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;->MessageWriterErrorEncryptionFailure:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;

    .line 8
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;

    const/4 v3, 0x2

    const-string v4, "MessageWriterErrorUnknown"

    const-string v5, "Unknown Error"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;->MessageWriterErrorUnknown:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;

    .line 4
    sget-object v5, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;->MessageWriterErrorNone:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;->MessageWriterErrorEncryptionFailure:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;

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

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p3, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;
    .locals 1

    .line 4
    const-class v0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;
    .locals 1

    .line 4
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;->mMessage:Ljava/lang/String;

    return-object v0
.end method
