.class public final enum Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;
.super Ljava/lang/Enum;
.source "WhispersyncClientException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/failures/WhispersyncClientException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SyncDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;

.field public static final enum DOWNLOAD:Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;

.field public static final enum UPLOAD:Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 16
    new-instance v0, Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;

    const/4 v1, 0x0

    const-string v2, "UPLOAD"

    invoke-direct {v0, v2, v1}, Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;->UPLOAD:Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;

    new-instance v0, Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;

    const/4 v2, 0x1

    const-string v3, "DOWNLOAD"

    invoke-direct {v0, v3, v2}, Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;->DOWNLOAD:Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;

    .line 14
    sget-object v4, Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;->UPLOAD:Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;->$VALUES:[Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;
    .locals 1

    .line 14
    const-class v0, Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;

    return-object p0
.end method

.method public static values()[Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;
    .locals 1

    .line 14
    sget-object v0, Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;->$VALUES:[Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;

    invoke-virtual {v0}, [Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;

    return-object v0
.end method
