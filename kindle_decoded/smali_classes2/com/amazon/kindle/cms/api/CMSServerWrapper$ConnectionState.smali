.class final enum Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;
.super Ljava/lang/Enum;
.source "CMSServerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/cms/api/CMSServerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ConnectionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;

.field public static final enum CONNECTED:Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;

.field public static final enum CONNECTING:Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;

.field public static final enum DISCONNECTED:Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;

.field public static final enum ERROR:Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 493
    new-instance v0, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;

    const/4 v1, 0x0

    const-string v2, "DISCONNECTED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;->DISCONNECTED:Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;

    .line 494
    new-instance v0, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;

    const/4 v2, 0x1

    const-string v3, "CONNECTING"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;->CONNECTING:Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;

    .line 495
    new-instance v0, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;

    const/4 v3, 0x2

    const-string v4, "ERROR"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;->ERROR:Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;

    .line 496
    new-instance v0, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;

    const/4 v4, 0x3

    const-string v5, "CONNECTED"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;->CONNECTED:Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;

    .line 491
    sget-object v6, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;->DISCONNECTED:Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;->CONNECTING:Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;->ERROR:Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;->$VALUES:[Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 491
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;
    .locals 1

    .line 491
    const-class v0, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;
    .locals 1

    .line 491
    sget-object v0, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;->$VALUES:[Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;

    invoke-virtual {v0}, [Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;

    return-object v0
.end method
