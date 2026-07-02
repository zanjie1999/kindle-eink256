.class public final enum Lcom/amazon/whispersync/coral/annotation/AwsErrorType;
.super Ljava/lang/Enum;
.source "AwsErrorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/coral/annotation/AwsErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/coral/annotation/AwsErrorType;

.field public static final enum Receiver:Lcom/amazon/whispersync/coral/annotation/AwsErrorType;

.field public static final enum Sender:Lcom/amazon/whispersync/coral/annotation/AwsErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 9
    new-instance v0, Lcom/amazon/whispersync/coral/annotation/AwsErrorType;

    const/4 v1, 0x0

    const-string v2, "Sender"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whispersync/coral/annotation/AwsErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/coral/annotation/AwsErrorType;->Sender:Lcom/amazon/whispersync/coral/annotation/AwsErrorType;

    .line 10
    new-instance v0, Lcom/amazon/whispersync/coral/annotation/AwsErrorType;

    const/4 v2, 0x1

    const-string v3, "Receiver"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whispersync/coral/annotation/AwsErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/coral/annotation/AwsErrorType;->Receiver:Lcom/amazon/whispersync/coral/annotation/AwsErrorType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/whispersync/coral/annotation/AwsErrorType;

    .line 8
    sget-object v4, Lcom/amazon/whispersync/coral/annotation/AwsErrorType;->Sender:Lcom/amazon/whispersync/coral/annotation/AwsErrorType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/whispersync/coral/annotation/AwsErrorType;->$VALUES:[Lcom/amazon/whispersync/coral/annotation/AwsErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/coral/annotation/AwsErrorType;
    .locals 1

    .line 8
    const-class v0, Lcom/amazon/whispersync/coral/annotation/AwsErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/coral/annotation/AwsErrorType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/coral/annotation/AwsErrorType;
    .locals 1

    .line 8
    sget-object v0, Lcom/amazon/whispersync/coral/annotation/AwsErrorType;->$VALUES:[Lcom/amazon/whispersync/coral/annotation/AwsErrorType;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/coral/annotation/AwsErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/coral/annotation/AwsErrorType;

    return-object v0
.end method
