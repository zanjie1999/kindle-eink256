.class public final enum Lcom/amazon/ksdk/profiles/AvatarStatus;
.super Ljava/lang/Enum;
.source "AvatarStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ksdk/profiles/AvatarStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ksdk/profiles/AvatarStatus;

.field public static final enum AVAILABLE:Lcom/amazon/ksdk/profiles/AvatarStatus;

.field public static final enum DOWNLOADING:Lcom/amazon/ksdk/profiles/AvatarStatus;

.field public static final enum DOWNLOAD_FAILED_NOT_RETRYABLE:Lcom/amazon/ksdk/profiles/AvatarStatus;

.field public static final enum DOWNLOAD_FAILED_RETRYABLE:Lcom/amazon/ksdk/profiles/AvatarStatus;

.field public static final enum PENDING:Lcom/amazon/ksdk/profiles/AvatarStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 8
    new-instance v0, Lcom/amazon/ksdk/profiles/AvatarStatus;

    const/4 v1, 0x0

    const-string v2, "AVAILABLE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/ksdk/profiles/AvatarStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/profiles/AvatarStatus;->AVAILABLE:Lcom/amazon/ksdk/profiles/AvatarStatus;

    .line 10
    new-instance v0, Lcom/amazon/ksdk/profiles/AvatarStatus;

    const/4 v2, 0x1

    const-string v3, "PENDING"

    invoke-direct {v0, v3, v2}, Lcom/amazon/ksdk/profiles/AvatarStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/profiles/AvatarStatus;->PENDING:Lcom/amazon/ksdk/profiles/AvatarStatus;

    .line 12
    new-instance v0, Lcom/amazon/ksdk/profiles/AvatarStatus;

    const/4 v3, 0x2

    const-string v4, "DOWNLOADING"

    invoke-direct {v0, v4, v3}, Lcom/amazon/ksdk/profiles/AvatarStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/profiles/AvatarStatus;->DOWNLOADING:Lcom/amazon/ksdk/profiles/AvatarStatus;

    .line 14
    new-instance v0, Lcom/amazon/ksdk/profiles/AvatarStatus;

    const/4 v4, 0x3

    const-string v5, "DOWNLOAD_FAILED_RETRYABLE"

    invoke-direct {v0, v5, v4}, Lcom/amazon/ksdk/profiles/AvatarStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/profiles/AvatarStatus;->DOWNLOAD_FAILED_RETRYABLE:Lcom/amazon/ksdk/profiles/AvatarStatus;

    .line 16
    new-instance v0, Lcom/amazon/ksdk/profiles/AvatarStatus;

    const/4 v5, 0x4

    const-string v6, "DOWNLOAD_FAILED_NOT_RETRYABLE"

    invoke-direct {v0, v6, v5}, Lcom/amazon/ksdk/profiles/AvatarStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/profiles/AvatarStatus;->DOWNLOAD_FAILED_NOT_RETRYABLE:Lcom/amazon/ksdk/profiles/AvatarStatus;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/ksdk/profiles/AvatarStatus;

    .line 6
    sget-object v7, Lcom/amazon/ksdk/profiles/AvatarStatus;->AVAILABLE:Lcom/amazon/ksdk/profiles/AvatarStatus;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/ksdk/profiles/AvatarStatus;->PENDING:Lcom/amazon/ksdk/profiles/AvatarStatus;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/ksdk/profiles/AvatarStatus;->DOWNLOADING:Lcom/amazon/ksdk/profiles/AvatarStatus;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/ksdk/profiles/AvatarStatus;->DOWNLOAD_FAILED_RETRYABLE:Lcom/amazon/ksdk/profiles/AvatarStatus;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/ksdk/profiles/AvatarStatus;->$VALUES:[Lcom/amazon/ksdk/profiles/AvatarStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ksdk/profiles/AvatarStatus;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/ksdk/profiles/AvatarStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ksdk/profiles/AvatarStatus;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ksdk/profiles/AvatarStatus;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/ksdk/profiles/AvatarStatus;->$VALUES:[Lcom/amazon/ksdk/profiles/AvatarStatus;

    invoke-virtual {v0}, [Lcom/amazon/ksdk/profiles/AvatarStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ksdk/profiles/AvatarStatus;

    return-object v0
.end method
