.class public final enum Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;
.super Ljava/lang/Enum;
.source "PluginUpdateState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/update/PluginUpdateState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;

.field public static final enum FAILED:Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;

.field public static final enum FAILED_RETRYABLE:Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;

.field public static final enum READY:Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;

.field public static final enum WAIT:Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 24
    new-instance v0, Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;

    const/4 v1, 0x0

    const-string v2, "READY"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;->READY:Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;

    .line 30
    new-instance v0, Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;

    const/4 v2, 0x1

    const-string v3, "WAIT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;->WAIT:Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;

    .line 37
    new-instance v0, Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;

    const/4 v3, 0x2

    const-string v4, "FAILED_RETRYABLE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;->FAILED_RETRYABLE:Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;

    .line 44
    new-instance v0, Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;

    const/4 v4, 0x3

    const-string v5, "FAILED"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;->FAILED:Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;

    .line 19
    sget-object v6, Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;->READY:Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;->WAIT:Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;->FAILED_RETRYABLE:Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;->$VALUES:[Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;->$VALUES:[Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;

    return-object v0
.end method
