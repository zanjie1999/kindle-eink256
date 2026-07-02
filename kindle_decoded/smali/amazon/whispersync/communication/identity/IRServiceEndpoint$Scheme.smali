.class public final enum Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;
.super Ljava/lang/Enum;
.source "IRServiceEndpoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamazon/whispersync/communication/identity/IRServiceEndpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Scheme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;

.field public static final enum HTTP:Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;

.field public static final enum HTTPS:Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;

.field public static final enum WS:Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;

.field public static final enum WSS:Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 183
    new-instance v0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;

    const/4 v1, 0x0

    const-string v2, "WS"

    const-string/jumbo v3, "ws"

    invoke-direct {v0, v2, v1, v3}, Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;->WS:Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;

    .line 184
    new-instance v0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;

    const/4 v2, 0x1

    const-string v3, "WSS"

    const-string/jumbo v4, "wss"

    invoke-direct {v0, v3, v2, v4}, Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;->WSS:Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;

    .line 185
    new-instance v0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;

    const/4 v3, 0x2

    const-string v4, "HTTP"

    const-string v5, "http"

    invoke-direct {v0, v4, v3, v5}, Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;->HTTP:Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;

    .line 186
    new-instance v0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;

    const/4 v4, 0x3

    const-string v5, "HTTPS"

    const-string v6, "https"

    invoke-direct {v0, v5, v4, v6}, Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;->HTTPS:Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;

    const/4 v5, 0x4

    new-array v5, v5, [Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;

    .line 182
    sget-object v6, Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;->WS:Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;

    aput-object v6, v5, v1

    sget-object v1, Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;->WSS:Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;

    aput-object v1, v5, v2

    sget-object v1, Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;->HTTP:Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;->$VALUES:[Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;

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

    .line 190
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 191
    iput-object p3, p0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;
    .locals 1

    .line 182
    const-class v0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;

    return-object p0
.end method

.method public static values()[Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;
    .locals 1

    .line 182
    sget-object v0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;->$VALUES:[Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;

    invoke-virtual {v0}, [Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;->mName:Ljava/lang/String;

    return-object v0
.end method
