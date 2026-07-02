.class final enum Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;
.super Ljava/lang/Enum;
.source "WhispersyncClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SyncAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;

.field public static final enum DELETE:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;

.field public static final enum UPDATE:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 45
    new-instance v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;

    const/4 v1, 0x0

    const-string v2, "UPDATE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;->UPDATE:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;

    .line 46
    new-instance v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;

    const/4 v2, 0x1

    const-string v3, "DELETE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;->DELETE:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;

    .line 44
    sget-object v4, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;->UPDATE:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;->$VALUES:[Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;
    .locals 1

    .line 44
    const-class v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;
    .locals 1

    .line 44
    sget-object v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;->$VALUES:[Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;

    invoke-virtual {v0}, [Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;

    return-object v0
.end method
