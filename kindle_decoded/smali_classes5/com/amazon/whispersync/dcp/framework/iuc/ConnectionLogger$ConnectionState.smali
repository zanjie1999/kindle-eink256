.class final enum Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;
.super Ljava/lang/Enum;
.source "ConnectionLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ConnectionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

.field public static final enum Complete:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

.field public static final enum DownloadComplete:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

.field public static final enum Downloading:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

.field public static final enum Handshaking:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

.field public static final enum SettingUp:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

.field public static final enum Uploading:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

.field public static final enum WaitingForResponse:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 47
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    const/4 v1, 0x0

    const-string v2, "SettingUp"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;->SettingUp:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    .line 48
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    const/4 v2, 0x1

    const-string v3, "Handshaking"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;->Handshaking:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    .line 49
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    const/4 v3, 0x2

    const-string v4, "Uploading"

    invoke-direct {v0, v4, v3}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;->Uploading:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    .line 50
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    const/4 v4, 0x3

    const-string v5, "WaitingForResponse"

    invoke-direct {v0, v5, v4}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;->WaitingForResponse:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    .line 51
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    const/4 v5, 0x4

    const-string v6, "Downloading"

    invoke-direct {v0, v6, v5}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;->Downloading:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    .line 52
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    const/4 v6, 0x5

    const-string v7, "DownloadComplete"

    invoke-direct {v0, v7, v6}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;->DownloadComplete:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    .line 53
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    const/4 v7, 0x6

    const-string v8, "Complete"

    invoke-direct {v0, v8, v7}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;->Complete:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    .line 45
    sget-object v9, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;->SettingUp:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    aput-object v9, v8, v1

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;->Handshaking:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    aput-object v1, v8, v2

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;->Uploading:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    aput-object v1, v8, v3

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;->WaitingForResponse:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    aput-object v1, v8, v4

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;->Downloading:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    aput-object v1, v8, v5

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;->DownloadComplete:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;->$VALUES:[Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;
    .locals 1

    .line 45
    const-class v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;
    .locals 1

    .line 45
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;->$VALUES:[Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    return-object v0
.end method
