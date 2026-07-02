.class public final enum Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;
.super Ljava/lang/Enum;
.source "DetUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/device/utils/DetUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DetResponse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;

.field public static final enum CLIENT_ERROR:Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;

.field public static final enum SERVER_ERROR:Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;

.field public static final enum SUCCESS:Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 62
    new-instance v0, Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;->SUCCESS:Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;

    .line 63
    new-instance v0, Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;

    const/4 v2, 0x1

    const-string v3, "CLIENT_ERROR"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;->CLIENT_ERROR:Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;

    .line 64
    new-instance v0, Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;

    const/4 v3, 0x2

    const-string v4, "SERVER_ERROR"

    invoke-direct {v0, v4, v3}, Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;->SERVER_ERROR:Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;

    .line 61
    sget-object v5, Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;->SUCCESS:Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;->CLIENT_ERROR:Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;->$VALUES:[Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;
    .locals 1

    .line 61
    const-class v0, Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;
    .locals 1

    .line 61
    sget-object v0, Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;->$VALUES:[Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;

    return-object v0
.end method
