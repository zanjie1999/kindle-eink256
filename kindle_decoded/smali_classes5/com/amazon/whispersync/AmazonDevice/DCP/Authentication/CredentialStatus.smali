.class public final enum Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;
.super Ljava/lang/Enum;
.source "CredentialStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;

.field public static final enum CredentialStatusInvalid:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;

.field public static final enum CredentialStatusOK:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;

.field public static final enum CredentialStatusStale:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;

.field public static final enum CredentialStatusUnknownError:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;

.field public static final enum CredentialStatusUnknownWarning:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 6
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;

    const/4 v1, 0x0

    const-string v2, "CredentialStatusOK"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;->CredentialStatusOK:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;

    .line 7
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;

    const/4 v2, 0x1

    const-string v3, "CredentialStatusStale"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;->CredentialStatusStale:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;

    .line 8
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;

    const/4 v3, 0x2

    const-string v4, "CredentialStatusInvalid"

    invoke-direct {v0, v4, v3, v3}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;->CredentialStatusInvalid:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;

    .line 9
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;

    const/4 v4, 0x3

    const-string v5, "CredentialStatusUnknownWarning"

    invoke-direct {v0, v5, v4, v4}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;->CredentialStatusUnknownWarning:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;

    .line 10
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;

    const/4 v5, 0x4

    const-string v6, "CredentialStatusUnknownError"

    invoke-direct {v0, v6, v5, v5}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;->CredentialStatusUnknownError:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;

    .line 4
    sget-object v7, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;->CredentialStatusOK:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;->CredentialStatusStale:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;->CredentialStatusInvalid:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;->CredentialStatusUnknownWarning:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;
    .locals 1

    .line 4
    const-class v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;
    .locals 1

    .line 4
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;->mValue:I

    return v0
.end method
